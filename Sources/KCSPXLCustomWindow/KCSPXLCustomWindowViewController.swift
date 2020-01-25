//
//  KCSPXLCustomWindowViewController.swift
//  KCSPXLCustomWindow
//
//  Created by Szabolcs Toth on 25/01/2020.
//  Copyright © 2020 purzelbaum.hu. All rights reserved.
//

import Cocoa

public class KCSPXLCustomWindowViewController: NSViewController {
        
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
        
    public required init?(coder: NSCoder) {
        fatalError()
    }
    
    override public func loadView() {
        self.view = NSView()
        view.frame.size = CGSize(width: 600, height: 300)
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.white.cgColor
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        print("Hello, I'm from SPM ViewController module.")
    }

}
