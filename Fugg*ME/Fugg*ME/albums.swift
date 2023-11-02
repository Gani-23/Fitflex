//
//  albums.swift
//  Fugg*ME
//
//  Created by sai ganesh on 17/10/23.
//

import SwiftUI

struct albums: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Image(systemName: "apple.logo")
                        .foregroundStyle(.white)
                        .font(.system(size: 18))
                    
                    Text("Music")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                }.padding();Spacer()
            }
        }
    }
}

#Preview {
    albums()
}
