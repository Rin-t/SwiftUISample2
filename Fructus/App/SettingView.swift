//
//  SettingView.swift
//  Fructus
//
//  Created by Rin on 2021/12/17.
//

import SwiftUI

struct SettingView: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // Mark: - SECTION1
                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)

                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)

                            Text("Most fruits are naturally low infat, sodium, nad calories. None have cholesterol. fruits are sources of many essensials, including potassium dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    // Mark: - SECTION2
                    // Mark: - SECTION3

                }
                .navigationBarTitle(Text("Setting"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })

                )
                .padding()
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
