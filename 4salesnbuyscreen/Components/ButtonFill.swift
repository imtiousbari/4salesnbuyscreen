//
//  ButtonFill.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 6/12/23.
//
import SwiftUI

//struct ButtonFill: View {
//    var name: LocalizedStringKey? = ""
//    var bgColor: Color = Color.Primary
//    var body: some View {
//        ZStack() {
//            HStack() {
//                Spacer()
//                Text(name!)
//                    .padding()
//                    .foregroundColor(.white)
//                    .font(.system(size: 14, weight: .bold))
//
//                Spacer()
//            }.background(bgColor).cornerRadius(8)
//        }
//    }
//}
struct ButtonFill: View {
    var name: LocalizedStringKey = ""
    var imageName: String? = nil
    var imageWidth: CGFloat = 0 // Default image width
    var imageHeight: CGFloat = 0
    var bgColor: Color = Color.blue
    var height: CGFloat = 0
    var width: CGFloat? = nil
    var fontSize: CGFloat = 0
    var textPadding: CGFloat = 0 // Single number for padding
    var spacing: CGFloat = 8
    var onClick: (() -> Void)? = nil
    
    var body: some View {
        ZStack {
            HStack(spacing: spacing) {
                if let imageName = imageName {
                    Image(systemName: imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: imageWidth)
                        .foregroundColor(.white)
                        .padding()
                }
                
                Spacer()
                
                Text(name)
                    .padding([.top, .bottom], textPadding)
                    .padding([.leading, .trailing], textPadding / 2) 
                    .foregroundColor(.white)
                    .font(.system(size: fontSize, weight: .bold))
                
                Spacer()
            }
            .background(bgColor)
            .cornerRadius(8)
            .onTapGesture {
                onClick?()
            }
        }
        .frame(width: width, height: height)
    }
}
//preview{
//ButtonFill(name: "Call", imageName: "phone.fill", imageWidth: 18,imageHeight:18, bgColor: Color.Primary , height: 60, width: 100, fontSize: 18, spacing: -25)
//}

#Preview {
    ButtonFill()
}
