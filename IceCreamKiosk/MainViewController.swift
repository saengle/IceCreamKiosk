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
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "Basket") as? BasketViewController else { return }
        self.present(viewController, animated: true)
    }
    
    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

}
