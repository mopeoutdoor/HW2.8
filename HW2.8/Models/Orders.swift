//
//  Orders.swift
//  HW2.8
//
//  Created by Lev Litvak on 23.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import Foundation

class Orders {
    static var shared = Orders()
    var orderList: [Order] = []
    
    func appendNewOrder(order: Order) {
        orderList.append(order)
    }
}
