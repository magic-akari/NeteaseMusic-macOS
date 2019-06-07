//
//  ContentView.swift
//  NeteaseMusic
//
//  Created by 阿卡琳 on 2019/6/4.
//  Copyright © 2019 阿卡琳. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello Content").frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
