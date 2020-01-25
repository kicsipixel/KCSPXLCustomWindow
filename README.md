# KCSPXLCustomWindow

### Custom NSWindow Swift Package

1. Create a macOS project
2. Delete Window and ViewController from .xib
3. Add KCSPXLCustomWindow package
4. Add to `AppDelegate.swift` 
`lazy var kcsplWindowController = KCSPXLCustomWindowWindowController()`
5. Add to `func applicationDidFinishLaunching(_ aNotification: Notification)`
        `kcspxlWindowController.showWindow(nil)`
