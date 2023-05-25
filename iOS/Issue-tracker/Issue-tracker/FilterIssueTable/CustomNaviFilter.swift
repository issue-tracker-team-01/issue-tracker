//
//  CustomNaviFilter.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/25.
//

import UIKit

class CustomNaviFilter: UIView {
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.setTitle("< 취소", for: .normal)
        button.setTitleColor(UIColor(red: 0, green: 122/255, blue: 255/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Semibold", size: 18)
        return button
    }()
}