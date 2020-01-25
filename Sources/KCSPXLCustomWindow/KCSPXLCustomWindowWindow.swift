//
//  KCSPXLCustomWindowWindow.swift
//  KCSPXLCustomWindow
//
//  Created by Szabolcs Toth on 25/01/2020.
//  Copyright © 2020 purzelbaum.hu. All rights reserved.
//

import Cocoa

public class KCSPXLCustomWindowWindow: NSWindow {

    override public init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
       super.init(contentRect: contentRect, styleMask: [.miniaturizable, .closable, .resizable, .titled],  backing: .buffered, defer: true)
        isMovableByWindowBackground = true
    }

}
