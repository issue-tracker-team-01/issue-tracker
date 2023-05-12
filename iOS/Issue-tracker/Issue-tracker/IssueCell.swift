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
    private let descriptionLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 10)
        lbl.numberOfLines = 2
        lbl.text = "asdfadfasdffaddfadfsadsfasdggggasgadgggsdsdadfgkbjlasdfgasdghjkgsdhjkgahjkasdghjklasdghjkladggasdhjkl"
        return lbl
    }()
    private let milestones: UILabel = {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 22)
        let attributedString = NSMutableAttributedString(string: "")
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "arrowshape.right")
        attributedString.append(NSAttributedString(attachment: imageAttachment))
        imageAttachment.bounds = CGRect(x: 0, y: 0, width: 18, height: 18)
        attributedString.append(NSAttributedString(string: "test"))
        lbl.attributedText = attributedString
        return lbl
    }()
}
