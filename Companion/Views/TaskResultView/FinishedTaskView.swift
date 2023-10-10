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
    @State private var counter = 0
    @Environment(\.presentationMode) private var presentationMode
    @State var selectedTab: Tabs = .history
    @State private var tabSelection = 3
    var body: some View {
        let contentColor: Color = colorScheme == .dark ? Color.white : Color.black
        VStack(spacing: 50) {
            CustomNavigationBar(presentationMode: presentationMode, contentColor: contentColor, spacingNum: 100, title: "Level Up!")
               
           Image("finishedTaskDog")
               .aspectRatio(contentMode: .fit)
               .foregroundStyle(.tint)
               .confettiCannon(counter: $counter, openingAngle: Angle(degrees: 0), closingAngle: Angle(degrees: 360), radius: 200, repetitions: 3, repetitionInterval: 0.7)
            
            
            VStack (spacing: 30) {
                Image(systemName: "trophy")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 0.89, green: 0.65, blue: 0.04))
                    .offset(x:125)
                Text("Congratulations!  \nYou have completed the task and now leveled up to 6!")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: TabViewCustom(selectedTab: $selectedTab, tabSelection: $tabSelection)) {
                    Image(systemName: "calendar")
                        .font(.system(size: 25))
                        .foregroundColor(contentColor)
                }
                    

                
                
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

