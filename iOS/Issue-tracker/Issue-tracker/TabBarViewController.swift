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
        let issueViewController = UIViewController()
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

    }

}
