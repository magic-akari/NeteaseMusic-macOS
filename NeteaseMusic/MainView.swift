//
//  MainView.swift
//  NeteaseMusic
//
//  Created by 阿卡琳 on 2019/6/5.
//  Copyright © 2019 阿卡琳. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {

        VStack(spacing: 0) {
            HSplitView {
                AsideView().frame(minWidth: 200, idealWidth: 250, maxWidth: 480)
                ContentView().frame(minWidth: 480)
            }
            Divider()
            FooterView()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
