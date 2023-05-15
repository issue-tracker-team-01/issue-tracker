//
//  IssueCell.swift
//  Issue-tracker
//
//  Created by 김하림 on 2023/05/11.
//

import UIKit
import TagListView

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
    private let tagLabel: TagListView = {
        let tags = TagListView()
        tags.bounds = CGRect(x: 0, y: 0, width: 335, height: 18)
        tags.addTags(["Add", "two", "tags"])
        tags.insertTag("This should be the second tag", at: 1)
        tags.alignment = .leading
        tags.textFont = UIFont.systemFont(ofSize: 12)
        return tags
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(milestones)
        addSubview(tagLabel)
        milestones.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        tagLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        milestones.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10).isActive = true
        tagLabel.topAnchor.constraint(equalTo: milestones.bottomAnchor, constant: 10).isActive = true
        tagLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        
    }
    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }
}
