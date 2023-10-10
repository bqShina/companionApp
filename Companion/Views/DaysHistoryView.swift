//
//  DaysHistoryView.swift
//  companion
//
//  Created by Anne Elvira on 10/10/2023.
//

import SwiftUI

struct DaysHistoryView: View {
    @EnvironmentObject var eventStore: EventStore
    @Binding var dateSelected: DateComponents?
    
    var body: some View {
        Group {
            if let dateSelected {
                let foundEvents = eventStore.events
                    .filter {$0.date.startOfDay == dateSelected.date!.startOfDay}
                List {
                    ForEach(foundEvents) { event in
//                        ListViewRow(event: event, formType: $formType)
//                            .swipeActions {
//                                Button(role: .destructive) {
//                                    eventStore.delete(event)
//                                } label: {
//                                    Image(systemName: "trash")
//                                }
//                            }
//                            .sheet(item: $formType) { $0 }
                    }
                }
            }
        }
        .navigationTitle(dateSelected?.date?.formatted(date: .long, time: .omitted) ?? "")
    }
}

//#Preview {
//    DaysHistoryView(dateSelected: .constant(dateComponents))
//        .environmentObject(EventStore(preview: true)
//        )
//}

struct DaysHistoryView_Previews: PreviewProvider {
    static var dateComponents: DateComponents {
        var dateComponents = Calendar.current.dateComponents(
            [.month,
             .day,
             .year,
             .hour,
             .minute],
            from: Date())
        dateComponents.timeZone = TimeZone.current
        dateComponents.calendar = Calendar(identifier: .gregorian)
        return dateComponents
    }
    static var previews: some View {
        DaysHistoryView(dateSelected: .constant(dateComponents))
            .environmentObject(EventStore(preview: true)
            )
    }
}
