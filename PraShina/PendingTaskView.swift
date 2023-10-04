//
//  PendingTaskView.swift
//  PraShina
//
//  Created by Anne Elvira on 5/10/2023.
//

import SwiftUI

struct PendingTaskView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "arrowshape.turn.up.left")
                    .dynamicTypeSize(.xxxLarge)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .offset(x:-57)
                
                Text("Companion")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                    .offset(x:-15)
                
            }
            
            Image("dog")
            
            Text("Pending Task")
                .font(.system(size: 26))
                .fontWeight(.semibold)
                .offset(x:-78)
            
            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width:331, height:120)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .opacity(0.2)
                
                Text("Sing and dance to a song 🎶")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                Button{
                    
                }
                label: {
                    Image(systemName: "arrow.right")
                        .dynamicTypeSize(.xxLarge)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        .offset(x:137, y:39)
                }
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width:331, height:120)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .opacity(0.2)
                
                Text("Watch some funny videos")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                Button{
                    
                }
                label: {
                    Image(systemName: "arrow.right")
                        .dynamicTypeSize(.xxLarge)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        .offset(x:137, y:39)
                }
            }
            
        }
    }
}

#Preview {
    PendingTaskView()
}
