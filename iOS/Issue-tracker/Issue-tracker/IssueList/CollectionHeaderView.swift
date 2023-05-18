//
//  CollectionHeaderView.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/11.
//
protocol CustomViewDelegate: AnyObject {
    func buttonTapped()
}

import UIKit

class CollectionHeaderView: UICollectionReusableView {
    static let identifier = "header"
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "이슈"
        label.font = UIFont.semiBoldXXL
        label.textColor = .neutralTextStrong
        return label
    }()
    
    private let filterButton: UIButton = {
        let filterButton = UIButton()
        filterButton.setTitle("필터", for: .normal)
        filterButton.setTitleColor(.accentTextPrimary, for: .normal)
        filterButton.titleLabel?.font = UIFont.regularM
        return filterButton
    }()
    
    private let choiceButton: UIButton = {
        let choiceButton = UIButton()
        choiceButton.setTitle("선택", for: .normal)
        choiceButton.setTitleColor(.accentTextPrimary, for: .normal)
        choiceButton.titleLabel?.font = UIFont.regularM
        return choiceButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        [titleLabel, filterButton, choiceButton].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        layout()
    }
    
    func layout() {
        setFilterButtonConstraint()
        setChioceButtonConstraint()
        setTitleLabelConstraint()
    }
    func setFilterButtonConstraint() {
        let conArr: [NSLayoutConstraint] = [
            filterButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            filterButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -325),
            filterButton.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            filterButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -62)
        ]
        NSLayoutConstraint.activate(conArr)
    }
    func setChioceButtonConstraint() {
        let conArr: [NSLayoutConstraint] = [
            choiceButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 325),
            choiceButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            choiceButton.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            choiceButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -62)
        ]
        NSLayoutConstraint.activate(conArr)
    }
    func setTitleLabelConstraint() {
        let conArr: [NSLayoutConstraint] = [
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            titleLabel.heightAnchor.constraint(equalToConstant: 48),
            titleLabel.widthAnchor.constraint(equalToConstant: 59)
        ]
        NSLayoutConstraint.activate(conArr)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
