//
//  ContentView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 2/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
      
                TabView {

                    
                    VStack{

                        Text("Home")
                        
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black)

                    .tabItem() {
                            VStack {
                                Image(systemName: "pawprint")
                                    
                                    
                            Text("home")
                                    .foregroundColor(.white)
                            }.foregroundStyle(.red)
                        
                            
                            
                        }
                        OnGoingTaskView()
                        .tabItem() {
                            VStack {
                                Image(systemName: "checklist")
                                Text("Ongoing task")
                                        .foregroundColor(.white)
                                
                            }
                            

                        }

                    VStack{

                        Text("History")
                        
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black)

                        .tabItem() {
                            VStack {
                                Image(systemName: "calendar")
                                Text("History")
                                        .foregroundColor(.white)
                                
                            }

                        }
                    VStack{

                        Text("Setting")
                        
                    }
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
