//
//  IssueListCollectionViewController.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/11.
//

import UIKit

class IssueListCollectionViewController: UIViewController, CustomViewDelegate {
    
    var collectionView: UICollectionView!
    let cellRatio: CGFloat = 150/375
    let filterViewController = FilterTableViewController()
    var createIssueButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont.semiBoldL
        button.backgroundColor = .accentBackgroundStrongPrimary
        button.frame = .init(x: UIScreen.main.bounds.size.width * 295/375, y: UIScreen.main.bounds.size.height * 650/812, width: 56, height: 56)
        button.layer.cornerRadius = button.layer.frame.size.width/2
        button.layer.masksToBounds = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = self.view.bounds.width
        let layout = initLayout()
        layout.minimumLineSpacing = 0
        layout.itemSize = CGSize(width: width, height: width * cellRatio)
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        self.view.backgroundColor = .white
        setUI()
        
    }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            changeStatusBarBgColor(bgColor: UIColor.white)
        }
    
    func setUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.neutralBackgroundStrong

        collectionView.register(IssueCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.register(CollectionHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
        self.view.addSubview(collectionView)
        self.view.addSubview(createIssueButton)
    }
    
    func buttonTapped() {
        self.present(filterViewController, animated: true, completion: nil)
        }
    
    func changeStatusBarBgColor(bgColor: UIColor?) {
            if #available(iOS 13.0, *) {
                let window = UIApplication.shared.windows.first
                let statusBarManager = window?.windowScene?.statusBarManager
                
                let statusBarView = UIView(frame: statusBarManager?.statusBarFrame ?? .zero)
                statusBarView.backgroundColor = bgColor
                
                window?.addSubview(statusBarView)
            } else {
                let statusBarView = UIApplication.shared.value(forKey: "statusBar") as? UIView
                statusBarView?.backgroundColor = bgColor
            }
        }
}

extension IssueListCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // test를 위한 리턴값 100
        return 100
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IssueCell.identifier, for: indexPath) as? IssueCell
        cell?.backgroundColor = UIColor.neutralBackground
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        as? CollectionHeaderView else {return UICollectionReusableView()}
        headerView.delegate = self
        return headerView
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let width = self.view.frame.width
        let headerRatio: CGFloat = 94/375
        
        return CGSize(width: width, height: width * headerRatio)
    }
    
}

extension IssueListCollectionViewController: UICollectionViewDelegateFlowLayout {
    func initLayout() -> UICollectionViewFlowLayout {
        return UICollectionViewFlowLayout()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}
