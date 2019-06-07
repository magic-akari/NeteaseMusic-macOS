//
//  FooterView.swift
//  NeteaseMusic
//
//  Created by 阿卡琳 on 2019/6/5.
//  Copyright © 2019 阿卡琳. All rights reserved.
//

import AppKit
import SwiftUI

struct FooterView: View {

    @State var currentTime = 0.0
    @State var volume = 1.0

    var body: some View {

        HStack(spacing: 8) {
            Button(action: pass) {
                Image(nsImage: NSImage(named: "NSMediaBrowserMediaTypeAudioTemplate32")!)
            }.borderlessButtonStyle().frame(
                width: 50,
                height: 50,
                alignment: .center
            )

            Group {
                Button(action: pass) {
                    Image(nsImage: NSImage(named: "NSTouchBarSkipToStartTemplate")!)
                }.borderlessButtonStyle().frame(width: 32, height: 32, alignment: .center)

                Button(action: pass) {
                    Image(nsImage: NSImage(named: "NSTouchBarPlayTemplate")!)
                }.borderlessButtonStyle().frame(width: 32, height: 32, alignment: .center)

                Button(action: pass) {
                    Image(nsImage: NSImage(named: "NSTouchBarSkipToEndTemplate")!)
                }.borderlessButtonStyle().frame(width: 32, height: 32, alignment: .center)

            }

            Group {
                Text("00:00")
                Text("/")
                Text("00:00")
            }

            Slider(value: $currentTime, from: 0.0, through: 10.0).frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )

            Button(action: pass) {
                Image(nsImage: NSImage(named: "NSTouchBarAudioOutputVolumeHighTemplate")!)
            }.borderlessButtonStyle().frame(width: 32, height: 32, alignment: .center)

            Slider(value: $volume).frame(width: 100)

        }.padding(.horizontal, 8).frame(maxWidth: .infinity, maxHeight: .infinity)

    }

    func pass() {
    }
}

#if DEBUG
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
#endif
