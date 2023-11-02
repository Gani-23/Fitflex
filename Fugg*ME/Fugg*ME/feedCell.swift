//
//  feedCell.swift
//  Fugg*ME
//
//  Created by sai ganesh on 13/10/23.
//

import SwiftUI

struct feedCell : View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            ZStack{
                VStack{
                    VStack{
                        
                        // Usercell Top
                        HStack{
                            Image("User")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width:40 ,height: 40)
                            
                            VStack(alignment: .leading){
                                Text("Saiganesh Angadi")
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 16))
                                
                                Text("Bengaluru • 11 hours ago")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 14))
                            } ; Spacer()
                            
                        } .padding()
                        ;Spacer()
                        
                        // Pos Cell
                        
                        ZStack{
                            
                            // Status Cell
                            
                            VStack{
                                Image("Pos")
                                    .resizable()
                                    .frame(width: 365,height: 500)
                                
                            }; Spacer()
                                .padding()
                            
                            VStack{
                                HStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundStyle(.black)
                                        .frame(width: 100,height: 120)
                                        .overlay(
                                            Image("p")
                                                .resizable()
                                                .scaledToFit()
                                                .cornerRadius(8)
                                        ).padding(.leading)
                                    Spacer()
                                }
                                Spacer()
                                
                            }
                        }
                    }.frame(width: UIScreen.main.bounds.width, height: 600)
                        
                   // comment section
                    VStack{
                        HStack{
                            Image(systemName: "suit.heart")
                                .foregroundStyle(.white)
                                .font(.system(size: 20))
                            
                            Image(systemName: "ellipsis.message")
                                .foregroundStyle(.white)
                                .font(.system(size: 20))
                            
                            Image(systemName: "location")
                                .foregroundStyle(.white)
                                .font(.system(size: 20))
                        
                                Spacer()
                        }
                    }.padding(.leading)

                }
            }
        }
    }
}

#Preview {
    feedCell()
}
