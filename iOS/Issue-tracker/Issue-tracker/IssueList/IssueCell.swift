//
//  IssueCell.swift
//  Issue-tracker
//
//  Created by 김하림 on 2023/05/11.
//

import UIKit

class IssueCell: UICollectionViewCell {
    static let identifier = "cell"
    
    var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.semiBoldL
        lbl.textColor = UIColor.neutralTextStrong
        lbl.text = "제목"
        return lbl
    }()
    
    var descriptionLabel: UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 2
        lbl.font = UIFont.mediumM
        lbl.textColor = UIColor.neutralText
        lbl.text = "설명(최대 두 줄까지 보여줄 수 있다)"
        return lbl
    }()

    var milestones: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.mediumM
        lbl.textColor = UIColor.neutralText
        let attributedString = NSMutableAttributedString(string: "")
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: TabBarItems.milestone.rawValue)
        attributedString.append(NSAttributedString(attachment: imageAttachment))
        imageAttachment.bounds = CGRect(x: 0, y: 0, width: 17, height: 18)
        attributedString.append(NSAttributedString(string: "마일스톤"))
        lbl.attributedText = attributedString
        return lbl
    }()
    
    var tagLabel: TagListView = {
        let tags = TagListView()
        tags.textFont = UIFont.mediumS ?? UIFont()
        tags.textColor = UIColor.accentTextStrong ?? UIColor()
        let long = 355
        let short = 18
        tags.bounds = CGRect(x: 0, y: 0, width: long, height: short)
        tags.cornerRadius = CGFloat(long*short/long/2)
        tags.layer.masksToBounds = true
        tags.addTag("라벨1")
        tags.paddingX = 16
        tags.paddingY = 4
        tags.tagBackgroundColor = .orange
        tags.insertTag("라벨 새치기", at: 0)
        return tags
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 4
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [titleLabel, descriptionLabel, milestones, tagLabel].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
            stackView.addArrangedSubview($0)
        }
        addSubview(stackView)
        tagLabel.tagBackgroundColor = .blue
        
        let consArr: [NSLayoutConstraint] = [
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        NSLayoutConstraint.activate(consArr)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }
}
