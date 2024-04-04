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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
