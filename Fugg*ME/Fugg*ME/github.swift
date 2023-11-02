//
//  apiConfiguration.swift
//  Apitesting
//
//  Created by sai ganesh on 26/10/23.
//

import SwiftUI
struct Github: View {
    @State private var user: GithubUser?
    
    var body: some View {
        ZStack {
            VStack {
                Image(AsyncImage(url: URL(string: user?.avatarUrl ?? "")){
                    image in image
                }
                if let user = user {
                    Text(user.login)
                } else {
                    Text("Loading...")
                }
            }
        }.task {
            do {
                user = try await getUser()
            } catch {
                if let ghError = error as? GHError {
                    switch ghError {
                        case .invalidURL:
                            print("Invalid URL")
                        case .invalidResponse:
                            print("Invalid Response")
                        case .invalidData:
                            print("Invalid Data")
                        default:
                            print("An unknown error occurred")
                    }
                } else {
                    print("An unexpected error occurred: \(error)")
                }
            }
        }
    }
}


struct GithubUser : Codable{
    let login : String
    let bio : String
    let avatarUrl : String
}

func getUser() async throws -> GithubUser{
    
    let fetchURL = "https://api.github.com/users/gani-23"
    
    guard let ConvertedUrl = URL(string: fetchURL) else{
        throw GHError.invalidURL
    }
    
    let (data,response) = try await URLSession.shared.data(from: ConvertedUrl)
    
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {throw GHError.invalidResponse
    }
    do{
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(GithubUser.self, from: data)
    } catch{
        throw GHError.invalidData
    }
}

enum GHError : Error{
    case invalidResponse
    case invalidUsername
    case invalidURL
    case invalidData
    
}

#Preview {
    Github()
}
