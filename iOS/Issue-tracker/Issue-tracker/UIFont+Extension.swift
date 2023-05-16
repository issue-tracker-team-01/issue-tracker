//
//  UIFont+Extestion.swift
//  Issue-tracker
//
//  Created by 김하림 on 2023/05/16.
//

import UIKit

extension UIFont {
    private static let sfProSemiBoldFontName = "SF-Pro-Display-Semibold"
    private static let sfProMediumFontName = "SF-Pro-Display-Medium"
    enum FontSize: CGFloat {
        case doubleXLarge = 32
        case xLarge = 24
        case large = 18
        case semiBoldM = 15
        case mediumM = 16
        case small = 12
    }
    static func semiBoldXXL() -> UIFont {
        let fontSize = FontSize.doubleXLarge.rawValue
        let customFont = UIFont(name: Self.sfProSemiBoldFontName, size: fontSize)
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        return customFont ?? systemFont
    }
    static func semiBoldXL() -> UIFont {
        let fontSize = FontSize.xLarge.rawValue
        let customFont = UIFont(name: Self.sfProSemiBoldFontName, size: fontSize)
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        return customFont ?? systemFont
    }
    static func semiBoldLarge() -> UIFont {
        let fontSize = FontSize.large.rawValue
        let customFont = UIFont(name: Self.sfProSemiBoldFontName, size: fontSize)
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        return customFont ?? systemFont
    }
    static func semiBoldM() -> UIFont {
        let fontSize = FontSize.semiBoldM.rawValue
        let customFont = UIFont(name: Self.sfProSemiBoldFontName, size: fontSize)
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        return customFont ?? systemFont
    }
    static func semiBoldSamll() -> UIFont {
        let fontSize = FontSize.small.rawValue
        let customFont = UIFont(name: Self.sfProSemiBoldFontName, size: fontSize)
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        return customFont ?? systemFont
    }
    static func mediumXXL() -> UIFont {
        let fontSize = FontSize.doubleXLarge.rawValue
        let customFont = UIFont(name: Self.sfProMediumFontName, size: fontSize)
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        return customFont ?? systemFont
    }
    static func mediumXL() -> UIFont {
        let fontSize = FontSize.xLarge.rawValue
        let customFont = UIFont(name: Self.sfProMediumFontName, size: fontSize)
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        return customFont ?? systemFont
    }
    static func mediumLarge() -> UIFont {
        let fontSize = FontSize.large.rawValue
        let customFont = UIFont(name: Self.sfProMediumFontName, size: fontSize)
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        return customFont ?? systemFont
    }
    static func mediumM() -> UIFont {
        let fontSize = FontSize.mediumM.rawValue
        let customFont = UIFont(name: Self.sfProMediumFontName, size: fontSize)
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        return customFont ?? systemFont
    }
    static func mediumSmall() -> UIFont {
        let fontSize = FontSize.small.rawValue
        let customFont = UIFont(name: Self.sfProMediumFontName, size: fontSize)
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        return customFont ?? systemFont
    }
}
