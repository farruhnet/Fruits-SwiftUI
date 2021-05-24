//
//  FruitsApp.swift
//  Fruits
//
//  Created by Farrukh Makhmudov on 2021/5/24.
//

import SwiftUI

@main
struct FruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView(fruits: fruitsData)
            }else {
                ContentView()
            }
            
        }
    }
}
