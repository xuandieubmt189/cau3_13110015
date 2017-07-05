//
//  Model.swift
//  Cau3
//
//  Created by Cntt12 on 7/5/17.
//  Copyright © 2017 cntt12. All rights reserved.
//

import Foundation

class Model {
    let name: String
    var task = [String]()
    
    init(name: String, task: [String]) {
        self.name = name
        self.task = task
    }
    
    class func section1() -> Model {
        return Model(name: "section1", task: ["Task1", "Task2"])
    }
    
    class func section2() -> Model {
        return Model(name: "section2", task: ["Task3", "Task4", "Task5"])
    }
    
    class func getListSection() -> [Model]{
        return [self.section1(), self.section2()]
    }
    
}
