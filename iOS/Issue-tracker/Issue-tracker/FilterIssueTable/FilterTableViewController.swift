//
//  ViewController.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/19.
//

import UIKit

class FilterTableViewController: UIViewController {

    let tableView = UITableView()
    
    let sectionKind = ["상태", "담당자", "레이블"]
    let status = ["열린 이슈", "내가 작성한 이슈", "내가 댓글을 남긴 이슈", "닫힌 이슈"]
    var manager = ["chloe", "head", "sam", "zello"]
    var labelKind = ["레이블 없음", "그룹프로젝트:이슈트래커"]
    
    lazy var filterMenu = [status, manager, labelKind]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewLayout()
    }
    
    func tableViewLayout() {
        tableView.rowHeight = 44
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: "header")
        
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }

}
