//
//  Utility.swift
//  TableWithMultiCellMVVM
//
//  Created by Le Ngoc Hoan on 6/24/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import Foundation

public func dataFromFile(_ filename: String) -> Data? {
    @objc class TestClass: NSObject {}
    let bundle = Bundle(for: TestClass.self)
    if let path = bundle.path(forResource: filename, ofType: "json") {
        return (try? Data(contentsOf: URL(fileURLWithPath: path)))
    }
    
    return nil
}
