//
//  MemoryView.swift
//  Fugg*ME
//
//  Created by sai ganesh on 14/10/23.
//

import SwiftUI

struct MemoryView: View {
    var day : Int
    var body: some View {
        VStack{
            ZStack{
                
                Text("\(day)")
                    .foregroundStyle(.white)
                    .zIndex(1)
                
                Image("p")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 8, height:70 )
                    .cornerRadius(6)
                    .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(.white, lineWidth: 1.5)
                        .frame(width: UIScreen.main.bounds.width / 8, height:70 ))
            }
        }
    }
}

struct Loserx : PreviewProvider{
    static var previews: some View{
        MemoryView(day: 12)
    }
}
