//
//  ViewController.swift
//  IceCreamKiosk
//
//  Created by 쌩 on 4/2/24.
//

import UIKit

class BasketViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var basketCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let customDetent = UISheetPresentationController.Detent.custom(identifier: .init("customDetent")) { _ in

            //올라오는 높이
            return 600
        }

        if let sheetPresentationController = sheetPresentationController {
            sheetPresentationController.detents = [customDetent]
            sheetPresentationController.prefersGrabberVisible = true
        }

        basketCollectionView.delegate = self
        basketCollectionView.dataSource = self

//        basketCollectionView.backgroundColor =
    }

    @IBAction func cancelButtonAction(_ sender: Any) {

        //list reset & navigation back
    }

    @IBAction func purchaseButtonAction(_ sender: Any) {
        //alert
        let sheet = UIAlertController(title: "구매", message: "구매하시겠습니까?", preferredStyle: .alert)

        sheet.addAction(UIAlertAction(title: "아니요", style: .cancel, handler: nil))

        //complete handler에 화면 이동 및 리스트 전달 메서드 추가
        sheet.addAction(UIAlertAction(title: "네", style: .default, handler: nil))

        present(sheet, animated: true)
        //navigation to purchased list page with list
    }
}

extension BasketViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = basketCollectionView.dequeueReusableCell(withReuseIdentifier: BasketCollectionViewCell.cellId, for: indexPath) as! BasketCollectionViewCell

        cell.imageView.image = UIImage(systemName: "heart.fill")
        cell.nameLabel.text = "수박바"
        cell.countLabel.text = "2 개"

        return cell
    }

}