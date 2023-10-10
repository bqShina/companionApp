//
//  HistoryView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 9/10/2023.
//

import SwiftUI
import UIKit

struct HistoryView: View {
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var eventStore: EventS
    
    var body: some View {
        let contentColor: Color = colorScheme == .dark ? Color.white : Color.black
        VStack {
            Text("History")
                .font(.system(size: 24))
                .fontWeight(.bold)
                .foregroundColor(contentColor)
            
            ZStack {
                Image("glow-title")
                HStack(spacing: 80) {
                    Image("small_dog")
                    Text("Activities status")
                        .font(.system(size: 18))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(contentColor)
                }
                .frame(width: 343, height: 76)
                .background(Color(red: 0.52, green: 0.51, blue: 0.51).opacity(0.3))
                .cornerRadius(25)
            }
            .frame(width: 387, height: 93)
            
            CalendarView(interval: DateInterval(start: .distantPast, end: .distantFuture), eventStore: eventStore)
//                .padding(.horizontal)
        }
    }
}

#Preview {
    HistoryView()
}





struct CalendarView: UIViewRepresentable {
    let interval: DateInterval
    @ObservedObject var eventStore: EventStore
    func makeUIView(context: Context) -> UICalendarView {
        let view = UICalendarView()
        view.calendar = Calendar(identifier: .gregorian)
        view.availableDateRange = interval
        return view
    }
    
    func updateUIView(_ uiView: UICalendarView, context: Context) {
        
    }
}
