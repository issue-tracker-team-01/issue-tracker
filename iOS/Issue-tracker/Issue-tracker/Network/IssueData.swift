//
//  IssueData.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/25.
//

import Foundation

protocol APIData{
    
}

struct IssueList {
    struct IssueData: Codable {
        let issues: [Issue]
    }
    
    struct Label: Codable {
        let title: String?
        let bgColorCode: String?
    }
    
    struct Count {
        let label, milestone, opened, closed: Int?
    }
    
    struct Issue: Codable, APIData {
        let id: Int?
        let title, issueDescription, createAt: String?
        let labels: [Label]
        let milestone, author: String?
        let authorURL: String?
    }
}
struct LabelList {
    struct LabelData {
        let labels: [Label]
    }
    
    struct Label: APIData {
        let id: Int
        let title, labelDescription, bgColorCode, fontColorCode: String
    }
}

struct AllAssignee {
    struct AssigneeData {
        let assignees: [Assignee]
    }
    
    // MARK: - Assignee
    struct Assignee: APIData, Codable {
        let id: Int
        let name: String
        let imgURL: String
    }
}
