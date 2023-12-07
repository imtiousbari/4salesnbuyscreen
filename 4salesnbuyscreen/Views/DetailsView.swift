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
        VStack(spacing: -5) {
            ScrollView{
                ZStack(alignment: .top) {
                    ImageSliderView(images: images, frameSize: customFrameSize, autoplayInterval: autoplayInterval)
                    DetailsHeader()
                }
                .edgesIgnoringSafeArea(.all)
                .padding(.top,-10)
                
                DetailBody()
                
            }
            Spacer()
            DetailsFooter()
                .padding(.bottom, -20)
                .edgesIgnoringSafeArea(.all)
        }
        .background(Color.LoginBG)

        
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
                ButtonFill(name: "KD 90000.000", bgColor: Color.Primary, height: 5, width: 150, fontSize: 14,textPadding: 10)                
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
            VStack(alignment: .leading){
                Text("Details").bold()
                    .font(.system(size: 18))
                    .padding(.bottom, 5)
                Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage."
                )
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.all)}
}
#Preview {
    DetailsView()
}
