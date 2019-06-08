//
//  MainWindowController.swift
//  NeteaseMusic
//
//  Created by 阿卡琳 on 2019/6/7.
//  Copyright © 2019 阿卡琳. All rights reserved.
//

import Cocoa
import SwiftUI

class MainWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()

        if let contentView = self.window?.contentView {
            let hostingView = NSHostingView(rootView: MainView())
            hostingView.frame = contentView.frame
            hostingView.autoresizingMask = [.width, .height]
            contentView.addSubview(hostingView)
        }

    }
}

extension MainWindowController: NSWindowDelegate {
    func windowShouldClose(_ sender: NSWindow) -> Bool {
        NSApp.hide(sender)
        return false
    }
}
