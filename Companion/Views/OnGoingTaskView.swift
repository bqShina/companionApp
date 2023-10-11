//
//  OnGoingTaskView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 2/10/2023.
//

import SwiftUI

struct OnGoingTaskView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @StateObject var viewModel: EventFormViewModel = EventFormViewModel()
    @EnvironmentObject var eventStore: EventStore
    let task: String

    var body: some View {
        let contentColor: Color = colorScheme == .dark ? Color.white : Color.black
        ScrollView(.vertical){
            CustomNavigationBar(presentationMode: presentationMode, contentColor: contentColor, spacingNum: 80, title: "Companion")
                    
                    Image("dog")
                        .offset(y:20)
                    
                    Text("Current Task")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .offset(y:25)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width:331, height:115)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .opacity(0.2)
                            .offset(y:35)
                        
                        Text(task)
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .offset(y:35)
                        
                    }
                    
                    Text("Have you finished it?")
                        .padding()
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .offset(y:35)
                    
                    HStack(spacing: 60){
                        
                            NavigationLink(destination: UnFinishedTaskView()) {
                                Image(systemName: "multiply.circle")
                                    .font(.system(size: 35))
                                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            }.offset(y:35)
            
                        .simultaneousGesture(TapGesture().onEnded {
                            let newEvent = Event(eventType: .unfinished,
                                                 date: viewModel.date,
                                                 note: task)
                            if eventStore.events.count > 4 {
                                // update this event
                                eventStore.update(newEvent)
                            } else {
                                // create new event
                                
                                eventStore.add(newEvent)
                            }
                        })
                        
                     
                            NavigationLink(destination: FinishTaskView()) {
                                Image(systemName: "checkmark.circle")
                                    .font(.system(size: 35))
                                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            }
                            .offset(y: 35)
                      
                        .simultaneousGesture(TapGesture().onEnded {
                            let newEvent = Event(eventType: .finished,
                                                 date: viewModel.date,
                                                 note: task)
                            if eventStore.events.count > 4 {
                                // update this event
                                eventStore.update(newEvent)
                            } else {
                                // create new event
                                
                                eventStore.add(newEvent)
                            }
                        })
                    }
                    
                }
                
            }
        
                    
    }


#Preview {
    OnGoingTaskView(task: "Sing and dance to a song 🎶")
}
