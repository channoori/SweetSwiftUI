//
//  OrderCompletedMessage.swift
//  FruitMart
//
//  Created by Channoori Park on 2022/06/03.
//  Copyright © 2022 Giftbot. All rights reserved.
//

import SwiftUI

struct OrderCompletedMessage: View {
    var body: some View {
        Text("주문 완료!")
            .font(.system(size: 24))
            .bold()
            .kerning(2)
    }
}

struct OrderCompletedMessage_Previews: PreviewProvider {
    static var previews: some View {
        OrderCompletedMessage()
    }
}
