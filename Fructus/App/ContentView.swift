//
//  ContentView.swift
//  Fructus
//
//  Created by Rin on 2021/12/07.
//

import SwiftUI

struct ContentView: View {

    @State private var isShowingSettings: Bool = false

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
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings) {
                        SettingView()
                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
