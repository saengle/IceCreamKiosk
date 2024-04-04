//
//  ProductViewCell.swift
//  IceCreamKiosk
//
//  Created by Developer_P on 4/4/24.
//

import Foundation
import UIKit

class IceCreamProductViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var explanationLabel: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!

     override init(frame: CGRect) {
         super.init(frame: frame)
     }
     
     required init?(coder: NSCoder) {
         super.init(coder: coder)
     }

    @IBAction func countChanged(_ sender: UIStepper) {
    }
    
 }
