//
//  ViewController.swift
//  TableViewSeparatorFreeze
//
//  Created by Eli Perkins on 10/17/16.
//  Copyright © 2016 Eli Perkins. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomInsetCell.self, forCellReuseIdentifier: "CustomInsetCell")

        // NOTE: Uncomment this line to remove freezing on rotation.
//        tableView.cellLayoutMarginsFollowReadableWidth = false
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomInsetCell", for: indexPath)

        cell.textLabel?.text = String(indexPath.row)

        return cell
    }
}

class CustomInsetCell: UITableViewCell {
    override func layoutSubviews() {
        super.layoutSubviews()

        separatorInset.left = 100
    }
}

