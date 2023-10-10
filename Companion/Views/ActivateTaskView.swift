//
//  ActiveTaskView.swift
//  PraShina
//
//  Created by Anne Elvira on 6/10/2023.
//

import SwiftUI

struct ActivateTaskView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @Environment(\.dismiss) private var dismiss
    let task: String
    
    var body: some View {
        let contentColor: Color = colorScheme == .dark ? Color.white : Color.black
        VStack{
            CustomNavigationBar(presentationMode: presentationMode, contentColor: contentColor, spacingNum: 80, title: "Companion")
            
            
            Image("dogSmile")
            
            ZStack{
                Image("glow")
                    .offset(y:-50)
                
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width:280, height:150)
                        .foregroundColor(contentColor)
                        .opacity(0.2)
                    
                    HStack{
                        Text(task)
                            .font(.system(size: 22))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(contentColor)
                            .frame(width: 174, height: 100, alignment: .center)
                           

                        
                    }
                }.offset(y:-50)
                
            }
            
            Button{
                
            }
            label: {
                NavigationLink(destination: OnGoingTaskView(task: task)) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width:280, height:55)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .opacity(0.2)
                        
                        HStack{
                            Text("Activate")
                                .font(.system(size: 22))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            
                            Image(systemName: "arrow.right")
                                .dynamicTypeSize(.xxLarge)
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                .offset(x:35)
                        }
                    }
                }
                
            }.offset(y:-55)
            
        }
        
    }
}

#Preview {
    ActivateTaskView(task: "Listen to some music")
}
