//
//  FructusApp.swift
//  Fructus
//
//  Created by Rin on 2021/12/07.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnborading") var isOnborading: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnborading {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
