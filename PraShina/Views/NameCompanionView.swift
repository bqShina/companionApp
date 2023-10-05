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
    @State private var text: String = ""
    
    init() {
        self.isFocused = false
    }
    var body: some View {
        
        VStack {
            HStack{
                Button{
                    
                }
                label: {
                    Image(systemName: "arrowshape.turn.up.backward")
                        .dynamicTypeSize(.xxxLarge)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        .offset(x:-20, y:-30)
                }
                
                Text("Name Your Companion")
                    .font(.system(size:24, weight: .bold))
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .offset(y:-30)
            }
            
            Button {
                isFocused.toggle()
                    } label: {
                    Image("dogSmile")
                        
                        
                    }
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .multilineTextAlignment(.center)
            
            Text("Tap on the Dog to add the name")
                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                .font(.system(size:20, weight: .regular))
            
            Button{
                isFocused.toggle()
            } label: {
                TextField("", text : $text)
                    .focused($isFocused)
                    .border(colorScheme == .dark ? Color.white : Color.black)
                    .textFieldStyle(.roundedBorder)
                    .frame(width:200)
                                        
            }
            
            }
        .offset(y:-117)
        }
}


#Preview {
    NameCompanionView()
}

