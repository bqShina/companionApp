//
//  NameCompanionView.swift
//  AFPLCompanionProject
//
//  Created by Chaman Kumar on 28/9/2023.
//

import SwiftUI

struct NameCompanionView: View {
    @Environment(\.colorScheme) var colorScheme
    @FocusState private var isFocused: Bool
    @State private var name: String = ""
    @State private var savedName: String = ""
    @Environment(\.presentationMode) private var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    func saveNameToUserDefaults() {
            UserDefaults.standard.set(name, forKey: "name")
        }
    
    init() {
        self.isFocused = false
    }
    
    var body: some View {
        let contentColor: Color = colorScheme == .dark ? Color.white : Color.black
        VStack(spacing: 50) {
//            CustomNavigationBar(presentationMode: presentationMode, contentColor: contentColor, spacingNum: 30, title: "Name Your Companion")
//                .zIndex(1)
                
                
            Button {
                isFocused.toggle()
            } label: {
                Image("dogSmile")
                    
                    
            }
            .imageScale(.large)
            .foregroundStyle(.tint)
            .multilineTextAlignment(.center)
            .offset(y:-140)
//            .zIndex(10)
                
            Text("Please input the name you choose")
                .foregroundColor(contentColor)
                .font(.system(size:20, weight: .semibold))
                .offset(y:-180)
                
            Button{
                isFocused.toggle()
            } label: {
                TextField("", text : $name)
                    .focused($isFocused)
                    .border(contentColor)
                        .textFieldStyle(.roundedBorder)
                        .frame(width:200)
            }.offset(y:-190)
            
//            Text("Hello, \(savedName)")
                
            Button{
                saveNameToUserDefaults()
                dismiss()
//                loadNameFromUserDefaults()
            }
            label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width:280, height:55)
                        .foregroundColor(contentColor)
                        .opacity(0.2)
                        
                    HStack{
                        Text("Next")
                            .font(.system(size: 22))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(contentColor)
                            
                        Image(systemName: "arrow.right")
                            .dynamicTypeSize(.xxLarge)
                            .foregroundColor(contentColor)
                            .offset(x:35)
                    }
                }
            }.offset(y:-170)
        }
            
    }
    
}


#Preview {
    NameCompanionView()
}

