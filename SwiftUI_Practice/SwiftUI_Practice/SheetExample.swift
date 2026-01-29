//
//  SheetExample.swift
//  SwiftUI_Practice
//
//  Created by 김호성 on 2025.11.29.
//

import SwiftUI

struct SheetExample: View {
    
    @State private var show = false
    
    var body: some View {
        VStack {
            Text("응응")
            
            Button("시트") {
                show = true
            }
        }
        .sheet(isPresented: $show, onDismiss: {
//            show = false
        }, content: {
            SheetView()
        })
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("시트 화면")
                .font(.largeTitle)

            Button("닫기") {
                dismiss()
            }
        }
    }
}

#Preview {
    SheetExample()
}
