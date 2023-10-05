//
//  OnGoingTaskView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 2/10/2023.
//

import SwiftUI

struct OnGoingTaskView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            Text("Companion")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .offset(y:-50)
            
            Image("dog")
            
            ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width:331, height:201)
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
                        .dynamicTypeSize(.xxxLarge)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        .offset(x:134, y:70)
                }
                
                
                
            }
            
            Button{
                
            }
            label: {
                Image(systemName: "chevron.down")
                    .dynamicTypeSize(.xxxLarge)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .offset(y:70)
                    .font(.system(size: 36))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
    }
}

#Preview {
    OnGoingTaskView()
}
