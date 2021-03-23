//
//  ContentView.swift
//  WatchConnect WatchKit Extension
//
//  Created by Dan Smith on 23/03/2021.
//

import SwiftUI

struct ContentView: View {
	@StateObject var connectivity = Connectivity()

	var body: some View {
		VStack {
			Text(connectivity.receivedText)
			Spacer()
			Button("Message", action: sendMessage)
		}
	}

	func sendMessage() {

	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
