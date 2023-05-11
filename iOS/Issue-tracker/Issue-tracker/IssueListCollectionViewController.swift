//
//  IssueListCollectionViewController.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/11.
//

import UIKit

class IssueListCollectionViewController: UIViewController {

    var collectionView: UICollectionView!
    let cellRatio : CGFloat = 150/375

    override func viewDidLoad() {
        super.viewDidLoad()
        let width = self.view.bounds.width
        let layout = initLayout()
        layout.itemSize = CGSize(width: width, height: width * cellRatio)
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        
        setUI()
        
    }
    func setUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
        self.view.addSubview(collectionView)
    }
}

extension IssueListCollectionViewController : UICollectionViewDelegate {
}

extension IssueListCollectionViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //test를 위한 리턴값 100
        return 100
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath)
        cell.backgroundColor = UIColor.blue
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        return headerView
    }
   

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize{
        let width = self.view.frame.width
        let headerRatio = 94/375
        return CGSize(width: width, height: width * 94/375)
        }
}

extension IssueListCollectionViewController : UICollectionViewDelegateFlowLayout {
    func initLayout() -> UICollectionViewFlowLayout {
        return UICollectionViewFlowLayout()
    }
}
