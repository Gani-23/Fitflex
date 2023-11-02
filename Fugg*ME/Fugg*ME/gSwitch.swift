//
//  gSwitch.swift
//  Fugg*ME
//
//  Created by sai ganesh on 17/10/23.
//

import SwiftUI

struct gSwitch: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            ZStack{
                VStack{
                    TabView{
                        
                        feed()
                            .tabItem { Image(systemName: "tv.fill")
                                Text("Home")}
  
                        albums()
                            .tabItem { Image(systemName: "music.note.house")
                            Text("Music")}
                        
                        planner()
                            .tabItem {
                                Image(systemName: "calendar")
                                Text("Event")
                            }
                        Sessioner()
                            .tabItem {
                                Image(systemName: "figure.cross.training")
                                Text("Track")
                            }
                        
                        profileview()
                            .tabItem { Image(systemName: "person")
                            Text("Profile")}
                            
                        
                        
                        
                    }.accentColor(.purple)
                }
            }
        }
    }
}

struct Vmoviers : PreviewProvider{
    static var previews: some View{
        gSwitch()
    }
}
