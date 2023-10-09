//
//  CustomTabView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 6/10/2023.
//

import SwiftUI

enum Tabs: Int {
    case home = 0
    case onGoingTask = 1
    case history = 2
    case setting = 3
}

struct CustomTabView: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var tabSelection: Int
    
    let tabBarItems: [(image: String, title: String)] = [
        ("pawprint", "home"),
        ("checklist", "Ongoing task"),
        ("calendar", "history"),
        ("gearshape", "setting")
    ]
    
    
    
    var body: some View {
        let unSelectedColor: Color = colorScheme == .dark ? .white : .black
        
        ZStack() {
            HStack(spacing: 45){
                ForEach(0..<4) { index in
                    Button {
                        tabSelection = index + 1
                    } label: {
                        VStack(spacing: 8) {
                            Spacer()
                            Image(systemName: tabBarItems[index].image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                
                            
                            Text(tabBarItems[index].title)
                                .font(.caption)
                        }
                        .foregroundColor(index + 1 == tabSelection ? .accentColor : unSelectedColor)
                    }
                    
                }
            }
            .frame(height: 80)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    CustomTabView(tabSelection: .constant(1))
        .previewLayout(.sizeThatFits)
        .padding(.vertical)
}
