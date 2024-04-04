//
//  ViewController.swift
//  IceCreamKiosk
//
//  Created by 쌩 on 4/2/24.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate {
    
    @IBOutlet weak var Menu: UITabBar!
    @IBOutlet weak var IceBar: UITabBarItem!
    @IBOutlet weak var IceCon: UITabBarItem!
    @IBOutlet weak var IceCup: UITabBarItem!
    @IBOutlet weak var IceBared: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Menu.delegate = self
        
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .white
            
            // 선택되지 않은 탭 아이템의 글씨 및 아이콘 색상을 검은색으로 설정합니다.
            let normalItemAttributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor.black
            ]
            appearance.stackedLayoutAppearance.normal.titleTextAttributes = normalItemAttributes
            appearance.stackedLayoutAppearance.normal.iconColor = .black
            
            // 선택된 탭 아이템의 글씨 색상을 핑크색으로 설정합니다.
            let selectedItemAttributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor.systemPink
            ]
            appearance.stackedLayoutAppearance.selected.titleTextAttributes = selectedItemAttributes
            appearance.stackedLayoutAppearance.selected.iconColor = .systemPink
            
            // UITabBar의 기본 외관과 스크롤된 상태의 외관을 설정합니다.
            Menu.standardAppearance = appearance
            Menu.scrollEdgeAppearance = appearance
        } else {
            // iOS 15 미만에서는 이전의 방법을 사용합니다.
            Menu.barTintColor = .white
            Menu.tintColor = .systemPink
            // 선택되지 않은 아이템의 색상을 검은색으로 설정합니다.
            UITabBar.appearance().unselectedItemTintColor = .black
        }
        
        // 아이템을 생성하고 설정합니다.
        let item1 = UITabBarItem(title: "IceBar", image: UIImage(named: "Tap Bar 1"), selectedImage: nil)
        let item2 = UITabBarItem(title: "IceCon", image: UIImage(named: "Tap Bar 2"), selectedImage: nil)
        let item3 = UITabBarItem(title: "IceCup", image: UIImage(named: "Tap Bar 3"), selectedImage: nil)
        let item4 = UITabBarItem(title: "IceBared", image: UIImage(named: "Tap Bar 4"), selectedImage: nil)
        
        // 이미지 크기 조절을 위해 UIEdgeInsets를 사용하여 내부 여백을 조절합니다.
        let inset: CGFloat = 5
        item1.imageInsets = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        item2.imageInsets = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        item3.imageInsets = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        item4.imageInsets = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        
        // Menu에 아이템을 설정합니다.
        Menu.items = [item1, item2, item3, item4]
    }
}
