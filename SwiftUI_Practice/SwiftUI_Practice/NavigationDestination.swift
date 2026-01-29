//
//  NavigationDestination.swift
//  SwiftUI_Practice
//
//  Created by 김호성 on 2025.11.29.
//

import SwiftUI

struct NavigationDestination: View {
    var body: some View {
        NavigationStack {
            NavigationLink("첫번째 버튼", value: "하이")
            NavigationLink("두번째 버튼", value: "뿡")
            
            NavigationLink {
                ColorDetail(color: .teal)
            } label: {
                Label("Work Folder", systemImage: "folder")
            }
            
            .navigationTitle("Colors")
            .navigationDestination(for: String.self) { value in
                TextView(text: value)
            }
        }
    }
}

struct TextView: View {
    var text: String
    
    var body: some View {
        Text(text)
    }
}

#Preview {
    NavigationDestination()
}
