//
//  AddView.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 10/12/23.
//

import SwiftUI


struct AddView: View {
    let imageArray = ["Pm5", "r35", "civic", "sclass", "m5", "gtr"]
    
    var body: some View {
        ZStack(alignment: .bottom){
            ImageSliderAddView(images: imageArray)
                .padding(.top)
            HStack(alignment: .bottom){
                ProfileView()
                Spacer()
                Contacts()
            }
            .padding(10)
            .padding(.bottom, 20)
            
        }
        .background(.black)
    }
}
struct Contacts: View {
    var body: some View {
        VStack{
            ContactButton(imageName: "phone.circle.fill", buttonText: "Call", isSystemImage: true) {
                print("Button Clicked - call")
                // Add your action here
            }
            ContactButton(imageName: "whatsapp", buttonText: "Chat", isSystemImage: false) {
                print("Button Clicked - call")
                // Add your action here
            }
            ContactButton(imageName: "hand.thumbsup.circle.fill", buttonText: "0", isSystemImage: true) {
                print("Button Clicked - call")
                // Add your action here
            }
            ContactButton(imageName: "eye.fill", buttonText: "999", isSystemImage: true) {
                print("Button Clicked - call" )
                // Add your action here
            }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        HStack(spacing: 8) {
            Image("sclass")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 4) {
                HStack{
                    Image(systemName: "person.fill")
                        .foregroundColor(.white)
                    Text("John Doe")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                }
                
                HStack{
                    Image("location")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Text("123 Main Street, City")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                
            }
        }
        .padding(16)

        .cornerRadius(10)
        .shadow(radius: 3)
    }
}

#Preview {
    AddView()
}
