//
//  Cycle.swift
//  timer
//
//  Created by Jose Diaz on 31/03/18.
//  Copyright © 2018 Jose Diaz. All rights reserved.
//

import Foundation

class Cycle: NSObject {
    
    var id: Int
    var time: String?
    var timestamp: String?
    
    init(id: Int, time: String?, timestamp: String?) {
        self.id = id
        self.time = time
        self.timestamp = timestamp
    }
}
