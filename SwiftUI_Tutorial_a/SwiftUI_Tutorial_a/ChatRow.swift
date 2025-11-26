//
//  ChatRow.swift
//  SwiftUI_Tutorial_a
//
//  Created by 김호성 on 2025.11.22.
//

import SwiftUI

struct ChatRow: View {
    
    let chatRoom: ChatRoomModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            ZStack {
                Circle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 50, height: 50)

                if let profileImage = chatRoom.profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                } else {
                    Image(.profile)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.gray)
                }
            }
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    HStack(alignment: .center, spacing: 4) {
                        Text(chatRoom.name)
                        Text(chatRoom.location)
                            .foregroundStyle(.gray)
                    }
                    Text(chatRoom.lastMessage)
                }
                
                Spacer()
                
                if let thumbnail = chatRoom.thumbnail {
                    thumbnail
                        .resizable()
                        .cornerRadius(4)
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(.white)
    }
}

#Preview {
    ChatRow(chatRoom: ChatRoomModel.mockData[0])
}
