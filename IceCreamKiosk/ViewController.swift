//
//  ViewController.swift
//  IceCreamKiosk
//
//  Created by 쌩 on 4/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var titleLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 새로운 글꼴 생성
        let font = UIFont(name: "BinggraeSamanco-Bold", size: 16)
        
        // 새로운 글꼴을 적용한 속성 문자열 생성
        let attributedString = NSAttributedString(string: "Your Text Here", attributes: [NSAttributedString.Key.font: font as Any])
        
        // UILabel에 적용
        titleLabel.attributedText = attributedString
    }
}
