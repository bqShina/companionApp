//
//  Event.swift
//  companion
//
//  Created by Anne Elvira on 10/10/2023.
//

import Foundation

struct Event: Identifiable {
    enum EventType: String, Identifiable, CaseIterable {
        case finished, unfinished, unspecified
        var id: String {
            self.rawValue
        }

        var icon: String {
            switch self {
            case .finished:
                return "✅"
            case .unfinished:
                return "❌"
//            case .social:
//                return "🎉"
//            case .sport:
//                return "🏟"
            case .unspecified:
                return "❓"
//            case .work:
//                return "🏟"
//            case .home:
//                return "🏟"
            }
        }
    }

    var eventType: EventType
    var date: Date
    var note: String
    var id: String
    
    var dateComponents: DateComponents {
        var dateComponents = Calendar.current.dateComponents(
            [.month,
             .day,
             .year,
             .hour,
             .minute],
            from: date)
        dateComponents.timeZone = TimeZone.current
        dateComponents.calendar = Calendar(identifier: .gregorian)
        return dateComponents
    }

    init(id: String = UUID().uuidString, eventType: EventType = .unspecified, date: Date, note: String) {
        self.eventType = eventType
        self.date = date
        self.note = note
        self.id = id
    }

    // Data to be used in the preview
    static var sampleEvents: [Event] {
        return [
            Event(eventType: .finished, date: Date().diff(numDays: 0), note: "Walk the dog."),
//            Event(date: Date().diff(numDays: -1), note: "Get gift for Emily"),
            Event(eventType: .finished, date: Date().diff(numDays: -6), note: "Get some desserts."),
            Event(eventType: .finished, date: Date().diff(numDays: -2), note: "Binge your favourite movie."),
            Event(date: Date().diff(numDays: -1), note: "Take a jog for 25 minutes."),
            Event(eventType: .unfinished, date: Date().diff(numDays: -3), note: "Sing in the shower."),
            Event(eventType: .finished,date: Date().diff(numDays: -4), note: "Play some retro games.")
        ]
    }
}
