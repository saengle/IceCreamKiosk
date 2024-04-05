//
//  ProductViewCell.swift
//  IceCreamKiosk
//
//  Created by Developer_P on 4/4/24.
//

import Foundation
import UIKit

class IceCreamProductViewCell: UICollectionViewCell {

    var index: IndexPath?
    var type: Int?

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var explanationLabel: UILabel!

    @IBOutlet weak var countLabel: UILabel!

    @IBOutlet weak var countStepper: UIStepper!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @IBAction func countChanged(_ sender: UIStepper) {
        MainViewController.classyfiedIceCreams[type!][index!.row].amount = Int(sender.value)

        countLabel.text = "\(MainViewController.classyfiedIceCreams[type!][index!.row].amount)"
    }

    func setUp() {
        nameLabel.text = MainViewController.classyfiedIceCreams[type!][index!.row].name
        explanationLabel.text = MainViewController.classyfiedIceCreams[type!][index!.row].explanation
        countLabel.text = "\(MainViewController.classyfiedIceCreams[type!][index!.row].amount)"
        countStepper.value = Double(MainViewController.classyfiedIceCreams[type!][index!.row].amount)
    }

//    override func prepareForReuse() {
//    }
}
