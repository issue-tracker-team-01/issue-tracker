//
//  TabbarViewController.swift
//
//
//  Created by leehwajin on 2023/05/11.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()

    }

    func makeUI() {
        let issueViewController = IssueListCollectionViewController()
        let labelViewController = UIViewController()
        let milestoneViewController = UIViewController()
        let myAccountVieController = UIViewController()

        issueViewController.title = TabBarItems.issue.rawValue
        labelViewController.title = TabBarItems.label.rawValue
        milestoneViewController.title = TabBarItems.milestone.rawValue
        myAccountVieController.title = TabBarItems.myAccount.rawValue

        self.setViewControllers([issueViewController, labelViewController, milestoneViewController, myAccountVieController], animated: false)
        self.modalPresentationStyle = .fullScreen
        self.tabBar.backgroundColor = .white

        guard let items = self.tabBar.items else { return }

                items[0].image = UIImage(named: TabBarItems.issue.rawValue)
                items[1].image = UIImage(named: TabBarItems.label.rawValue)
                items[2].image = UIImage(named: TabBarItems.milestone.rawValue)
                //각자의 프로필 사진이라 데이터 받아올 시 작업예정
                items[3].image = .none
    }
}
