//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jeffry Sandy Purnomo on 30/11/24.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			Text("Your content")
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.foregroundStyle(.white)
				.background(.red.gradient)
				.frame(width: .infinity, height: 500, alignment: .bottom)
		}
		.ignoresSafeArea()
	}
}

#Preview {
	ContentView()
}
