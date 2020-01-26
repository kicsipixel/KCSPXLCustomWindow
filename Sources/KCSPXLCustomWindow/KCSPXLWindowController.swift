//
//  KCSPXLCustomWindowWindowController.swift
//  KCSPXLCustomWindow
//
//  Created by Szabolcs Toth on 25/01/2020.
//  Copyright © 2020 purzelbaum.hu. All rights reserved.
//

import Cocoa


public class KCSPXLCustomWindowWindowController: NSWindowController {
    
    var isViewControllerRequired = true
    var isTitleRequired = true
    var customWindowWidth = 0
    var customWindowHeight = 0
    
    public convenience init() {
        self.init(windowNibName: "")
    }
        
    override public func loadWindow() {
       
        // MARK: Create window
        var windowSize = NSSize()
       
        if customWindowWidth == 0 || customWindowHeight == 0 {
            windowSize = NSSize(width: 600, height: 300)
        } else {
            windowSize = NSSize(width: customWindowWidth, height: customWindowHeight)
        }
        
        let screenSize = NSScreen.main?.frame.size ?? .zero
        let rect = NSMakeRect(screenSize.width/2 - windowSize.width/2, screenSize.height/2 - windowSize.height/2, windowSize.width, windowSize.height)
        window = KCSPXLCustomWindowWindow(contentRect: rect, styleMask: [], backing: .buffered, defer: true)
        
        if isTitleRequired {
            self.window?.title = "KCSPXL Custom Window"
        } else {
            self.window?.titleVisibility = .hidden
        }
        
        self.window?.titlebarAppearsTransparent = true
        self.window?.styleMask.insert(.fullSizeContentView)
        
        // For testing purose I added a white background ViewController
        if isViewControllerRequired {
            self.window?.contentViewController = KCSPXLCustomWindow.KCSPXLCustomWindowViewController()
        }

    }
    
    public func changeIsViewControllerRequired(isRequired: Bool) {
        isViewControllerRequired = isRequired
    }
    
    public func changeCustomWindowSize(customWidth:Int, customHeight:Int) {
        customWindowWidth = customWidth
        customWindowHeight = customHeight
    }
    
    public func changeIsTitleRequired(isRequired: Bool) {
        isTitleRequired = isRequired
    }
  
}
