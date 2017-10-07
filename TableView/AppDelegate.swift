//
//  AppDelegate.swift
//  TableView
//
//  Created by Alberto Moral on 07/10/2017.
//  Copyright © 2017 Alberto Moral. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window = NSApplication.shared.mainWindow
    let tableViewController = TableViewController()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window?.contentViewController = tableViewController
    }
}
