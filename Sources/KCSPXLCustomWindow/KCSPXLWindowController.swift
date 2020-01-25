//
//  KCSPXLCustomWindowWindowController.swift
//  KCSPXLCustomWindow
//
//  Created by Szabolcs Toth on 25/01/2020.
//  Copyright © 2020 purzelbaum.hu. All rights reserved.
//

import Cocoa

public class KCSPXLCustomWindowWindowController: NSWindowController {

   public convenience init() {
        self.init(windowNibName: "")
    }
        
    override public func loadWindow() {
        
        // MARK: Create window
        let windowSize = NSSize(width: 600, height: 300)
        let screenSize = NSScreen.main?.frame.size ?? .zero
        let rect = NSMakeRect(screenSize.width/2 - windowSize.width/2, screenSize.height/2 - windowSize.height/2, windowSize.width, windowSize.height)
        window = KCSPXLCustomWindowWindow(contentRect: rect, styleMask: [], backing: .buffered, defer: true)
        self.window?.title = "KCSPXL Window"
        self.window?.titlebarAppearsTransparent = true
        self.window?.styleMask.insert(.fullSizeContentView)
        self.window?.contentViewController = KCSPXLCustomWindow.KCSPXLCustomWindowViewController()
    }

}