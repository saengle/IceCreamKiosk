//
//  PerchasedIceCreamController.swift
//  IceCreamKiosk
//
//  Created by 쌩 on 4/3/24.
//

import UIKit

class PerchasedIceCreamViewController: UIViewController {

    //임시 데이터 불러오기
    var perchasedIceCreamList = [IceCream]()
    // 셀 xib 연결
    let cellName = "PerchasedTableViewCell"
    let cellReuseIdentifier = "perchasedCell"
    let cellSpacingHeight: CGFloat = 10
    
    @IBOutlet weak var perchasedTitle: UILabel!
    @IBOutlet weak var perchasedTableView: UITableView!
    @IBOutlet weak var perchasedOkButton: UIButton!
    @IBAction func perchasedCheckButton(_ sender: Any) {
        //메인 페이지로 이동 함수 작성
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        perchasedOkButton.layer.cornerRadius = 15
        perchasedTableView.dataSource = self
        perchasedTableView.delegate = self
        registerXib()
    }
    // 셀 xib 등록
    private func registerXib() {
        let nibName = UINib(nibName: cellName, bundle: nil)
        perchasedTableView.register(nibName, forCellReuseIdentifier: cellReuseIdentifier)
    }
}

extension PerchasedIceCreamViewController: UITableViewDataSource, UITableViewDelegate {
    // 셀 높이
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
    // 셀간 간격
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    //Section당 Row의 수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    //section 수
    func numberOfSections(in tableView: UITableView) -> Int {
        return perchasedIceCreamList.count
    }
    // Cell 설정
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = perchasedTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as! PerchasedTableViewCell
        
        let target = perchasedIceCreamList[indexPath.section]
//        let img = UIImage(named: "")
        cell.iceCreamNameLabel?.text = target.name
        cell.iceCreamExplanationLabel?.text = target.explanation
        cell.iceCreamAmountLabel?.text = "\(target.amount)개"
        
        
        return cell
    }
}
