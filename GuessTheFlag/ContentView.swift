//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jeffry Sandy Purnomo on 30/11/24.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		ZStack(alignment: .bottom) {
			Color.red
				.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
			Text("This is inside a stack")
				.padding()
				.background(.blue)
			Text("Hello, world!")
				.background(.yellow)
		}
	}
}

#Preview {
	ContentView()
}
