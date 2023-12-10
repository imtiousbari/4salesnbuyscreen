//
//  StoryView.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 10/12/23.
//

import SwiftUI

struct StoryView: View {
    let stories: [Story] = [
        Story(image: "gtr"),
        Story(image: "sclass"),
        Story(image: "Pm5"),
        Story(image: "r35"),
    ]

    @State private var currentIndex = 0
    @State private var elapsedTime: Double = 0
    @State private var isPlaying = true

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            VStack {
                ProgressBar(elapsedTime: $elapsedTime)
                    .frame(height: 4)
                    .padding(.top)

                Image(stories[currentIndex].image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .onAppear {
                        startTimer()
                    }

                HStack {
                    Spacer()
                    Text("\(Int(elapsedTime))s")
                        .foregroundColor(.white)
                        .padding()
                        .frame(height: 40)

                    Slider(value: $elapsedTime, in: 0...10, onEditingChanged: { editing in
                        if editing {
                            stopTimer()
                        } else {
                            startTimer()
                        }
                    })
                    .padding(.trailing)
                    .accentColor(.white)
                }
            }
        }
    }

    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            elapsedTime += 1
            if elapsedTime >= 10 {
                nextStory()
            }
        }
    }

    func stopTimer() {
        elapsedTime = 0
    }

    func nextStory() {
        currentIndex = (currentIndex + 1) % stories.count
        stopTimer()
        startTimer()
    }
}

struct Story {
    let image: String

    init(image: String) {
        self.image = image
        determineOrientation()
    }

    var isPortrait: Bool = false

    private mutating func determineOrientation() {
        if let uiImage = UIImage(named: image) {
            isPortrait = uiImage.size.height > uiImage.size.width
        }
    }
}

struct ProgressBar: View {
    @Binding var elapsedTime: Double

    var body: some View {
        GeometryReader { geometry in
            RoundedRectangle(cornerRadius: 2)
                .foregroundColor(.white)
                .frame(width: geometry.size.width * CGFloat(elapsedTime / 10), height: geometry.size.height)
                .animation(.linear(duration: 1))
        }
    }
}

#Preview {
    StoryView()
}
