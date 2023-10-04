//
//  ContentView.swift
//  Companion
//
//  Created by Anne Elvira on 28/9/2023.
//

import SwiftUI

struct HomePageView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
       
        VStack {
            HStack{
                Text("Level 1")
                    .font(.system(size:30, weight: .bold))
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .offset(y:20)
                Image(systemName: "trophy")
                    .dynamicTypeSize(.xxxLarge)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .offset(y:20)
            }
            Text("Complete 3 tasks to level up!")
                .dynamicTypeSize(.xLarge)
                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                .offset(y:30)
                
                //            EVOLUTION BOX
            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width:335, height:85)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .opacity(0.2)
                    .offset(y:30)
                HStack{
                        //                    1st evolution
                    Image("dogevoHome")
                        .resizable()
                        .frame(width:40, height: 40)
                        .offset(y:30)
                    VStack{
                        Text("Lv. 10")
                            .dynamicTypeSize(.xSmall)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .offset(y:30)
                        Image(systemName: "arrow.right")
                            .dynamicTypeSize(.xxLarge)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .offset(y:30)
                    }
                        
                        //                    2nd evolution
                    Image("dogevoHome")
                        .resizable()
                        .opacity(0.4)
                        .frame(width:60, height: 60)
                        .offset(y:30)
                    VStack{
                        Text("Lv. 20")
                            .dynamicTypeSize(.xSmall)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .offset(y:30)
                         Image(systemName: "arrow.right")
                            .dynamicTypeSize(.xxLarge)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .offset(y:30)
                    }
                        
                        //                    3rd evolution
                    Image("dogevoHome")
                        .resizable()
                        .opacity(0.4)
                        .frame(width:80, height: 80)
                        .offset(y:30)
                        
                }
            }
                
                //            Main dog animated picture
            Image("dogHome")
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.tint)
                .offset(y:30)
                    
                
    //        Customization box
            ZStack{
                LinearGradient(
                    gradient: .init(colors: [Color.white, Color.blue.opacity(0.66)]),
                    startPoint: .init(x: 0.0, y: 0.0),
                    endPoint: .init(x: 0.75, y: 0.75)
                )
                .mask(
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 120, height: 45, alignment: .center)
                        .blur(radius: 10)
                )
                .padding(.top, 20)
                Button(action: {}, label: {
                    Label("Customize", systemImage:"pencil.circle")
                        .padding(.horizontal, 80)
                        .padding(.vertical, 15)
                        .font(.system(size:24, weight:.bold))
                        .cornerRadius(40)
                })
                .foregroundColor(.white)
                .background(
                    LinearGradient(
                        gradient: .init(colors: [Color.white, Color.blue.opacity(0.75)]),
                        startPoint: .init(x: -0.33, y: -0.33),
                        endPoint: .init(x: 0.66, y: 0.66)
                    ))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .buttonStyle(PlainButtonStyle())
            }
            .frame(height: 100)
            .offset(y:-45)

        }
    }
}

#Preview {
    HomePageView()
}
