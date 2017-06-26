//
//  AttributeCell.swift
//  TableWithMultiCellMVVM
//
//  Created by Le Ngoc Hoan on 6/26/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import UIKit

class AttributeCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    static let identifier = "AttributeCell"
    var item: Attribute? {
        didSet {
            guard let item = item else {
                return
            }
            
            titleLabel?.text = item.key
            valueLabel?.text = item.value
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
