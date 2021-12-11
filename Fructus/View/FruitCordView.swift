//
//  FruitCordView.swift
//  Fructus
//
//  Created by Rin on 2021/12/08.
//

import SwiftUI

struct FruitCordView: View {
    //MARK: - Propaties

    var fruit: Fruit
    @State private var isAnimating = false

    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black, radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // Fruit: Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // Fruite: headline
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // button: Start

                StartButtonView()
            } //: Vstack
        } //: Zstac
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK: - review

struct FruitCordView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCordView(fruit: fruitsData[5])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
