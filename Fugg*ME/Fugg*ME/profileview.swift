//
//  profileview.swift
//  Fugg*ME
//
//  Created by sai ganesh on 14/10/23.
//

import SwiftUI

struct profileview: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
           
                    VStack{
                        HStack{
                            Image(systemName: "arrow.backward")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                            Spacer()
                            
                            Text("Profile")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                            Spacer()
                            
                            ThreeDots(size: 4,color: Color.white)
                            
                        }.padding(.horizontal)
                        Spacer()
                }
                VStack{
                    Image("User")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130,height: 130)
                        .cornerRadius(75)
                    
                    Text("Ganii")
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 25))
                    
                    Text("Saiganesh Angadi")
                        .foregroundStyle(.white)
                        .fontWeight(.light)
                        .font(.system(size: 20))
                    
                    HStack{
                        Text("Your Memories")
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        
                        HStack(spacing: 4){
                            Image(systemName: "lock.fill")
                                .foregroundStyle(.gray)
                                .font(.system(size: 10))
                            
                            Text("Only visible to you")
                                .foregroundStyle(.gray)
                                .font(.system(size: 10))
                            
                        }
    
                    }.padding(.horizontal)
                        .padding(.top,4)
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundColor(.white)
                                .opacity(0.07)
                                .frame(height: 230)
                            
                            VStack{
                                HStack{
                                    Text("Last 14 days")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 16))
                                        .padding(.top,8)
                                    Spacer()
                                }.padding(.leading)
                                
                                
                                VStack{
                                    HStack (spacing:8){
                                        ForEach(1..<8){
                                            x in MemoryView(day: x)
                                        }
                                    }
                                    HStack (spacing:8){
                                        ForEach(1..<8){
                                            x in MemoryView(day: x + 7)
                                        }
                                    }.padding(.top,-4)
                                }.padding(.top,-4)
                                
                               Text("view all my memories")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 13))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(.gray, lineWidth: 2)
                                            .frame(width: 175,height: 20)
                                            .opacity(0.5)
                                    ).padding(.top,4)
                            }.padding(.top,-15)
                        }
                    }
                    Text("🔗 gani-23/github")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                        .padding(.top,8)
                    Spacer()
                }.padding(.top,35)
            }
        }
    }


#Preview {
    profileview()
}
