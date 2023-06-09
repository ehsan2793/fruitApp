//
//  StartButtonView.swift
//  FruitApp
//
//  Created by Ehsan Rahimi on 6/3/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PORPERTIES

    @AppStorage("isOnboarding") var isOnboarding: Bool?

    // MARK: - BODY

    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(alignment: .center, spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .tint(.white) // this will force white color, no matter if user changes its setting to dark or light
    }
}

// MARK: - PREVIEW

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
