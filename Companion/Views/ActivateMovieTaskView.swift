//
//  ActivateMovieTaskView.swift
//  PraShina
//
//  Created by Anne Elvira on 6/10/2023.
//

import SwiftUI

struct ActivateMovieTaskView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            HStack{
                Text("")
                    .navigationBarBackButtonHidden(true)
                    .toolbar {                                    ToolbarItem(placement: .navigationBarLeading) {
                        
                        Button {
                            presentationMode.wrappedValue.dismiss()
                            dismiss()
                        } label: {
                            HStack {
                                Image(systemName: "arrowshape.turn.up.left")
                                    .dynamicTypeSize(.xxxLarge)
                                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                    .offset(x:23, y:20)
                                
                                Text("Companion")
                                    .font(.system(size: 30))
                                    .fontWeight(.heavy)
                                    .offset(x:53, y:20)
                            }
                        }
                    }
                    }
            }
            
            Image("dogSmile")
            
            ZStack{
                Image("glow")
                    .offset(y:-50)
                
                Button{
                    
                }
                label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(width:280, height:150)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .opacity(0.2)
                        
                        HStack{
                            Text("Binge your favourite movie")
                                .font(.system(size: 22))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            
                        }
                    }
                }.offset(y:-50)
            }
            
            Button{
                
            }
            label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width:280, height:55)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        .opacity(0.2)
                    
                    HStack{
                        Text("Activate")
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
            }.offset(y:-55)
            
        }
        
    }
}

#Preview {
    ActivateMovieTaskView()
}
