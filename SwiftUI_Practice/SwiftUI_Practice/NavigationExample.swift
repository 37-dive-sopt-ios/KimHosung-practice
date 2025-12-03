//
//  NavigationExample.swift
//  SwiftUI_Practice
//
//  Created by 김호성 on 2025.11.29.
//

import SwiftUI

struct NavigationExample: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    DetailView()
                } label: {
                    Label("Work Folder", systemImage: "folder")
                }
                
                NavigationLink("Teal") {
                    DetailView()
                }
                .navigationTitle("aa")
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("detailView")
    }
}

#Preview {
    NavigationExample()
}
