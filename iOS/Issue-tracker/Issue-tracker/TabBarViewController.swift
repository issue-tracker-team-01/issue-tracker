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

        issueViewController.title = "이슈"
        labelViewController.title = "레이블"
        milestoneViewController.title = "마일스톤"
        myAccountVieController.title = "내계정"

        self.setViewControllers([issueViewController, labelViewController, milestoneViewController, myAccountVieController], animated: false)
        self.modalPresentationStyle = .fullScreen
        self.tabBar.backgroundColor = .white

    }

}
