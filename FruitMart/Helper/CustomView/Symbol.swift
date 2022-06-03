//
//  Symbol.swift
//  FruitMart
//
//  Created by Channoori Park on 2022/06/03.
//  Copyright © 2022 Giftbot. All rights reserved.
//

import SwiftUI

struct Symbol: View {
    let systemName: String
    let imageScale: Image.Scale
    let color: Color?
    
    init(
        _ systemName: String,
        scale imageScale: Image.Scale = .medium,
        color: Color? = nil
    ) {
        self.systemName = systemName
        self.imageScale = imageScale
        self.color = color
    }
    
    var body: some View {
        Image(systemName: systemName)
            .imageScale(imageScale)
            .foregroundColor(color)
    }
}

struct Symbol_Previews: PreviewProvider {
    static var previews: some View {
        Symbol("heart.fill", scale: .large, color: Color.peach)
        
    }
}
