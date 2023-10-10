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

    @EnvironmentObject var eventStore: EventStore

    
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
        .environmentObject(EventStore(preview: true))
}





struct CalendarView: UIViewRepresentable {
    
    
    let interval: DateInterval

    @ObservedObject var eventStore: EventStore
    

    func makeUIView(context: Context) -> UICalendarView {
        let view = UICalendarView()
        view.delegate = context.coordinator
        view.calendar = Calendar(identifier: .gregorian)
        view.availableDateRange = interval
        return view
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self, eventStore: _eventStore)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
        
    class Coordinator: NSObject, UICalendarViewDelegate {
        var parent: CalendarView
        @ObservedObject var eventStore: EventStore
        init(parent: CalendarView, eventStore: ObservedObject<EventStore>) {
            self.parent = parent
            self._eventStore = eventStore
        }
        
        @MainActor
        func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
            
            let foundEvents = eventStore.events
                .filter {$0.date.startOfDay == dateComponents.date?.startOfDay}
            if foundEvents.isEmpty { return nil }
            
//            if foundEvents.count > 1 {
//                return .image(UIImage(systemName: "doc.on.doc.fill"),
//                              color: .red,
//                              size: .large)
//            }
            let singleEvent = foundEvents.first!
            return .customView {
                let icon = UILabel()
                icon.text = singleEvent.eventType.icon
                return icon
            }
        }
    }
    
}

extension Date {
    func diff(numDays: Int) -> Date {
        Calendar.current.date(byAdding: .day, value: numDays, to: self)!
    }
    
    var startOfDay: Date {
        Calendar.current.startOfDay(for: self)
    }
}
