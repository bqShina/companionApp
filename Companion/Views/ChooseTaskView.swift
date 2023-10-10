//
//  PendingTaskView.swift
//  PraShina
//
//  Created by Anne Elvira on 5/10/2023.
//

import SwiftUI

struct ChooseTaskView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @Environment(\.dismiss) private var dismiss
    
    @State private var tasks: [String] = ["Listen to some music 🎵", "Binge your favourite movie 🎬", "Sing and dance to a song 🎶", "Running for 1 hour 🏃"]
    
    var body: some View {
        let contentColor: Color = colorScheme == .dark ? Color.white : Color.black
        
        VStack{
            
            Image("dog")
                .offset(y:-25)
            
            Text("Choose Your Task")
                .font(.system(size: 24))
                .fontWeight(.semibold)
            
        SingleTaskButtonView(contentColor: contentColor, task: tasks[0])
        SingleTaskButtonView(contentColor: contentColor, task: tasks[1])
                
            
            Button{
                tasks.shuffle()
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

struct SingleTaskButtonView: View {
    let contentColor: Color
    let task: String
    
    var body: some View {
        NavigationLink(destination: ActivateTaskView(task: task)){
            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width:331, height:85)
                    .foregroundColor(contentColor)
                    .opacity(0.2)
                
                HStack{
                    Text(task)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(contentColor)
                    
                    Image(systemName: "arrow.right")
                        .dynamicTypeSize(.xxLarge)
                        .foregroundColor(contentColor)
                }
            }
        }
    }
}
