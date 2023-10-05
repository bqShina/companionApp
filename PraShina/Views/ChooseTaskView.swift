//
//  PendingTaskView.swift
//  PraShina
//
//  Created by Anne Elvira on 5/10/2023.
//

import SwiftUI

struct ChooseTaskView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "arrowshape.turn.up.left")
                    .dynamicTypeSize(.xxxLarge)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .offset(x:-57, y:-40)
                
                Text("Companion")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                    .offset(x:-15, y:-40)
                
            }
            
            Image("dog")
                .offset(y:-25)
            
            Text("Choose Your Task")
                .font(.system(size: 24))
                .fontWeight(.semibold)
            
            Button{
                
            }
            label: {
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width:331, height:85)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        .opacity(0.2)
                    
                    HStack{
                        Text("Listen to some music")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        
                        Image(systemName: "arrow.right")
                            .dynamicTypeSize(.xxLarge)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    }
                }
            }
            
            Button{
                
            }
            label: {
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width:331, height:85)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        .opacity(0.2)
                    
                    HStack{
                        Text("Binge your favourite movie")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        
                        Image(systemName: "arrow.right")
                            .dynamicTypeSize(.xxLarge)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    }
                }
            }
            
            Button{
                
            }
            label: {
                HStack{
                    Text("More Tasks")
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    Image(systemName: "arrow.clockwise.circle")
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
            }
            .offset(y: 25)
            
        }
    }
}

#Preview {
    ChooseTaskView()
}
