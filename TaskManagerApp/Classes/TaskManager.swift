//
//  TaskManager.swift
//  TaskManagerApp
//
//  Created by Keano Bellmore on 5/9/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import Foundation
import RealmSwift

final class TaskManager{
    
    static let sharedInstanced = TaskManager()
    var calendar = Calendar.current
    
    private init(){
        
    }
    let realm = try! Realm()
    
    var tasks: Results<Task>!
    
    func addTask(_ task: Task){
        try! realm.write {
            realm.add(task)
        }
    }
    func removeGame(_ task: Task){
        try! realm.write {
            realm.delete(task)
        }
    }
    func getTask(index: Int) -> Task{
        return tasks[index]
    }
    func getTaskCount() -> Int{
        return tasks.count
        
    }
    
}



