//
//  CollectionHeaderView.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/11.
//

import UIKit

class CollectionHeaderView: UICollectionReusableView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "이슈"
        label.font = UIFont(name: Font.semibold.rawValue, size: 32)
        label.textColor = .neutralTextStrong
        return label
    }()
    
    private let filterButton: UIButton = {
        let filterButton = UIButton()
        filterButton.setTitle("필터", for: .normal)
        filterButton.setTitleColor(.accentTextPrimary, for: .normal)
        filterButton.titleLabel?.font = UIFont(name: Font.medium.rawValue, size: 18) ?? UIFont()
        return filterButton
    }()
    
    private let choiceButton: UIButton = {
        let choiceButton = UIButton()
        choiceButton.setTitle("선택", for: .normal)
        choiceButton.setTitleColor(.accentTextPrimary, for: .normal)
        choiceButton.titleLabel?.font = UIFont(name: Font.medium.rawValue, size: 18) ?? UIFont()
        return choiceButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        addSubview(filterButton)
        addSubview(choiceButton)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        filterButton.translatesAutoresizingMaskIntoConstraints = false
        choiceButton.translatesAutoresizingMaskIntoConstraints = false
        
        layout()
        
    }
    
    func layout() {
        let consArr : [NSLayoutConstraint] = [
            filterButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            filterButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -325),
            filterButton.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            filterButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -62),
            
            
            choiceButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 325),
            choiceButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            choiceButton.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            choiceButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -62),

            
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 16),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            titleLabel.heightAnchor.constraint(equalToConstant: 48),
            titleLabel.widthAnchor.constraint(equalToConstant: 59)
        ]
                NSLayoutConstraint.activate(consArr)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
