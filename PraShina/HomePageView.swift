//
//  ContentView.swift
//  Companion
//
//  Created by Anne Elvira on 28/9/2023.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    Text("Level 1")
                        .font(.system(size:30, weight: .bold))
                        .foregroundColor(.white)
                        .offset(y:20)
                    Image(systemName: "trophy")
                        .dynamicTypeSize(.xxxLarge)
                        .foregroundColor(.white)
                        .offset(y:20)
                }
                Text("Complete 3 tasks to level up!")
                    .dynamicTypeSize(.xLarge)
                    .foregroundColor(.white)
                    .offset(y:30)
                
                //            EVOLUTION BOX
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width:335, height:85)
                        .foregroundColor(.white)
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
                                .foregroundColor(.white)
                                .offset(y:30)
                            Image(systemName: "arrowshape.right")
                                .dynamicTypeSize(.xxLarge)
                                .foregroundColor(.white)
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
                                .foregroundColor(.white)
                                .offset(y:30)
                            Image(systemName: "arrowshape.right")
                                .dynamicTypeSize(.xxLarge)
                                .foregroundColor(.white)
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
                    
                
    //            Customization box
                
                Button(){
                    
                }
                label: {
                    Text("Style Me!")
                        .padding(.horizontal, 80)
                        .padding(.vertical, 15)
                        .font(.system(size:24, weight: .bold))
                        .foregroundColor(.white)
                        .background(.gray)
                        .cornerRadius(40)
//                       Image(systemName: "pencil.circle")
                }
                .offset(y:-45)
                    
                
                
                Divider()
    //            Tab Menu
                HStack{
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "pawprint")
                            .opacity(0.4)
                            .imageScale(.large)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "checklist")
                            .imageScale(.large)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "calendar")
                            .imageScale(.large)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "gearshape")
                            .imageScale(.large)
                            .foregroundColor(.white)
                    }
                    Spacer()

                }
                
                .padding()
            }
        }
    }
}

#Preview {
    HomePageView()
}
