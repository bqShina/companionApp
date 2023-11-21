//
//  CustomColourView.swift
//  companion
//
//  Created by Anne Elvira on 9/10/2023.
//

import SwiftUI

struct CustomColourView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) private var presentationMode
    @Environment(\.dismiss) private var dismiss
    @State private var imageName = "dogSmile"
    @State private var isColourViewActive = true
    @State private var selectedButton: Int? = nil
    
    var body: some View {
        let contentColor: Color = colorScheme == .dark ? Color.white : Color.black
        
        VStack(spacing: 50) {
            CustomNavigationBar(presentationMode: presentationMode, contentColor: contentColor, spacingNum: 10, title: "Customize Your Companion")
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .scaledToFit()
                .frame(width: 370, height: 500)
            
            VStack (spacing:0){
//                TAB BUTTONS, PALETTE AND DESIGN
                HStack{
                    if isColourViewActive {
                        Button(){
                            
                        } label: {
                            ZStack{
                                TopRoundedRectangle(cornerRadius: 20)
                                        .frame(width: 100, height: 50)
                                        .foregroundColor(contentColor)
                                        .opacity(0.2)
                                Image(systemName: "paintpalette")
                                    .dynamicTypeSize(.xxLarge)
                                    .foregroundColor(contentColor)
                            }
                            
                        }
                        
                        Button(){
                            isColourViewActive = false
                            if imageName != "defaultDog" {
                                imageName = "defaultDog"
                            } else {
                                imageName = "defaultDog"
                            }
                        } label: {
                            ZStack{
                                TopRoundedRectangle(cornerRadius: 20)
                                        .frame(width: 100, height: 50)
                                        .foregroundColor(contentColor)
                                        .opacity(0.6)
                                Image(systemName: "tshirt")
                                    .dynamicTypeSize(.xxLarge)
                                    .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                            }
                        }.offset(x:-8)
                        
                    } else {
                        Button(){
                            isColourViewActive = true
                            if imageName != "dogSmile" {
                                imageName = "dogSmile"
                            } else {
                                imageName = "dogSmile"
                            }
                            selectedButton = nil
                        } label: {
                            ZStack{
                                TopRoundedRectangle(cornerRadius: 20)
                                        .frame(width: 100, height: 50)
                                        .foregroundColor(contentColor)
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
                                        .foregroundColor(contentColor)
                                        .opacity(0.2)
                                Image(systemName: "tshirt")
                                    .dynamicTypeSize(.xxLarge)
                                    .foregroundColor(contentColor)
                            }
                        }.offset(x:-8)
                    }
                }.offset(x:-94)
                
                
//                CONTENT OF THE TAB BUTTONS
                
                ZStack{
                    GeometryReader { geometry in
                        CustomRoundedRectangle(width: geometry.size.width)
                            .foregroundColor(contentColor)
                            .opacity(0.2)

                    }.frame(height: 230)
//                    CONTENT FOR CHANGING COLOUR
                    if isColourViewActive {
                        VStack(spacing:20){
                            HStack(spacing:45){
                                Button(){
                                    if imageName != "dogSmile" {
                                        imageName = "dogSmile"
                                    } else {
                                        imageName = "dogSmile"
                                    }
                                } label: {
                                    Image(systemName: "nosign")
                                        .font(.system(size: 30))
                                        .foregroundColor(contentColor)
                                }
                                
                                Button(){
                                    
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0xABA6AA))
                                }
                                
                                Button(){
                                    
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0x00D324))
                                }
                                
                                Button(){
                                    
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0x008965))
                                }
                            }
                            
                            HStack(spacing:40){
                                Button(){
                                    
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0xF5FCC9))
                                }
                                
                                Button(){
                                    
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0xF7D549))
                                }
                                
                                Button(){
                                    
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0xAD5531))
                                }
                                
                                Button(){
                                    if imageName != "dogBlue" {
                                        imageName = "dogBlue"
                                    } else {
                                        imageName = "dogBlue"
                                    }
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0x204B91))
                                }
                            }
                            
                            HStack(spacing:40){
                                Button(){
                                    
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0xFF7147))
                                }
                                
                                Button(){
                                    
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0xFF191C))
                                }
                                
                                Button(){
                                    
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0xFD978F))
                                }
                                
                                Button(){
                                    if imageName != "dogPurple" {
                                        imageName = "dogPurple"
                                    } else {
                                        imageName = "dogPurple"
                                    }
                                } label: {
                                    Circle()
                                        .frame(width:50)
                                        .foregroundColor(Color(hex: 0x541395))
                                }
                            }
                        }
                    }  else{
//                        CONTENT FOR DESIGN VIEW
                        HStack(spacing: 40){
                            VStack(spacing:15){
                                Button(){
                                    if imageName != "defaultDog" {
                                        imageName = "defaultDog"
                                    } else {
                                        imageName = "defaultDog"
                                    }
                                    selectedButton = nil
                                } label: {
                                    ZStack{
                                        Image(systemName: "nosign")
                                            .font(.system(size: 30))
                                            .foregroundColor(contentColor)
                                    }
                                }
                                Button(){
                                    selectedButton = 0
                                } label: {
                                    Image("blackHat")
                                        .resizable()
                                        .frame(width:70, height:50)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(selectedButton == 0 ? Color.blue : Color.clear, lineWidth: 2)
                                                .frame(width:100, height: 70)
                                        )
                                }.offset(y:10)
                                Button(){
                                    selectedButton = 1
                                } label: {
                                    Image("chefHat")
                                        .resizable()
                                        .frame(width:70, height:70)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(selectedButton == 1 ? Color.blue : Color.clear, lineWidth: 2)
                                                .frame(width:100, height: 70)
                                        )

                                }
                            }
                            VStack(spacing:-47){
                                Button(){
                                    selectedButton = 2
                                } label: {
                                    Image("brownMoustache")
                                        .resizable()
                                        .frame(width:100, height:100)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(selectedButton == 2 ? Color.blue : Color.clear, lineWidth: 2)
                                                .frame(width:100, height: 70)
                                        )
                                }.offset(y:-10)
                                Button(){
                                    selectedButton = 3
                                } label: {
                                    Image("moreMoustache")
                                        .resizable()
                                        .frame(width:100, height:100)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(selectedButton == 3 ? Color.blue : Color.clear, lineWidth: 2)
                                                .frame(width:100, height: 70)
                                        )
                                }
                                Button(){
                                    selectedButton = 4
                                    if imageName != "dogMous" {
                                        imageName = "dogMous"
                                    } else {
                                        imageName = "dogMous"
                                    }
                                } label: {
                                    Image("blackMoustache")
                                        .resizable()
                                        .frame(width:120, height:120)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(selectedButton == 4 ? Color.blue : Color.clear, lineWidth: 2)
                                                .frame(width:100, height: 70)
                                        )
                                }.offset(y:10)
                            }
                        }.offset(x:-60)
                    }
                }
            }.offset(y:-110)
            
            
        }
    }
}

#Preview {
    CustomColourView()
}


struct TopRoundedRectangle: Shape {
    var cornerRadius: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let minX = rect.minX
        let minY = rect.minY
        let maxX = rect.maxX
        let maxY = rect.maxY

        path.move(to: CGPoint(x: minX + cornerRadius, y: minY))
        path.addLine(to: CGPoint(x: maxX - cornerRadius, y: minY))
        path.addArc(center: CGPoint(x: maxX - cornerRadius, y: minY + cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 270), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: CGPoint(x: maxX, y: maxY))
        path.addLine(to: CGPoint(x: minX, y: maxY))
        path.addLine(to: CGPoint(x: minX, y: minY + cornerRadius))
        path.addArc(center: CGPoint(x: minX + cornerRadius, y: minY + cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)

        return path
    }
}

struct CustomRoundedRectangle: Shape {
    var width: CGFloat
    var radius: CGFloat = 20

    func path(in rect: CGRect) -> Path {
        var path = Path()

        // Calculate the dimensions of the rounded rectangle based on the specified width
        let minX = rect.minX
        let minY = rect.minY
        let maxX = rect.minX + width // Adjusted width
        let maxY = rect.maxY

        path.move(to: CGPoint(x: minX, y: minY)) // Top-left corner (sharp)
        path.addLine(to: CGPoint(x: maxX - radius, y: minY)) // Top-right corner (rounded)
        path.addArc(center: CGPoint(x: maxX - radius, y: minY + radius), radius: radius, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false) // Top-right corner arc
        path.addLine(to: CGPoint(x: maxX, y: maxY - radius)) // Bottom-right corner (rounded)
        path.addArc(center: CGPoint(x: maxX - radius, y: maxY - radius), radius: radius, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false) // Bottom-right corner arc
        path.addLine(to: CGPoint(x: minX + radius, y: maxY)) // Bottom-left corner (rounded)
        path.addArc(center: CGPoint(x: minX + radius, y: maxY - radius), radius: radius, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false) // Bottom-left corner arc
        path.addLine(to: CGPoint(x: minX, y: minY)) // Back to the starting point (closing the path)

        return path
    }
}

extension Color {
    init(hex: UInt) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue)
    }
}
