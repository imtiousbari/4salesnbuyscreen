//
//  DetailsView.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 6/12/23.
//



import SwiftUI

struct DetailsView: View {
    let images = ["sclass", "civic", "m5", "gtr"]
    let customFrameSize = CGSize(width: 500, height: 300)
    let autoplayInterval = 5.0
    
    var body: some View {
        ZStack(alignment: .top) {
            ImageSliderView(images: images, frameSize: customFrameSize, autoplayInterval: autoplayInterval)
            
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
            .padding(.leading,50)
            .padding(.trailing,50)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    DetailsView()
}
