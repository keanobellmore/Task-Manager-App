//
//  TableViewCell.swift
//  TaskManagerApp
//
//  Created by Keano Bellmore on 5/9/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import UIKit
import RealmSwift

class TableViewCell: UITableViewCell {

    @IBOutlet weak var taskTitle: UILabel?
    
    @IBOutlet weak var dueDate: UILabel?
    
    @IBOutlet weak var complete: UILabel?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUpCell(task: Task) {
        if task.taskComplete{
            complete?.text = "incomplete"
        } else {
            complete?.text = "complete"
            complete?.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
    }
}
