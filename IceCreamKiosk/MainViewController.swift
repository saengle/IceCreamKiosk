//
//  ViewController.swift
//  IceCreamKiosk
//
//  Created by 서수영 on 4/3/24.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func moveToBasket(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "BasketViewController") as? BasketViewController else { return }


            // MARK: - 장바구니 데이터 전달
        viewController.basketList = [
            IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요1", image: "이미지", type: IceCreamType.corn, amount: 100),
            IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요2", image: "이미지", type: IceCreamType.corn, amount: 1),
            IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요3", image: "이미지", type: IceCreamType.corn, amount: 1),
            IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요4", image: "이미지", type: IceCreamType.corn, amount: 1),
            IceCream(name: "구구콘", price: 1500, explanation: "구구콘은 맛있어요5", image: "이미지", type: IceCreamType.corn, amount: 1),
        ]



        self.present(viewController, animated: true)
    }

}
