//
//  PerchasedIceCreamController.swift
//  IceCreamKiosk
//
//  Created by 쌩 on 4/3/24.
//

import UIKit

class PerchasedIceCreamViewController: UIViewController {

    //임시 데이터 불러오기
    let perchasedIceCreamList = IceCream.data
    //
    let cellName = "PerchasedTableViewCell"
    let cellReuseIdentifier = "perchasedCell"
    
    @IBOutlet weak var perchasedTitle: UILabel!
    @IBOutlet weak var perchasedTableView: UITableView!
    @IBOutlet weak var perchasedOkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        perchasedOkButton.layer.cornerRadius = 15
        perchasedTableView.dataSource = self
        perchasedTableView.delegate = self
        registerXib()
    }
    private func registerXib() {
        let nibName = UINib(nibName: cellName, bundle: nil)
        perchasedTableView.register(nibName, forCellReuseIdentifier: cellReuseIdentifier)
    }
}

extension PerchasedIceCreamViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return perchasedIceCreamList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = perchasedTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as! PerchasedTableViewCell
        
        let target = perchasedIceCreamList[indexPath.row]
//        let img = UIImage(named: "")
        cell.iceCreamNameLabel?.text = target.name
        cell.iceCreamExplanationLabel?.text = target.explanation
        cell.iceCreamAmountLabel?.text = String(target.amount)
        
        
        return cell
    }
    
    
    
    
}
