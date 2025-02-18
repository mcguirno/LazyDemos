//
//  ContentView.swift
//  LazyDemos
//
//  Created by Noah McGuire on 2/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var columns = [
        GridItem(.flexible(maximum: 110)),
        GridItem(.flexible(maximum: 200))
    ]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: columns) {
                ForEach(0..<1000) { i in
                    let _ = print("Dang \(i)")
                    RedAndCyanView()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct RedAndCyanView: View {
    var body: some View {
        ZStack {
            Color(.red)
            Rectangle()
                .fill(.cyan)
                .frame(width: 100, height: 100)
        }
    }
}
