//
//  ViewController.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/19.
//

import UIKit

class FilterTableViewController: UIViewController, CustomNavigationDelegate {
    private let networkManager = NetworkManager.shared
    private let customView = CustomNavigationFilter()
    private let tableView = UITableView()
    
    private let sectionKind = ["상태", "담당자", "레이블"]
    private let status = ["열린 이슈", "내가 작성한 이슈", "내가 댓글을 남긴 이슈", "닫힌 이슈"]
    private var assigneeArray: [APIData] = []
    private var labelKind = ["레이블 없음", "그룹프로젝트:이슈트래커"]
    
    private lazy var filterMenu = [status, assigneeArray, labelKind] as [Any]
    
    private let filterListCellIdentifier = "filterListCell"
    private let filterListHeaderIdentifier = "filterListHeader"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        customView.delegate = self
        
        customViewLayout()
        tableViewLayout()
        setupData()
        
    }
    
    func customViewLayout() {
        
        view.addSubview(customView)
        
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            customView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            customView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            customView.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    func tableViewLayout() {
        tableView.rowHeight = 44
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: self.filterListCellIdentifier)
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: self.filterListHeaderIdentifier)
        
        self.view.addSubview(tableView)
        tableView.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.0)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        ])
    }
    
    func setupData() {
        networkManager.performRequest(urlString: PrivateURL.allAssignee) { result in
            switch result {
            case .success(let assigneeData):
                self.assigneeArray = assigneeData
                self.filterMenu[1] = assigneeData  // 담당자 섹션의 데이터 업데이트
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func cancelButtonTapped() {
        self.dismiss(animated: true)
    }
    
    func saveButtonTapped() {
        //TODO: 추후 구현
    }
}

extension FilterTableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionKind.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.filterListCellIdentifier, for: indexPath)
        
        if let menuData = filterMenu[indexPath.section] as? [String] {
            cell.textLabel?.text = menuData[indexPath.row]
        } else if let menuData = filterMenu[indexPath.section] as? [AllAssignee.Assignee] {
            let assignee = menuData[indexPath.row]
            cell.textLabel?.text = assignee.name
        }
        
        cell.accessoryType = .checkmark
        cell.tintColor = .neutralTextWeak
        
        return cell
    }
    
}
extension FilterTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        
        let label: UILabel = {
            let label = UILabel()
            label.font = UIFont.semiBoldM
            label.textColor = UIColor.neutralText
            label.text = sectionKind[section]
            headerView.addSubview(label)
            return label
        }()
        headerView.backgroundColor = .white
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
        cell?.tintColor = .accentTextPrimary
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
        cell?.tintColor = .neutralTextWeak
    }
}
