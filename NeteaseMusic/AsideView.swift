//
//  AsideView.swift
//  NeteaseMusic
//
//  Created by 阿卡琳 on 2019/6/5.
//  Copyright © 2019 阿卡琳. All rights reserved.
//

import SwiftUI

struct AsideView: View {
    var body: some View {
        Text( "Hello Aside" ).frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
    }
}

#if DEBUG
struct AsideView_Previews: PreviewProvider {
    static var previews: some View {
        AsideView().previewLayout(.fixed(width: 250, height: 540))
    }
}
#endif
