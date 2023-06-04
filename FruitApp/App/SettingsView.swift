//
//  SettingsView.swift
//  FruitApp
//
//  Created by Ehsan Rahimi on 6/4/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES

    @Environment(\.isPresented) var isPresented
    @Environment(\.dismiss) private var dismiss

    // MARK: - BODY

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1

                    GroupBox(
                        content: {
                            Divider()
                                .padding(.vertical, 4)
                            HStack(alignment: .center, spacing: 10) {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(9)
                                Text(" Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins,and much more.")
                                    .font(.footnote)
                            }
                        },
                        label: {
                            SettingLabelView(labelText: "fruit", labelImage: "info.circle")
                        }
                    ) // BOX

                    // MARK: - SECTION 2

                    // MARK: - SECTION 3
                } //: VSTACK
                .navigationTitle("Setting")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    }
                }

                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
