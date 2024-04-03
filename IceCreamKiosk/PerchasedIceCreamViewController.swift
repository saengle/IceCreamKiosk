//
//  PerchasedIceCreamController.swift
//  IceCreamKiosk
//
//  Created by 쌩 on 4/3/24.
//

import UIKit

class PerchasedIceCreamViewController: UIViewController {

    let perchasedTableViewCell = PerchasedTableViewCell()

    @IBOutlet weak var perchasedTitle: UILabel!
    
    @IBOutlet weak var perchasedTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension PerchasedIceCreamViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return perchasedTableViewCell
    }
    
    
    
    
}
