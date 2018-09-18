//
//  AppDelegate.swift
//  FractionCalculator
//
//  Created by Hena Malhotra on 9/12/18.
//  Copyright © 2018 Hena. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var display: NSTextFieldCell!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @IBAction func clickDigit(_ sender: NSButton) {
        let digit: Int = sender.tag
        display.stringValue += "\(digit)"
      
    }
    
    @IBAction func clickAdd(sender: NSButton) {
        display.stringValue += "+"
    }
    
    @IBAction func clickSubtract(sender: NSButton) {
        display.stringValue += "-"
    }
    
    @IBAction func clickMultiply(sender: NSButton) {
        display.stringValue += "*"
    }
    
    @IBAction func clickDivide(sender: NSButton) {
        display.stringValue += "/"
    }
    
    @IBAction func clickClear(sender: NSButton) {
        display.stringValue = ""
    }
    
    @IBAction func clickEquals(sender: NSButton) {
        if let result = Parser<Fraction>.evaluate(string: display.stringValue) {
            display.stringValue += "=\(result)"
        } else {
            display.stringValue = "Error"
        }
    }
    
}

