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

extension IceCream {
    static var data = [
        IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요", image: "이미지", type: IceCreamType.corn, amount: 1),
        IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요", image: "이미지", type: IceCreamType.corn, amount: 1),
        IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요", image: "이미지", type: IceCreamType.corn, amount: 1),
        IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요", image: "이미지", type: IceCreamType.corn, amount: 1),
        IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요", image: "이미지", type: IceCreamType.corn, amount: 1),]
}
