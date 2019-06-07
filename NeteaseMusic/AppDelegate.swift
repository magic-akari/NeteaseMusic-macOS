//
//  AppDelegate.swift
//  NeteaseMusic
//
//  Created by 阿卡琳 on 2019/6/4.
//  Copyright © 2019 阿卡琳. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var windowController: MainWindowController!

    func applicationDidFinishLaunching(_ aNotification: Notification) {

        windowController = MainWindowController(
            window: NSWindow(
                contentRect: NSRect(x: 0, y: 0, width: 960, height: 600),
                styleMask: [.titled, .closable, .miniaturizable, .resizable, .unifiedTitleAndToolbar],
                backing: .buffered,
                defer: true
            )
        )

        windowController.window?.titleVisibility = .hidden
        windowController.window?.titlebarAppearsTransparent = true
        windowController.window?.minSize = NSSize(width: 960, height: 600)
        windowController.window?.center()

        windowController.showWindow(self)

    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}
