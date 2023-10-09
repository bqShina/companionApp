//
//  CustomDesignView.swift
//  companion
//
//  Created by Anne Elvira on 9/10/2023.
//

import SwiftUI

struct CustomDesignView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) private var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        let contentColor: Color = colorScheme == .dark ? Color.white : Color.black
        VStack(spacing: 50) {
            CustomNavigationBar(presentationMode: presentationMode, contentColor: contentColor, spacingNum: 10, title: "Customize Your Companion")
            
            Image("defaultDog")
            
            VStack (spacing:0){
                HStack{
                    Button(){
                        
                    } label: {
                        ZStack{
                            TopRoundedRectangle(cornerRadius: 20)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                    .opacity(0.6)
                            Image(systemName: "paintpalette")
                                .dynamicTypeSize(.xxLarge)
                                .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                        }
                        
                    }
                    Button(){
                        
                    } label: {
                        ZStack{
                            TopRoundedRectangle(cornerRadius: 20)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                    .opacity(0.2)
                            Image(systemName: "tshirt")
                                .dynamicTypeSize(.xxLarge)
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        }
                    }.offset(x:-8)
                }.offset(x:-94)
                
                ZStack{
                    GeometryReader { geometry in
                        CustomRoundedRectangle(width: geometry.size.width)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .opacity(0.2)

                    }.frame(height: 250)
                                                    
                }
            }.offset(y:-110)
            
        }
    }
}

#Preview {
    CustomDesignView()
}
