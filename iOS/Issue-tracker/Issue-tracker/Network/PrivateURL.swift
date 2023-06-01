//
//  PrivateURL.swift
//  Issue-tracker
//
//  Created by leehwajin on 2023/05/28.
//

import Foundation

struct PrivateURL {
    static let url = "http://52.79.159.39:8888/api"
    static let openIssue = "/issues?isOpen=true"
    static let closedIssue = "/issues?isOpen=false"
    static let allAssignee = "/assignees"
    static let label = "/labels"
    static let milestone = "/milestones?isOpen=true"
    static let writer = "/writers"
}
