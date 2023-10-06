//
//  ContentView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 2/10/2023.
//

import SwiftUI
import AVKit
//import UIKit


struct ContentView: View {

    @Environment(\.colorScheme) var colorScheme
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "welcome", withExtension: "mov")!)
    @State var isPlaying: Bool = true

    var body: some View {
        

        NavigationStack {
            
            if isPlaying {
                VideoPlayer(player: player)
                    .ignoresSafeArea()
                    .onAppear() {
                        player.play()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
                            isPlaying = false
                        }
                        
                    }
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            } else {
                TabView {
                    
                    HomePageView()
                        .tabItem() {
                            VStack {
                                Image(systemName: "pawprint")
                                
                                
                                Text("home")
                                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            }
                            
                            
                            
                        }
                    OnGoingTaskView()
                        .tabItem() {
                            VStack {
                                Image(systemName: "checklist")
                                Text("Ongoing task")
                                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            }
                                                    
                        }
                    
                    
                    VStack{
                        
                        Text("History")
                        
                    }
                    .tabItem() {
                        VStack {
                            Image(systemName: "calendar")
                            Text("History")
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            
                        }
                        
                    }
                    
                    SettingView()
                        .tabItem() {
                            VStack {
                                Image(systemName: "gearshape")
                                Text("Setting")
                                    .foregroundColor(.white)
                            }
                        }
                }
                .onAppear {

    //                UITabBar.appearance().unselectedItemTintColor = colorScheme == .dark ? .white : .black
    //                UITabBar.appearance().barTintColor = UIColor(red: 54, green: 54, blue: 54, alpha: 1)
                    
                }
                .tint(Color(red: 0.47, green: 0.47, blue: 0.47).opacity(0.85))
            }
        }

        
        
    }
    
}

#Preview {
    ContentView()
}
