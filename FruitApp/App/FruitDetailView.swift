//
//  FruitDetailView.swift
//  FruitApp
//
//  Created by Ehsan Rahimi on 6/4/23.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES

    var furit: Fruit

    // MARK: - BODY

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //: HEADER
                    FruitHeaderView(fruit: furit)
                    VStack(alignment: .leading, spacing: 20) {
                        //: TITLE
                        Text(furit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(furit.gradientColors[1])

                        //: HEADLINE
                        Text(furit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)

                        //: NUTRIENTS

                        //: SUBHEADLINE
                        Text("Learn more about \(furit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(furit.gradientColors[1])

                        //: DESCRIPTION
                        Text(furit.description)
                            .multilineTextAlignment(.leading)

                        //: LINK
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationTitle(furit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

// MARK: PREVIEW

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(furit: fruitsData[0])
    }
}
