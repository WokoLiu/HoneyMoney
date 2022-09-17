//
//  AppDelegate.swift
//  HoneyMoney
//
//  Created by Woko on 2022/9/17.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let statusItem = NSStatusBar.system.statusItem(withLength: 100)
    
    func salaryWithSecond(salary: Int) -> Double {
        return Double(salary) / 21.75 / 8 / 3600 / 1000
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let secondMoney = salaryWithSecond(salary: 50000)
        
        if let button = statusItem.button {
            button.title = "HoneyMoney"
            button.action = #selector(actionHandler)
            
            var current = 0.0
            Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true) { timer in
                current += secondMoney
                button.title = String(current)
            }
        }
    }

    @objc func actionHandler(button: NSButton?) {
        print("good start")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
}
