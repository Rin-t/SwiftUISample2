//
//  ContentView.swift
//  Fructus
//
//  Created by Rin on 2021/12/07.
//

import SwiftUI

struct ContentView: View {

    var fruit: [Fruit] = fruitsData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
