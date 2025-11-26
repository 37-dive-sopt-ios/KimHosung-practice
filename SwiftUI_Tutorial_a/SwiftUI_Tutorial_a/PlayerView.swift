//
//  PlayerView.swift
//  SwiftUI_Tutorial_a
//
//  Created by 김호성 on 2025.11.22.
//

import SwiftUI

struct PlayerView: View {
    @State private var isPlaying: Bool = false // 이제 여기서 state를 생성합니다.

    var body: some View {
        VStack {
            PlayButton(isPlaying: $isPlaying) // 바인딩을 전달합니다.

            // ...
        }
    }
}


#Preview {
    PlayerView()
}
