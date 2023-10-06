//
//  WelcomeVideoView.swift
//  PraShina
//
//  Created by Xiaohan Qin on 6/10/2023.
//

import SwiftUI
import AVKit

struct WelcomeVideoView: View {
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "welcome", withExtension: "mov")!)
    @State var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                .ignoresSafeArea()
                .onAppear() {
                    player.play()
                }
        }
    }
}

#Preview {
    WelcomeVideoView()
}
