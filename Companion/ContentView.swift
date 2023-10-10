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
    
    @State var selectedTab: Tabs = .home
    @State private var tabSelection = 1
    
    var body: some View {
        

        NavigationStack {
            
            if isPlaying {
                VideoPlayer(player: player)
                    .ignoresSafeArea()
                    .onAppear() {
                        player.play()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4.8) {
                            isPlaying = false
                        }
                        
                    }
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            } else {
                
                TabView(selection: $tabSelection) {
                    
                    HomePageView()
                        .tag(1)
                    ChooseTaskView()
                        .tag(2)
                    HistoryView()
                        .tag(3)
                    SettingView()
                        .tag(4)
                
  
                }
                .overlay(alignment: .bottom) {
                    CustomTabView(tabSelection: $tabSelection)
                }

            }
        }

        
        
    }
    
}

#Preview {
    ContentView()
}
