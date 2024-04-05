//
//  IceCream.swift
//  Ice99
//
//  Created by 쌩 on 4/2/24.
//

import UIKit

public typealias Codable = Decodable & Encodable

struct IceCreamList: Codable {
    let iceCream: [IceCream]
}

struct IceCream: Codable {
    let name: String
    let price: Int
    let explanation: String
    let image: String
    let type: String
    var amount: Int
}

extension IceCream {
//    static var data = [
//        IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요", image: "이미지", type: IceCreamType.corn, amount: 100),
//        IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요", image: "이미지", type: IceCreamType.corn, amount: 1),
//        IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요", image: "이미지", type: IceCreamType.corn, amount: 1),
//        IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요", image: "이미지", type: IceCreamType.corn, amount: 1),
//        IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요", image: "이미지", type: IceCreamType.corn, amount: 1),]
}
