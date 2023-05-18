//
// UIFont+Extestion.swift
// Issue-tracker
//
// Created by 김하림 on 2023/05/16.
//
import UIKit
extension UIFont {
    enum FontType: String {
        case semibold = "SFProDisplay-Semibold"
        case medium = "SFProDisplay-Medium"
        case regular = "SFProDisplay-Regular"
        case bold = "SFProDisplay-Bold"
    }
    enum FontSize: CGFloat {
        case XXL = 32
        case xLarge = 24
        case large, regularM = 18
        case mediumM, boldM = 16
        case semiBoldM = 15
        case small = 12
    }
    static let semiBoldXXL = UIFont(name: FontType.semibold.rawValue, size: FontSize.XXL.rawValue)
    static let semiBoldXL = UIFont(name: FontType.semibold.rawValue, size: FontSize.xLarge.rawValue)
    static let semiBoldL = UIFont(name: FontType.semibold.rawValue, size: FontSize.large.rawValue)
    static let semiBoldM = UIFont(name: FontType.semibold.rawValue, size: FontSize.semiBoldM.rawValue)
    static let semiBoldS = UIFont(name: FontType.semibold.rawValue, size: FontSize.small.rawValue)
    static let mediumXXL = UIFont(name: FontType.medium.rawValue, size: FontSize.XXL.rawValue)
    static let mediumXL = UIFont(name: FontType.medium.rawValue, size: FontSize.xLarge.rawValue)
    static let mediumL = UIFont(name: FontType.medium.rawValue, size: FontSize.large.rawValue)
    static let mediumM = UIFont(name: FontType.medium.rawValue, size: FontSize.mediumM.rawValue)
    static let mediumS = UIFont(name: FontType.medium.rawValue, size: FontSize.small.rawValue)
    static let regularXXL = UIFont(name: FontType.regular.rawValue, size: FontSize.XXL.rawValue)
    static let regularXL = UIFont(name: FontType.regular.rawValue, size: FontSize.xLarge.rawValue)
    static let regularL = UIFont(name: FontType.regular.rawValue, size: FontSize.large.rawValue)
    static let regularM = UIFont(name: FontType.regular.rawValue, size: FontSize.regularM.rawValue)
    static let boldL = UIFont(name: FontType.bold.rawValue, size: FontSize.large.rawValue)
    static let boldM = UIFont(name: FontType.bold.rawValue, size: FontSize.boldM.rawValue)
    static let boldS = UIFont(name: FontType.bold.rawValue, size: FontSize.small.rawValue)
}
