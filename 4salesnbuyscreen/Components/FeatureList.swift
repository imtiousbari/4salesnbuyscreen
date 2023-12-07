//
//  FeatureList.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 7/12/23.
//

import SwiftUI

struct FeatureList: View {
    var imageName: String
    var text1: String
    var text2: String
//    var imageSize: CGFloat


    init(imageName: String, text1: String, text2: String) {
        self.imageName = imageName
        self.text1 = text1
        self.text2 = text2
//        self.imageSize = imageSize


    }

    var body: some View {
            HStack {
                ZStack{
                    Circle()
                        .fill(Color.Primary).opacity(0.2)
                                        .frame(width:  50, height: 50)
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.Primary)
                }
                
                Text(text1).bold()
                    .font(.body)
                    .foregroundColor(.black)
                Spacer()
                Text(text2)
                    .font(.body)
                    .foregroundColor(.black)
            }
            .padding()
            .background(Color.white)
                    .cornerRadius(10)
    }
}

struct FeatureListView: View {
    var body: some View {
        VStack {
            FeatureList(imageName: "heart.fill", text1: "Likes", text2: "100")
//            FeatureList(imageName: "star.fill", text1: "Rating", text2: "4.5")
        }
        .padding()
        .background(Color.LoginBG)

    }
}

#Preview {
    FeatureListView()
}
