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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

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

                    GroupBox(
                        content: {
                            Divider()
                                .padding(.vertical, 4)
                            Text(" If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.secondary)
                                }
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                        },
                        label: {
                            SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                        }
                    )

                    // MARK: - SECTION 3

                    GroupBox(content: {
                        SettingsRowView(name: "Developer", content: "Ehsan")
                        SettingsRowView(name: "Designer", content: "Ehsan Rahimi")
                        SettingsRowView(name: "Compatibility", content: "IOS 16.4")
                        SettingsRowView(name: "Website", linkLabel: "Ehsan Apps", linkDestination: "ehsan-rahimi-protfolio.netlify.app")
                        SettingsRowView(name: "Twitter", linkLabel: "@EhsanR", linkDestination: "twitter.com/ehsanr")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }, label: {
                        SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    })
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
//            .preferredColorScheme(.dark)
    }
}
