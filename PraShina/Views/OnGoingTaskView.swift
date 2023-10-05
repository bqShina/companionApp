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
        ScrollView(.vertical){
                VStack {
                    Text("Companion")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .offset(y:20)
                    
                    Image("dog")
                        .offset(y:20)
                    
                    Text("Current Task")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .offset(y:25)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width:331, height:115)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .opacity(0.2)
                            .offset(y:35)
                        
                        Text("Sing and dance to a song 🎶")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .offset(y:35)
                        
                    }
                    
                    Text("Have you finished it?")
                        .padding()
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .offset(y:35)
                    
                    HStack(spacing: 30){
                        NavigationLink {
                            
                        }
                    label: {
                        Image(systemName: "multiply.circle")
                            .font(.system(size: 26))
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .offset(y:35)
                        
                    }
                        
                        NavigationLink(destination: FinishTaskView()) {
                            Image(systemName: "checkmark.circle")
                                .font(.system(size: 26))
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                .offset(y:35)
                        }
                    }
                    
                }
                
            }
        
                    
    }
}

#Preview {
    OnGoingTaskView()
}
