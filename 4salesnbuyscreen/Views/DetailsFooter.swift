//
//  DetailsFooter.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 7/12/23.
//

import SwiftUI

struct DetailsFooter: View {
    var body: some View {
        HStack{
            ButtonFill(name: "CALL", imageName: "phone.fill", imageWidth: 18,imageHeight:18, bgColor: Color.Primary , height: 60, width: 110, fontSize: 18, spacing: -25){
                // Your onClick action goes here
                print("CALL Button tapped!")
            }
            
            ButtonFill(name: "CHAT", imageName: "bubble.left.and.bubble.right.fill", imageWidth: 18,imageHeight:18, bgColor: Color.BtnGreen , height: 60, width: 110, fontSize: 18, spacing: -25){
                // Your onClick action goes here
                print("CHAT Button tapped!")
            }
            ButtonFill(name: "SMS", imageName: "captions.bubble.fill", imageWidth: 18,imageHeight:18, bgColor: Color.BtnGray , height: 60, width: 110, fontSize: 18, spacing: -25){
                // Your onClick action goes here
                print("SMS Button tapped!")
            }
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    DetailsFooter()
}
