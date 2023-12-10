//
//  ImageSliderAddView.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 10/12/23.
//

import SwiftUI

struct ImageSliderAddView: View {
    let images: [String]
    
    @State private var currentIndex = 0
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Text("\(currentIndex + 1)/\(images.count)")
                    .foregroundColor(.white)
                    .padding(10)
            }
            ImageCarouselView(images: images, currentIndex: $currentIndex)
                .padding(.bottom, 50)
                .edgesIgnoringSafeArea(.all)
            
            Spacer()
            
            
        }
    }
}

struct ImageCarouselView: View {
    let images: [String]
    @Binding var currentIndex: Int
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<images.count, id: \.self) { index in
                Image(images[index])
                    .resizable()
                    .scaledToFit()
                    .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .onChange(of: currentIndex) { _ in
            // Handle index change if needed
        }
    }
}

struct AddViewCom: View {
    let imageArray = ["Pm5", "r35", "civic", "sclass"]
    
    var body: some View {
        ImageSliderAddView(images: imageArray)
    }
}

#Preview {
    AddViewCom()
}
