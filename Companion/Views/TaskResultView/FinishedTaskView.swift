//
//  FinishTaskView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 5/10/2023.
//

import SwiftUI
import ConfettiSwiftUI

struct FinishTaskView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @State private var counter = 0
    
    var body: some View {
        
        VStack(spacing: 50) {
            Spacer()
                    .navigationBarBackButtonHidden(true)
                   .toolbar(content: {
                       ToolbarItem (placement: .navigationBarLeading)  {
                                
                           Button(action: {
                               presentationMode.wrappedValue.dismiss()
                           }, label: {
                               HStack(alignment: .top, spacing: 100) {
                                   Image(systemName: "arrowshape.turn.up.backward")
                                       .font(.system(size: 24))
                                       .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                   Text("Level Up!")
                                       .font(.system(size: 24))
                                       .fontWeight(.bold)
                                       .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                              
                                   Spacer()
                               }
                           })
                           
                       }
                       })
            
            
               
           Image("finishedTaskDog")
               .aspectRatio(contentMode: .fit)
               .foregroundStyle(.tint)
               .confettiCannon(counter: $counter, openingAngle: Angle(degrees: 0), closingAngle: Angle(degrees: 360), radius: 200, repetitions: 3, repetitionInterval: 0.7)
            
            
            VStack {
                Image(systemName: "trophy")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 0.89, green: 0.65, blue: 0.04))
                    .offset(x:125)
                Text("Congratulations!  \nYou have completed the task and now leveled up to 6!")
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
    FinishTaskView()
}
