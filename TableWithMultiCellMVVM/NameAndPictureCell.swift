//
//  NameAndPictureCell.swift
//  TableWithMultiCellMVVM
//
//  Created by Le Ngoc Hoan on 6/26/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import UIKit

class NameAndPictureCell: UITableViewCell {

    @IBOutlet var pictureImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    static let identifier = "NameAndPictureCell"
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelNameAndPictureItem else {
                return
            }
            
            nameLabel?.text = item.userName
            pictureImageView?.image = UIImage(named: item.pictureUrl)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
