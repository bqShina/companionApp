//
//  ListViewRow.swift
//  companion
//
//  Created by Anne Elvira on 10/10/2023.
//

import SwiftUI

struct ListViewRow: View {
    let event: Event
    @Binding var formType: EventFormType?
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(event.eventType.icon)
                        .font(.system(size: 40))
                    Text(event.note)
                }
                Text(
                    event.date.formatted(date: .abbreviated,
                                         time: .shortened)
                )
            }
            Spacer()
            Button {
                formType = .update(event)
            } label: {
                Text("Edit")
            }
            .buttonStyle(.bordered)
        }
    }
}

 struct ListViewRow_Previews: PreviewProvider {
     static let event = Event(eventType: .finished, date: Date(), note: "Let's party")
    static var previews: some View {
        ListViewRow(event: event, formType: .constant(.new))
    }
 }
