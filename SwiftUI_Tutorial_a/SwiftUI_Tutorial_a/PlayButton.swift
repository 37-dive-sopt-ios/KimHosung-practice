//
//  PlayButton.swift
//  SwiftUI_Tutorial_a
//
//  Created by 김호성 on 2025.11.22.
//

import SwiftUI

struct PlayButton: View {
    @Binding var isPlaying: Bool // Create the state.

    var body: some View {
        Button(isPlaying ? "Pause" : "Play") { // Read the state.
            isPlaying.toggle() // Write the state.
        }
    }
}
