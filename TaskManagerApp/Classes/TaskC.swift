//
//  TaskC.swift
//  TaskManagerApp
//
//  Created by Keano Bellmore on 5/9/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import Foundation
import RealmSwift


class Task: Object {
    @objc var taskName: String = ""
    @objc var taskDetails: String = ""
    @objc var taskDueDate: Date = Date()
    @objc var taskComplete = false
}

