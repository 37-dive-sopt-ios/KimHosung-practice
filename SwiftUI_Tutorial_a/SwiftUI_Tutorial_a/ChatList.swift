//
//  ChatList.swift
//  SwiftUI_Tutorial_a
//
//  Created by 김호성 on 2025.11.22.
//

import SwiftUI

struct ChatList: View {
    
    let chatRooms: [ChatRoomModel]
    
    var body: some View {
        List(chatRooms) { chatRoom in
            ChatRow(chatRoom: chatRoom)
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.visible)
        }
        .listStyle(.plain)
    }
}

#Preview {
    ChatList(chatRooms: ChatRoomModel.mockData)
}
