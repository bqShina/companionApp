//
//  UnFinishedTaskView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 8/10/2023.
//

import SwiftUI
import ConfettiSwiftUI

struct UnFinishedTaskView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @State private var counter = 0
    
    var body: some View {
        let contentColor: Color = colorScheme == .dark ? Color.white : Color.black
        
        VStack(spacing: 50) {
            Spacer()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .navigationBarBackButtonHidden(true)
                .toolbar(content: {
                       ToolbarItem (placement: .navigationBarLeading)  {
                                
                           Button(action: {
                               presentationMode.wrappedValue.dismiss()
                           }, label: {
                               HStack(alignment: .top, spacing: 50) {
                                   
                                   Image(systemName: "arrowshape.turn.up.backward")
                                       .font(.system(size: 24))
                                       .foregroundColor(contentColor)
                                   
                                   Text("Task not completed!")
                                       .font(.system(size: 24))
                                       .fontWeight(.bold)
                                       .foregroundColor(contentColor)
                              
                                   Spacer()
                               }
                           })
                           
                       }
                       })
            
            
               
           Image("angryDog")
               .aspectRatio(contentMode: .fit)
               .foregroundStyle(.tint)
               .confettiCannon(counter: $counter, confettis: [.text("💩")], confettiSize: 20, openingAngle: Angle(degrees: 0), closingAngle: Angle(degrees: 360), radius: 200, repetitions: 2, repetitionInterval: 0.3)
            
            
            VStack {
                Image(systemName: "hand.thumbsdown")
                    .font(.system(size: 24))
                    .foregroundColor(.red)
                    .offset(x:125)
                Text("You have not completed the task, two more and risk level down!")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            .padding(.all)
            .frame(width: 331, height: 201)
            .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.4))
            .cornerRadius(25)
            .padding()
                
            Spacer()
        }
        .padding(.horizontal)
        .onAppear {
            counter += 1
        }
    
           
    }
}

#Preview {
    UnFinishedTaskView()
}
