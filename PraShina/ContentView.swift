//
//  ContentView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 2/10/2023.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
        
        
      
                TabView {

                    
                    VStack{

                        Text("Home")
                        
                    }
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(colorScheme == .dark ? Color.white : Color.black)

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

//                    VStack{
//
//                        Text("History")
//                        
//                    }
                    NameCompanionView()
                        .tabItem() {
                            VStack {
                                Image(systemName: "calendar")
                                Text("History")
                                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                
                            }

                        }
                    SettingView()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black)
                    .tabItem() {
                        VStack {
                            Image(systemName: "gearshape")
                            Text("Setting")
                                    .foregroundColor(.white)
                        }
                    }
                }
                .onAppear {
                    UITabBar.appearance().unselectedItemTintColor = .white
                    UITabBar.appearance().barTintColor = UIColor(red: 54, green: 54, blue: 54, alpha: 1)
                    
                }
                .tint(Color(red: 0.47, green: 0.47, blue: 0.47).opacity(0.85))
        }

    
    
}

#Preview {
    ContentView()
}
