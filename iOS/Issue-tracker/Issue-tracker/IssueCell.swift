//
//  IssueCell.swift
//  Issue-tracker
//
//  Created by 김하림 on 2023/05/11.
//

import UIKit
class IssueCell: UICollectionViewCell {
    static let identifier = "Cell"
    private let titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.text = "test"
        
        return lbl
    }()
}
