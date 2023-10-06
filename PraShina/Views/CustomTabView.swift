//
//  CustomTabView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 6/10/2023.
//

import SwiftUI



struct CustomTabView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        HStack() {
            Button {
                
            } label: {
                GeometryReader { geo in
                    
                    VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6) {
                        Image(systemName: "pawprint")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
        
                        Text("home")
                            .font(.system(size: 12))
                            
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
                
            }
            
            Button {
                
            } label: {
                GeometryReader { geo in
                    VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6) {
                        Image(systemName: "checklist")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("Ongoing task")
                            .font(.system(size: 12))
                        
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
            }
            
            Button {
                
            } label: {
                GeometryReader { geo in
                    VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6) {
                        Image(systemName: "calendar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("history")
                            .font(.system(size: 12))
                        
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
            }
            
            Button {
                
            } label: {
                GeometryReader { geo in
                    VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6) {
                        Image(systemName: "gearshape")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("setting")
                            .font(.system(size: 12))
                        
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
            }
        }
    }
}

#Preview {
    CustomTabView()
}
