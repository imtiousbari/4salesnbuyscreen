//
//  ImageSlider.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 6/12/23.
//
// ImageSliderView => component

import SwiftUI

struct ImageSliderView: View {
    let images: [String]
    let frameSize: CGSize
    let autoplayInterval: Double
    
    @State private var currentIndex: Int = 0
    @State private var offset: CGFloat = 0
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(images.indices, id: \.self) { index in
                            Image(images[index])
                                .resizable()
                                .scaledToFit()
                                .frame(width: frameSize.width, height: frameSize.height)
                        }
                    }
                }
                .content.offset(x: -CGFloat(self.currentIndex) * geometry.size.width)
                .frame(width: geometry.size.width, height: frameSize.height, alignment: .leading)
                .gesture(DragGesture()
                    .onChanged { value in
                        self.offset = value.translation.width + -CGFloat(self.currentIndex) * geometry.size.width
                    }
                    .onEnded { value in
                        let dragThreshold: CGFloat = 50
                        let dragDistance = value.translation.width
                        let newIndex: Int
                        
                        if dragDistance > dragThreshold {
                            newIndex = max(self.currentIndex - 1, 0)
                        } else if dragDistance < -dragThreshold {
                            newIndex = min(self.currentIndex + 1, self.images.count - 1)
                        } else {
                            newIndex = self.currentIndex
                        }
                        
                        withAnimation {
                            self.currentIndex = newIndex
                            self.offset = -CGFloat(self.currentIndex) * geometry.size.width
                            //                            print("Current Image: \(self.images[self.currentIndex])")
                        }
                    }
                )
            }
            
            HStack {
                ForEach(images.indices, id: \.self) { index in
                    Circle()
                        .frame(width: 6, height: 6)
                        .foregroundColor(index == self.currentIndex ? Color.Primary : Color.white)
                        .onTapGesture {
                            withAnimation {
                                self.currentIndex = index
                                self.offset = -CGFloat(index) * frameSize.width
                                //                                print("Current Image: \(self.images[self.currentIndex])")
                            }
                        }
                }
            }
            .padding()
        }
        .frame(width: frameSize.width, height: frameSize.height)
        .onAppear {
            startTimer()
        }
    }
    
    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: autoplayInterval, repeats: true) { timer in
            withAnimation {
                self.currentIndex = (self.currentIndex + 1) % self.images.count
                self.offset = -CGFloat(self.currentIndex) * frameSize.width
//                print("Current Image: \(self.images[self.currentIndex])")
            }
        }
    }
}
