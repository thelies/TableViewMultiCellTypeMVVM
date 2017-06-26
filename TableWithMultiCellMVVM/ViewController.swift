//
//  ViewController.swift
//  TableWithMultiCellMVVM
//
//  Created by Le Ngoc Hoan on 6/24/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let viewModel = ProfileViewModel()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: NameAndPictureCell.identifier, bundle: nil), forCellReuseIdentifier: NameAndPictureCell.identifier)
        tableView.register(UINib(nibName: FriendCell.identifier, bundle: nil), forCellReuseIdentifier: FriendCell.identifier)
        tableView.register(UINib(nibName: AboutCell.identifier, bundle: nil), forCellReuseIdentifier: AboutCell.identifier)
        tableView.register(UINib(nibName: EmailCell.identifier, bundle: nil), forCellReuseIdentifier: EmailCell.identifier)
        tableView.register(UINib(nibName: AttributeCell.identifier, bundle: nil), forCellReuseIdentifier: AttributeCell.identifier)
        tableView.dataSource = viewModel
        tableView.estimatedRowHeight = 130
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
