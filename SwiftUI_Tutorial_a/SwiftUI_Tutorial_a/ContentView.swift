//
//  ContentView.swift
//  SwiftUI_Tutorial_a
//
//  Created by 김호성 on 2025.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ChatList(chatRooms: ChatRoomModel.mockData)
    }
}

#Preview {
    ContentView()
}
