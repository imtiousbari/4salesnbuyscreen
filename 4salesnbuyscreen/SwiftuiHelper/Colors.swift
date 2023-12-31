//
//  Colors.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 5/12/23.
//

import SwiftUI

extension Color {
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }

    static let Primary = Color(hex: "#E1262F")
    static let BtnGreen = Color(hex: "#51AF33")
    static let BtnGray = Color(hex: "#757575")
    static let LoginBG = Color(hex: "#F1F2F6")
}
