//
//  ContentView.swift
//  WatchConnect
//
//  Created by Dan Smith on 23/03/2021.
//

import SwiftUI

struct ContentView: View {
	@StateObject var connectivity = Connectivity()

	var body: some View {

		VStack {
			Spacer()
			Text(connectivity.receivedText)
			Spacer()
			
			Button("Message", action: sendMessage)
			Button("Context", action: sendContext)
			Button("File", action: sendFile)
			Button("Complication", action: sendComplication)
			Spacer()
		}
	}

	func sendMessage() {

	}

	func sendContext() {

	}

	func sendFile() {

	}

	func sendComplication() {

	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
