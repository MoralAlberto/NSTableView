//
//  TableViewViewController.swift
//  TableView
//
//  Created by Alberto Moral on 07/10/2017.
//  Copyright © 2017 Alberto Moral. All rights reserved.
//

import Cocoa

class TableViewController: NSViewController {
    var mainView: TableView { return self.view as! TableView }
    fileprivate var adapter: AdapterTableView?
    
    // MARK: View Controller
    
    override func loadView() {
        let rect = NSRect(x: 0, y: 0, width: 200, height: 200)
        view = TableView(frame: rect)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView() {
        adapter = AdapterTableView(tableView: mainView.tableView)
        let users = [User(name: "Alberto"),
                     User(name: "Felipe"),
                     User(name: "Aaron"),
                     User(name: "Laura"),
                     User(name: "Giuseppe")]
        adapter?.add(items: users)
    }

}
