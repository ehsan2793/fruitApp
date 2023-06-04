//
//  FruitNutrientsView.swift
//  FruitApp
//
//  Created by Ehsan Rahimi on 6/4/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES

    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    // MARK: - BODY

    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                Text("Hl")
            }
        } //: BOX
    }
}

// MARK: - PREVIEW

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
