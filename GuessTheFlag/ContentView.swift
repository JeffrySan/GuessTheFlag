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
			Text("Hello, world!")
			Text("This is inside a stack")
				.padding()
		}
	}
}

#Preview {
	ContentView()
}
