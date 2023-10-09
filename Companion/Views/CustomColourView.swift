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
                                    .opacity(0.2)
                            Image(systemName: "paintpalette")
                                .dynamicTypeSize(.xxLarge)
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        }
                        
                    }
                    Button(){
                        
                    } label: {
                        ZStack{
                            TopRoundedRectangle(cornerRadius: 20)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                    .opacity(0.6)
                            Image(systemName: "tshirt")
                                .dynamicTypeSize(.xxLarge)
                                .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                        }
                    }.offset(x:-8)
                }.offset(x:-94)
                
                ZStack{
                    GeometryReader { geometry in
                        CustomRoundedRectangle(width: geometry.size.width)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .opacity(0.2)

                    }.frame(height: 230)
                                                    
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
