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
        tableView.dataSource = self
        tableView.delegate = self

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

extension FilterTableViewController: UITableViewDataSource{

    func numberOfSections(in tableView: UITableView) -> Int {
    return sectionKind.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterMenu[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = filterMenu[indexPath.section][indexPath.row]
        let image = UIImage(systemName: "checkmark")
        cell.accessoryView = UIImageView(image: image)

        return cell
    }
}

extension FilterTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 44))

        var label: UILabel = {
            let label = UILabel()
            label.font = UIFont.semiBoldM
            label.textColor = UIColor.neutralText
            label.text = sectionKind[section]
            headerView.addSubview(label)
            return label
        }()
        
        label.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 16)
        ])
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
}
