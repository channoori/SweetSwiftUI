//
//  ResizedImage.swift
//  FruitMart
//
//  Created by Channoori Park on 2022/06/03.
//  Copyright © 2022 Giftbot. All rights reserved.
//

import SwiftUI

struct ResizedImage: View {
    let systemName: String
    let contentMode: ContentMode
    let renderingMode: Image.TemplateRenderingMode?
    
    init(
        _ systemName: String,
        contentMode: ContentMode = .fill,
        renderingMode: Image.TemplateRenderingMode? = nil
    ) {
        self.systemName = systemName
        self.contentMode = contentMode
        self.renderingMode = renderingMode
    }
    
    var body: some View {
        Image(systemName: systemName)
            .renderingMode(renderingMode)
            .resizable()
            .aspectRatio(contentMode: contentMode)
    }
}

struct ResizedImage_Previews: PreviewProvider {
    static var previews: some View {
        ResizedImage("SwiftUI", contentMode: .fit, renderingMode: .original)
    }
}
