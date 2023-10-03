//
//  OnGoingTaskView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 2/10/2023.
//

import SwiftUI

struct OnGoingTaskView: View {
    var body: some View {
        VStack {
            Image("dog")
            
            VStack(spacing: 40) {
                Text("Go for a brisk 25 minute jog.")
                    .font(.system(size: 24))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)

                HStack(spacing: 40) {
                    Button {
                        
                    } label: {
                        Label("", systemImage: "multiply.circle")
                            .font(.system(size: 24))
                    }
                    
                    Button {
                        
                    } label: {
                        Label("", systemImage: "checkmark.circle")
                            .font(.system(size: 24))
                    }
                }
            }.padding(30)
            .frame(width: 331, height: 201)
                .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.5))
                .foregroundColor(.white)
                .cornerRadius(20)
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
                    
    }
}

#Preview {
    OnGoingTaskView()
}
