//
//  SettingView.swift
//  Companion
//
//  Created by Chaman Kumar on 4/10/2023.
//


import SwiftUI

struct SettingView: View {
    @State private var notificationOn: Bool = true
    @State private var darkMode: Bool = true
    
    var body: some View {
        VStack(spacing: 30) {
            HStack(alignment: .top, spacing: 100) {
                Image(systemName: "arrowshape.turn.up.backward")
                    .font(.system(size: 24))
                Text("Setting")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.horizontal)
            
            HStack(spacing: 80) {
                Image("small_dog")
                Text("Your companion")
                    .font(.system(size: 18))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .frame(width: 343, height: 76)
            .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
            .cornerRadius(25)
            
    
            Toggle("Turn on notifications", isOn: $notificationOn)
                .toggleStyle(SwitchToggleStyle(tint: .green))
                .padding(.horizontal, 30)
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .frame(width: 346, height: 48)
                .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
                .cornerRadius(25)
            
            Toggle("Turn on light/Dark mode", isOn: $darkMode)
                .toggleStyle(SwitchToggleStyle(tint: .green))
                .padding(.horizontal, 30)
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .frame(width: 346, height: 48)
                .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
                .cornerRadius(25)
            
            Button(action: {}, label: {
                Text("Privacy & Security")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .offset(x:-65)
            })
            .frame(width: 346, height: 48)
            .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
            .cornerRadius(25)
            
            Button(action: {}, label: {
                Text("Help & Support")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .offset(x:-75)
            })
            .frame(width: 346, height: 48)
            .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
            .cornerRadius(25)
            
            Button(action: {}, label: {
                Text("About")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .offset(x:-115)
            })
            .frame(width: 346, height: 48)
            .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
            .cornerRadius(25)

            Spacer()
            
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    SettingView()
}
