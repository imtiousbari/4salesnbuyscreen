//
//  DetailsHeader.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 7/12/23.
//

import SwiftUI

struct DetailsHeader: View {
    var body: some View {
        HStack {
            RoundedButton(action: {
                // Custom action
                print("Back Button tapped!")
            }, imageName: "arrow.left")
            Spacer()
            RoundedButton(action: {
                // Custom action
                print("Share Button tapped!")
            }, imageName: "square.and.arrow.up")
            
            RoundedButton(action: {
                // Custom action
                print("Fav Button tapped!")
            }, imageName: "heart")
        }
        .padding()
    }
}

#Preview {
    DetailsHeader()
}
