//
//  Contacts.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 10/12/23.
//

import SwiftUI

struct ContactButton: View {
    let imageName: String
    let buttonText: String
    let isSystemImage: Bool
    let action: () -> Void

    var body: some View {
        VStack {
            if isSystemImage {
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
            } else {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
            }

            Text(buttonText)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: 14))
        }
        .onTapGesture {
            action()
        }
    }
}

//struct ContactButton: View {
//    let imageName: String
//    let buttonText: String
//    let action: () -> Void
//
//    var body: some View {
//        VStack {
//            Image(systemName: imageName)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 20, height: 20)
//                .foregroundColor(.white)
//                
//
//            Text(buttonText)
//                .foregroundColor(.white) 
//                .fontWeight(.bold)
////                .font(.system(size: 14))
////                .padding(.top, 5)
//        }
////        .padding(10)
//        .onTapGesture {
//            action()
//        }
//    }
//}

struct ContactButtonView: View {
    var body: some View {
        VStack {

            ContactButton(imageName: "heart.fill", buttonText: "Like", isSystemImage: true) {
                print("Button Clicked - Like")
                // Add your action here
            }

            ContactButton(imageName: "message.fill", buttonText: "Comment", isSystemImage: true) {
                print("Button Clicked - Comment")
                // Add your action here
            }
            
            
        }
        .padding()
        .background(.black)
    }
}
#Preview {
    ContactButtonView()
}
