//
//  Attribute.swift
//  TableWithMultiCellMVVM
//
//  Created by Le Ngoc Hoan on 6/24/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import Foundation

class Attribute {
    var key: String?
    var value: String?
    
    init(json: [String: Any]) {
        self.key = json["key"] as? String
        self.value = json["value"] as? String
    }
}
