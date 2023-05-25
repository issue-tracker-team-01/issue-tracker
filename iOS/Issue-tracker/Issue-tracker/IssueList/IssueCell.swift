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
    
    var tagLabelStackView: UIStackView = {
        let tags = PaddingLabel(withInsets: 4, 4, 16, 16)
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 4
        
        tags.font = UIFont.mediumS
        tags.text = "라라라"
        
        tags.translatesAutoresizingMaskIntoConstraints = false
        tags.backgroundColor = .red
        tags.textColor = UIColor.accentTextStrong
        
        let tags2 = PaddingLabel(withInsets: 4, 4, 16, 16)

        tags2.font = UIFont.mediumS
        tags2.text = "테스트테스트테스트"
        tags2.textColor = UIColor.accentTextStrong
        tags2.translatesAutoresizingMaskIntoConstraints = false
       
        tags2.backgroundColor = .orange
        let long = 355
        let short = 18
        let labelTextSize = tags2.intrinsicContentSize
        
        tags2.layer.masksToBounds = true
        tags2.layer.cornerRadius = CGFloat(long*short/long/2)
        tags.layer.masksToBounds = true
        tags.layer.cornerRadius = CGFloat(long*short/long/2)
        
        stackView.addArrangedSubview(tags)
        stackView.addArrangedSubview(tags2)
        
        return stackView
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 4
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [titleLabel, descriptionLabel, milestones].forEach {
            stackView.addArrangedSubview($0)
        }
        addSubview(stackView)
        addSubview(tagLabelStackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 335)
        ])
        
        NSLayoutConstraint.activate([
            tagLabelStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 4),
            tagLabelStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            tagLabelStackView.heightAnchor.constraint(equalToConstant: 24)
        ])

    }
    
    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }
}