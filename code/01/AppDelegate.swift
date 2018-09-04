//
//  AppDelegate.swift
//  FractionCalculator
//
//  Created by Lech Szymanski on 8/20/15.
//  Copyright (c) 2015 Lech Szymanski. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate : NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var display: NSTextField!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func clickDigit(sender: NSButton) {
        display.stringValue = "0"
    }

}

