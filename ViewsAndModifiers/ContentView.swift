//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Yves Alikalfic on 2025-05-04.
//

import SwiftUI

struct LargeBlueFont: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}

extension View {
    func LargeBlueFontStyle() -> some View {
        modifier(LargeBlueFont())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This is a large blue font!")
                .LargeBlueFontStyle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
