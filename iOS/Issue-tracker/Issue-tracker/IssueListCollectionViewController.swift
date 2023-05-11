//
//  IssueListCollectionViewController.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/11.
//

import UIKit

class IssueListCollectionViewController: UIViewController {

    var collectionView: UICollectionView!
    let ratio : CGFloat = 150/375

    override func viewDidLoad() {
        super.viewDidLoad()
        let width = self.view.bounds.width
        let layout = initLayout()
        layout.itemSize = CGSize(width: width, height: width * ratio)
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        
        setUI()
        
    }
    func setUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        self.view.addSubview(collectionView)
    }
}

extension IssueListCollectionViewController : UICollectionViewDelegate {
}

extension IssueListCollectionViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //test를 위한 리턴값 10
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath)
        cell.backgroundColor = UIColor.blue
        return cell
    }
}

extension IssueListCollectionViewController : UICollectionViewDelegateFlowLayout {
    func initLayout() -> UICollectionViewFlowLayout {
        return UICollectionViewFlowLayout()
    }
}
