//
//  DestinationView.swift
//  SwiftUI_Practice
//
//  Created by 김호성 on 2025.11.29.
//

import SwiftUI

struct DestinationView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Teal") {
                ColorDetail(color: .teal)
            }
            
            NavigationLink {
                ColorDetail(color: .teal)
            } label: {
                Label("Work Folder", systemImage: "folder")
            }
            
            .navigationTitle("Colors")
        }
    }
}

struct ColorDetail: View {
    var color: Color

    var body: some View {
        color.navigationTitle(color.description)
    }
}

#Preview {
    DestinationView()
}
