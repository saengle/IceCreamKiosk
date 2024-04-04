//
//  ProductViewCell.swift
//  IceCreamKiosk
//
//  Created by Developer_P on 4/4/24.
//

import Foundation
import UIKit

class CustomcollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var ProDuctImg: UIImageView!
    @IBOutlet weak var ProDuctName: UILabel!
    
    var imageName : String = "" {
        didSet{
            print("CustomcollectionViewCell / imageName - didSet() : \(imageName)")
            // 쏄의 UI 설정
            self.ProDuctImg.image = UIImage(systemName: imageName)
            self.ProDuctName.text = imageName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("MyCustomCollectionViewCell - awakeFromNib() called")
        self.contentView.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        self.contentView.layer.cornerRadius = 8
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
    }
    
}
