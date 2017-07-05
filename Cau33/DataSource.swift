//
//  DataSource.swift
//  Cau3
//
//  Created by Cntt12 on 7/5/17.
//  Copyright © 2017 cntt12. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sectionList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sectionList[section].task.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sectionList[section].name
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let section = indexPath.section
        cell.textLabel?.text = self.sectionList[section].task[indexPath.row]
        return cell
    }
}
