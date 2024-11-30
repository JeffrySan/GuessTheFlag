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
			LinearGradient(
				colors: [
					.white,
					.black
				],
				startPoint: .top,
				endPoint: .bottom
			)
			.frame(width: .infinity, height: 300, alignment: .center)
			LinearGradient(
				stops: [
					Gradient.Stop(color: .white, location: 0.3),
					Gradient.Stop(color: .black, location: 0.9),
				],
				startPoint: .top,
				endPoint: .bottom
			)
			.frame(width: .infinity, height: 300, alignment: .center)
//			VStack(spacing: 0) {
//				Color.red
//				Color.blue
//			}
//			.frame(width: .infinity, height: 300, alignment: .center)
			Text("Your content")
				.foregroundStyle(.secondary)
				.padding(50)
				.background(.ultraThinMaterial)
		}
		.ignoresSafeArea()
	}
}

#Preview {
	ContentView()
}
