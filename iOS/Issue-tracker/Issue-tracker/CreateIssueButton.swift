//
//  CreateIssueButton.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/12.
//

import UIKit

class CreateIssueButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .link
        self.setTitle("+", for: .normal)
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
