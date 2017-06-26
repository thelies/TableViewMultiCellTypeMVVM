//
//  FriendCell.swift
//  TableWithMultiCellMVVM
//
//  Created by Le Ngoc Hoan on 6/26/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {

    @IBOutlet var pictureImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!

    static let identifier = "FriendCell"
    var item: Friend? {
        didSet {
            guard let item = item else {
                return
            }
            
            if let pictureUrl = item.pictureUrl {
                pictureImageView?.image = UIImage(named: pictureUrl)
            }
            nameLabel?.text = item.name
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
