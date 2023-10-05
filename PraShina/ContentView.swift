//
//  ContentView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 2/10/2023.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var tabItemColor: UIColor {
            colorScheme == .dark ? .white : .black
        }

    var body: some View {
        
        
        
      
                TabView {

                    HomePageView()
                    .tabItem() {
                            VStack {
                                Image(systemName: "pawprint")
                                    
                                    
                            Text("home")
                                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            }.foregroundStyle(.red)
                        
                            
                            
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
                    print(tabItemColor)
                    UITabBar.appearance().unselectedItemTintColor = tabItemColor
                    UITabBar.appearance().barTintColor = UIColor(red: 54, green: 54, blue: 54, alpha: 1)
                    
                }
                .tint(Color(red: 0.47, green: 0.47, blue: 0.47).opacity(0.85))
        }

    
    
}

#Preview {
    ContentView()
}
