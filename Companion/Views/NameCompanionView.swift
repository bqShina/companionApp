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
                        .offset(x:-20, y:-120)
                }
                
                Text("Name Your Companion")
                    .font(.system(size:24, weight: .bold))
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .offset(y:-120)
            }
            
            Button {
                isFocused.toggle()
                    } label: {
                    Image("dogSmile")
                        
                        
                    }
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .multilineTextAlignment(.center)
                    .offset(y:-70)
            
            Text("Tap on the Dog to add the name")
                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                .font(.system(size:20, weight: .regular))
                .offset(y:-50)
            
            Button{
                isFocused.toggle()
            } label: {
                TextField("", text : $name)
                    .focused($isFocused)
                    .border(colorScheme == .dark ? Color.white : Color.black)
                    .textFieldStyle(.roundedBorder)
                    .frame(width:200)
            }.offset(y:-40)
            
            }
        
        Button{
            
        }
        label: {
            NavigationLink(destination: ContentView(name: $name)){
                ZStack{
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width:280, height:55)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        .opacity(0.2)
                    
                    HStack{
                        Text("Next")
                            .font(.system(size: 22))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        
                        Image(systemName: "arrow.right")
                            .dynamicTypeSize(.xxLarge)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .offset(x:35)
                    }
                }
            }
        }.offset(y:50)
        }
}


#Preview {
    NameCompanionView()
}

