//
//  FavoriteButton.swift
//  FruitMart
//
//  Created by Channoori Park on 2022/05/30.
//  Copyright © 2022 Giftbot. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
    @EnvironmentObject private var store: Store
    let product: Product
    
    private var imageName: String {
        product.isFavorite ? "heart.fill" : "heart"
    }
    
    var body: some View {
        Symbol(imageName, scale: .large, color: .peach)
            .frame(width: 32, height: 32)
            .onTapGesture { self.store.toggleFavorite(of: self.product) }
        
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FavoriteButton(product: productSamples[0])
                .environmentObject(Store())
            FavoriteButton(product: productSamples[4])
                .environmentObject(Store())
        }
        .previewLayout(.sizeThatFits)
    }
}
