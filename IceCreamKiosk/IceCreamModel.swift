//
//  IceCream.swift
//  Ice99
//
//  Created by 쌩 on 4/2/24.
//

import UIKit

struct IceCream {
    let name: String
    let price: Int
    let explanation: String
    let image: String
    let type: IceCreamType
    var amount: Int
}

enum IceCreamType: String {
        case corn
        case bar
        case cup
        case bread
}
