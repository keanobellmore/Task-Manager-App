//
//  TableViewController.swift
//  TaskManagerApp
//
//  Created by Keano Bellmore on 5/9/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import UIKit
import RealmSwift

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        //TaskManager.sharedInstanced.getTaskCount()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell") 
        //cell.setUpCell(task: TaskManager.sharedInstanced.getTask(index: indexPath.row))
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
}


}
