//
//  AppIntent.swift
//  companionWidget
//
//  Created by Anne Elvira on 11/10/2023.
//

import WidgetKit
import AppIntents

struct ConfigurationAppIntent: WidgetConfigurationIntent {
    static var title: LocalizedStringResource = "Configuration"
    static var description = IntentDescription("This is an example widget.")
//    static var tasks: [String] = ["Listen to some music 🎵", "Binge your favourite movie 🎬", "Sing and dance to a song 🎶", "Running for 1 hour 🏃"]

    // An example configurable parameter.
    @Parameter(title: "Companion", default: "Hey, let's pause a bit!")
    var favoriteEmoji: String
}
