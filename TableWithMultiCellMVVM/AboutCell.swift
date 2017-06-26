//
//  AboutCell.swift
//  TableWithMultiCellMVVM
//
//  Created by Le Ngoc Hoan on 6/26/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import UIKit

class AboutCell: UITableViewCell {

    @IBOutlet var aboutLabel: UILabel!
    
    static let identifier = "AboutCell"
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelAboutItem else {
                return
            }
            
            aboutLabel?.text = item.about
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
