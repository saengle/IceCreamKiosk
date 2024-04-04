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

        // Do any additional setup after loading the view.
    }


    @IBAction func moveToBasket(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "BasketViewController") as? BasketViewController else { return }
        self.present(viewController, animated: true)
    }

}
