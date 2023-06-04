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
                    VStack(alignment: .leading, spacing: 20) {
                        //: TITLE
                        Text(furit.title)

                        //: HEADLINE

                        //: NUTRIENTS

                        //: SUBHEADLINE

                        //: DESCRIPTION

                        //: LINK
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
            } //: SCROLL
        } //: NAVIGATION
    }
}

// MARK: PREVIEW

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(furit: fruitsData[0])
    }
}
