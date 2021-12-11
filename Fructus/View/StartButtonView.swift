//
//  StartButtonView.swift
//  Fructus
//
//  Created by Rin on 2021/12/08.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - propaties
    @AppStorage("isOnborading") var isOnborading: Bool?

    //MARK: - body
    var body: some View {
        Button {
            isOnborading = false
        } label: {
            HStack {
                Text("Start")

                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)

    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
