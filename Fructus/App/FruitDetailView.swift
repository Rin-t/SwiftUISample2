//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Rin on 2021/12/11.
//

import SwiftUI

struct FruitDetailView: View {

    var fruit: Fruit

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // header
                    FruitHeaderView(fruit: fruit)

                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])

                        // head line
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)

                        FruitNutrientsView(fruit: fruit)


                        // subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])

                        // description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)

                        // link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//: Vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: Scroll
            .edgesIgnoringSafeArea(.top)
        } //: Navigation
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 11 Pro")
    }
}
