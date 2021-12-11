//
//  FruitModel.swift
//  Fructus
//
//  Created by Rin on 2021/12/11.
//

import SwiftUI

//MARK: - Fruite Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
