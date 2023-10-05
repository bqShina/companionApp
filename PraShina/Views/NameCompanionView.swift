//
//  NameCompanionView.swift
//  AFPLCompanionProject
//
//  Created by Chaman Kumar on 28/9/2023.
//

import SwiftUI

struct NameCompanionView: View {
    @FocusState private var isFocused: Bool
    @State private var text: String = ""
    
    var body: some View {
        
        VStack {
            Button {
                    } label: {
                    Label("", systemImage:"arrowshape.turn.up.backward" )
                                .font(.system(size: 24))
                    }
            
                .frame(width: 28, height: 20)
                .offset(x:-160)
                .offset(y:-88)
                    Text("Name of your companion")
            
                .offset(y:-114)
            Button {
                isFocused.toggle()
                    } label: {
                    Image("Image")
                        
                        
                    }
                
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            Text("Tap on the Dog to add the name")
            TextField("", text : $text)
                .focused($isFocused)
                
             
            
                
            
            
                
            
            
                
//                Spacer()
            }
        .offset(y:-117)
        
        }
        
        
}


#Preview {
    NameCompanionView()
}

