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

    var basketList = [IceCream]()

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
        self.dismiss(animated: true)
    }

    @IBAction func purchaseButtonAction(_ sender: Any) {
        //alert
        let sheet = UIAlertController(title: "구매", message: "구매하시겠습니까?", preferredStyle: .alert)

        sheet.addAction(UIAlertAction(title: "아니요", style: .cancel, handler: nil))

        //complete handler에 화면 이동 및 리스트 전달 메서드 추가

        sheet.addAction(UIAlertAction(title: "네",
                                      style: .default,
                                      handler: {_ in 
            guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "perchasedIceCreamViewController") as? PerchasedIceCreamViewController else { return }

            viewController.modalPresentationStyle = .fullScreen

            //구매 완료 리스트 전달
            viewController.perchasedIceCreamList = self.basketList

            self.present(viewController, animated: true) }
        ))

        present(sheet, animated: true)
        //navigation to purchased list page with list
    }
}

extension BasketViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        basketList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = basketCollectionView.dequeueReusableCell(withReuseIdentifier: BasketCollectionViewCell.cellId, for: indexPath) as! BasketCollectionViewCell

                //이미지 asset에 이름
        cell.imageView.image = UIImage(named: basketList[indexPath.row].image)
        
        cell.nameLabel.text = basketList[indexPath.row].name
        cell.countLabel.text = "\(basketList[indexPath.row].amount) 개"

        return cell
    }

}
