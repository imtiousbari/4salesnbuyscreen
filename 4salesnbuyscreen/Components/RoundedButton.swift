//
//  RoundedButton.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 6/12/23.
//
// RoundedButton => component

import SwiftUI

struct RoundedButton: View {
    var action: () -> Void
    var imageName: String
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(10)
                .background(Color.LoginBG)
                .foregroundColor(.black)
                .clipShape(Circle())
                .shadow(radius: 1)
        }
    }
}

struct RoundButton: View {
    var body: some View {
        VStack {
            // Example usage of the RoundedButton component
            RoundedButton(action: {
                // Custom action
                print("Button tapped!")
            }, imageName: "star.fill")
        }
        
    }
}




#Preview {
    RoundButton()
}
