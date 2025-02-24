//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jeffry Sandy Purnomo on 30/11/24.
//

import SwiftUI

struct ContentView: View {
	
	@State private var countryList: [String] = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
	@State private var correctAnswer = Int.random(in: 0...2)
	@State private var showingAlert = false
	@State private var score: Int = 0
	
	var body: some View {
		ZStack {
			RadialGradient(
				stops: [
					.init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
					.init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
				],
				center: .top,
				startRadius: 200,
				endRadius: 700
			)
			.ignoresSafeArea()
			
			VStack {
				Text("Guess the Flag")
					.font(.title.weight(.bold))
					.foregroundColor(.white)
				VStack(spacing: 30) {
					VStack {
						Text("Tap the flag of")
							.font(.subheadline.weight(.heavy))
							.foregroundColor(.secondary)
						Text(countryList[correctAnswer])
							.font(.title.weight(.bold))
					}
					
					ForEach(0 ..< 3) { number in
						Button(action: {
							DispatchQueue.global(qos: .background).async {
								flagTapped(number)
							}
						}) {
							Image(countryList[number])
								.clipShape(.capsule)
								.shadow(radius: 5)
						}
					}
				}
				.frame(maxWidth: .infinity)
				.padding(.vertical, 20)
				.background(.regularMaterial)
				.clipShape(.rect(cornerRadius: 20))
				
				Text("Score: \(score)")
					.foregroundColor(.white)
					.font(.title.bold())
					.padding()
			}
			.padding()
		}
		.alert(
			"Wrong Answer!",
			isPresented: $showingAlert) {
				Button("OK") { }
			}
	}
	
	func flagTapped(_ number: Int) {
		if number == correctAnswer {
			score += 100
			countryList.shuffle()
			correctAnswer = Int.random(in: 0...2)
		} else {
			showingAlert = true
		}
	}
}

#Preview {
	ContentView()
}
