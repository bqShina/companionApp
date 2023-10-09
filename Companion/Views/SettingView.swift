//
//  SettingView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 3/10/2023.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var notificationOn: Bool = true
    @State private var darkMode: Bool = true
//    @Binding var name: String
    @State private var savedName: String = ""
    
//    func loadNameFromUserDefaults() {
//            if let savedUserName = UserDefaults.standard.string(forKey: "name") {
//                savedName = savedUserName
//            }
//        }
    
    func loadNameFromUserDefaults() {
            if let savedUserName = UserDefaults.standard.string(forKey: "userName") {
                savedName = savedUserName
            }
        }
    
    var body: some View {
        let contentColor: Color = colorScheme == .dark ? Color.white : Color.black
        VStack(spacing: 30) {
            Text("Setting")
                .font(.system(size: 24))
                .fontWeight(.bold)
                .foregroundColor(contentColor)
            

            ZStack {
                Image("glow-title")
                HStack(spacing: 80) {
                    Image("small_dog")
                    Text("\(savedName)")
                        .font(.system(size: 18))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(contentColor)
                }
                .frame(width: 343, height: 76)
                .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
                .cornerRadius(25)
            }
            .frame(width: 387, height: 93)
    
            
            
    
            Toggle("Turn on notifications", isOn: $notificationOn)
                .toggleStyle(SwitchToggleStyle(tint: .green))
                .padding(.horizontal, 30)
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .frame(width: 346, height: 48)
                .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
                .cornerRadius(25)
                .foregroundColor(contentColor)
            
            Toggle("Turn on light/Dark mode", isOn: $darkMode)
                .toggleStyle(SwitchToggleStyle(tint: .green))
                .padding(.horizontal, 30)
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .frame(width: 346, height: 48)
                .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
                .cornerRadius(25)
                .foregroundColor(contentColor)
            
            Button(action: {}, label: {
                Text("Privacy & Security")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .offset(x:-65)
                    .foregroundColor(contentColor)
            })
            .frame(width: 346, height: 48)
            .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
            .cornerRadius(25)
            
            Button(action: {}, label: {
                Text("Help & Support")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .offset(x:-75)
                    .foregroundColor(contentColor)
            })
            .frame(width: 346, height: 48)
            .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
            .cornerRadius(25)
            
            Button(action: {}, label: {
                Text("About")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .offset(x:-115)
                    .foregroundColor(contentColor)
            })
            .frame(width: 346, height: 48)
            .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
            .cornerRadius(25)

            Spacer()
            
            
        }
        .padding(.horizontal)
        .onAppear {
            Text("on appear")
            loadNameFromUserDefaults()
        }
    }
}

#Preview {
    SettingView()
}
