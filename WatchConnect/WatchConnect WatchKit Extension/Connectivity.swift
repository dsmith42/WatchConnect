//
//  Connectivity.swift
//  WatchConnect
//
//  Created by Dan Smith on 23/03/2021.
//

import SwiftUI
import WatchConnectivity

class Connectivity: NSObject, ObservableObject, WCSessionDelegate {
	@Published var receivedText = ""

	override init() {
		super.init()

		if WCSession.isSupported() {
			let session = WCSession.default
			session.delegate = self
			session.activate()
		}
	}

	// MARK: - WCSessionDelegate Methods -
	// MARK: iOS
	#if os(iOS)
	func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
		DispatchQueue.main.async {
			if activationState == .activated {
				if session.isWatchAppInstalled {
					self.receivedText = "Watch app is installed!"
				}
			}
		}
	}

	func sessionDidBecomeInactive(_ session: WCSession) {

	}

	func sessionDidDeactivate(_ session: WCSession) {

	}

	// MARK: WatchOS
	#else
	func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {

	}
	#endif
}
