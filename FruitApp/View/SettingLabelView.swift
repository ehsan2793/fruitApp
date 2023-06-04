//
//  SettingLabelView.swift
//  FruitApp
//
//  Created by Ehsan Rahimi on 6/4/23.
//

import SwiftUI

struct SettingLabelView: View {
    // MARK: - PROPERTIES

    var labelText: String
    var labelImage: String

    // MARK: - BODY

    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "fruit", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
