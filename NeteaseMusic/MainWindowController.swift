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

    lazy var hostingView: NSView = {
        let view = NSHostingView(rootView: MainView())
        view.autoresizingMask = [.width, .height]
        return view
    }()

    lazy var contentView: NSView = {
        let view = NSVisualEffectView()
        view.autoresizingMask = [.width, .height]
        view.addSubview(hostingView)
        return view
    }()

    override var window: NSWindow? {
        didSet {
            window?.delegate = self
            window?.contentView = contentView
            window?.toolbar = NSToolbar()
        }
    }
}

extension MainWindowController: NSWindowDelegate {
    func windowShouldClose(_ sender: NSWindow) -> Bool {
        NSApp.hide(sender)
        return false
    }
}
