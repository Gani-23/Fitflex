//
//  feed.swift
//  Fugg*ME
//
//  Created by sai ganesh on 13/10/23.
//

import SwiftUI

struct feed: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            ZStack{
                ScrollView{
                    VStack{
                        VStack{
                            ZStack{
                                VStack(alignment: .leading){
                                    Image("Pos")
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(5)
                                }
                                VStack{
                                    HStack{
                                        Image("User")
                                            .resizable()
                                            .scaledToFit()
                                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                            .frame(width: 20,height: 40)
                                            .padding(.leading)
                                        Spacer()
                                    }.padding(.top,18)
                                    Spacer()
                                }
                            }.frame(width: 80)
                    }
                        VStack{
                            Text("Add Caption")
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                            
                            Text("View Comment")
                                .foregroundStyle(.gray)
                            
                            HStack{
                                Text("Bengaluru, Karnataka • 11 hours ago")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 12))
                                ThreeDots(size: 3, color: .gray)
                                }
                        }
                        ForEach(1..<8){_ in
                        feedCell()
                        }
                    }.padding(.top,80)
                }
                
                
                
                VStack{
                    VStack{

                        HStack{
                            Image(systemName: "figure.hunting")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                            Spacer()
                            Text("Fugg *ME.")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 22))
                            Spacer()
                            Image("User")
                                .resizable()
                                .frame(width: 35,height: 35)
                                .cornerRadius(17.5)
                        }
                        .padding(.horizontal)
                        .padding(.vertical,10)
                        HStack{
                            Text("Friends")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
            
                            Text("Discovery")
                                .foregroundStyle(.gray)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    feed()
}
