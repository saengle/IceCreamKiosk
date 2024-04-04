//
//  ViewController.swift
//  IceCreamKiosk
//
//  Created by 쌩 on 4/2/24.
//

import UIKit

class ViewController: UIViewController {

        // Mark: 임시 뷰컨 이동 버튼
    @IBAction func tempButton(_ sender: Any) {
            // Mark: 이동할 스토리보드를 먼저 불러옴
        let perchasedSB = UIStoryboard(name: "PerchasedIceCreamScreen", bundle: .main)
        // Mark:  이동할 스토리보드에 연결된 뷰 컨트롤러를 불러옴
        guard let perchasedVC = perchasedSB.instantiateViewController(withIdentifier: "perchasedIceCreamViewController") as? PerchasedIceCreamViewController else { return }
        // 화면 전환 애니메이션 설정
        perchasedVC.modalTransitionStyle = .coverVertical
        // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        perchasedVC.modalPresentationStyle = .fullScreen
        // Mark: 뷰 컨트롤러를 프레젠트함
        self.present(perchasedVC, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

