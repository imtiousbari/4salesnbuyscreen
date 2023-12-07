//
//  ButtonFill.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 6/12/23.
//
import SwiftUI

struct ButtonFill: View {
    var name: LocalizedStringKey? = ""
    var bgColor: Color = Color.Primary
    var body: some View {
        ZStack() {
            HStack() {
                Spacer()
                Text(name!)
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .bold))
                
                Spacer()
            }.background(bgColor).cornerRadius(8)
        }
    }
}

#Preview {
    ButtonFill()
}
