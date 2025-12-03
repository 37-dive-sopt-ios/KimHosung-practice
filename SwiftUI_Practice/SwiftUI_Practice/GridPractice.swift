//
//  GridPractice.swift
//  SwiftUI_Practice
//
//  Created by 김호성 on 2025.11.29.
//

import SwiftUI

struct GridPractice1: View {
    var body: some View {
        VStack {
            HStack {
                Text("A")
                Text("B")
            }
            HStack {
                Text("C")
                Text("D")
            }
        }
    }
}

struct GridPractice2: View {
    var body: some View {
        Grid {
            GridRow {
                Text("A")
                Text("B")
            }
            GridRow {
                Text("C")
                Text("D")
            }
        }
    }
}

struct GridPractice3: View {
    var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0) {
            GridRow {
                Text("Row 1").frame(width: 100)
                ForEach(0..<2) { _ in
                    RoundedRectangle(cornerRadius: 4).fill(.red).frame(width: 32, height: 32)
                }
            }
            GridRow {
                Text("Row 2")
                ForEach(0..<5) { _ in
                    RoundedRectangle(cornerRadius: 4).fill(.green).frame(width: 32, height: 32)
                }
            }
            GridRow {
                Text("Row 3")
                ForEach(0..<4) { _ in
                    RoundedRectangle(cornerRadius: 4).fill(.blue).frame(width: 32, height: 32)
                }
            }
        }
    }
}


#Preview {
    GridPractice3()
}
