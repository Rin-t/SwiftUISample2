//
//  Onboarding.swift
//  Fructus
//
//  Created by Rin on 2021/12/08.
//

import SwiftUI

struct OnboardingView: View {

    var fruits: [Fruit] = fruitsData

    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCordView(fruit: item)
            }

        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
