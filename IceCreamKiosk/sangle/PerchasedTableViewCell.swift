//
//  PerchasedTableViewCell.swift
//  IceCreamKiosk
//
//  Created by 쌩 on 4/3/24.
//

import UIKit

class PerchasedTableViewCell: UITableViewCell {
    
    @IBOutlet var iceCreamImage: UIImageView!
    @IBOutlet var iceCreamNameLabel: UILabel!
    @IBOutlet var iceCreamAmountLabel: UILabel!
    @IBOutlet var iceCreamExplanationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        // 셀 cornerradius 조정하면 보이는 뒷 부분 영역의 색상
        self.backgroundColor = UIColor(red: 255/255, green: 234/255, blue: 192/255, alpha: 1)
        //  셀 자체 백그라운드 컬러
//        self.contentView.backgroundColor = UIColor(red: 255/255, green: 234/255, blue: 192/255, alpha: 1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
