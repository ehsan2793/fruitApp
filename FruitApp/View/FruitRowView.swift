//
//  FruitRowView.swift
//  FruitApp
//
//  Created by Ehsan Rahimi on 6/3/23.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - PROPERTIES

    var furit: Fruit

    // MARK: - BODY

    var body: some View {
        HStack {
            Image(furit.image)
                .renderingMode(.original) // this prevents the image to be colorrise by the system link color when added to list (avoid system setting)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: furit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(furit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(furit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(furit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
