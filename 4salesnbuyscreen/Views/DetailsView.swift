//
//  DetailsView.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 6/12/23.
//



import SwiftUI

struct DetailsView: View {
    let images = ["sclass", "civic", "m5", "gtr"]
    let customFrameSize = CGSize(width: 400, height: 250)
    let autoplayInterval = 5.0
    
    var body: some View {
        ScrollView{
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
            }

            .edgesIgnoringSafeArea(.all)
            
            //Image slider with action button------end
            DetailBody()

            
            
        }
//        .padding()
    }
}


struct DetailBody: View {
    var body: some View {
        //        HStack{
        VStack(alignment: .leading) {
            HStack{
                Text("Toyota")
                    .font(.system(size: 20))
                    .bold()
                Spacer()
                ButtonFill(name: "KD 90000")
                    .padding(10)
                    .frame(width: 150, height: 10)
                
            }
            VStack(alignment: .leading){
                HStack {
                    Image(systemName: "calendar")
                        .resizable()
                        .frame(width: 14, height: 14)
                    Text("6/12/2023 5:36PM Wed")
                        .font(.system(size: 14))
                }
                HStack{
                    ZStack{
                        Image(systemName: "viewfinder")
                            .resizable()
                            .frame(width: 14, height: 14)
                        Image(systemName: "eye")
                            .resizable()
                            .frame(width: 8, height: 6)
                    }
                    Text("229")
                        .font(.system(size: 14))
                        .bold()
                }
            }
            .padding(.top)
            .padding(.bottom)
            
            //
            
            VStack(alignment: .leading){
                Text("Details").bold()
                    .font(.system(size: 18))
                    .padding(.bottom, 5)
                Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage."
                    )
//                .multilineTextAlignment(.justified)
            }
            
            
            
        }
        .padding()
    }
}
#Preview {
    DetailsView()
}
