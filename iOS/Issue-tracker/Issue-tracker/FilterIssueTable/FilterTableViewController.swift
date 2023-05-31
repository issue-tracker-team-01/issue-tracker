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
    private let status = ["열린 이슈", "닫힌 이슈"]
    private var assigneeArray: [APIData] = []
    private var labelArray: [APIData] = []
    
    
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
        let group = DispatchGroup()
        group.enter()
        networkManager.performRequest(urlString: PrivateURL.label) { result in
            switch result {
            case .success(let labelData):
                self.labelArray = labelData
            case .failure(let error):
                print(error.localizedDescription)
            }
            group.leave()
        }
        group.enter()
        networkManager.performRequest(urlString: PrivateURL.allAssignee) { result in
            switch result {
            case .success(let assigneeData):
                self.assigneeArray = assigneeData
            case .failure(let error):
                print(error.localizedDescription)
            }
            group.leave()
        }
        group.notify(queue: .main) {
            self.tableView.reloadData()
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
        switch section {
        case 0:
            return status.count
        case 1:
            return assigneeArray.count
        case 2:
            return labelArray.count
        default:
            return 0
        }
    }
    //(assigneeArray as? [AllAssignee.Assignee])?[indexPath.row].name
    //(labelArray as? [LabelList.Label])?[indexPath.row].title
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.filterListCellIdentifier, for: indexPath)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = status[indexPath.row]
        case 1:
            cell.textLabel?.text = (assigneeArray as? [AssigneeList.Assignee])?[indexPath.row].name
        case 2:
            cell.textLabel?.text = (labelArray as? [LabelList.Label])?[indexPath.row].title
        default:
            break
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
        
        let section = indexPath.section
        let rows = tableView.numberOfRows(inSection: section)
        
        for row in 0..<rows {
            if let currentCell = tableView.cellForRow(at: IndexPath(row: row, section: section)) {
                if currentCell != cell && currentCell.tintColor == .accentTextPrimary {
                    currentCell.tintColor = .neutralTextWeak
                }
            }
        }
    }
}
