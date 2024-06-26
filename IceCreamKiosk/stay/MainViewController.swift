//
//  ViewController.swift
//  IceCreamKiosk
//
//  Created by 쌩 on 4/2/24.
//

import Foundation
import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var productCollectionview: UICollectionView!
    var segmentedValue = 0
    var wholeIceCreamList = [IceCream]()
    static var classyfiedIceCreams = [[IceCream]]()
    var myIceCreamList = [IceCream]()

    override func viewDidLoad() {
        super.viewDidLoad()

        productCollectionview.dataSource = self
        productCollectionview.delegate = self

        productCollectionview.collectionViewLayout = createCompositionalLayoutForFirst()
        
        wholeIceCreamList = loadJson(filename: "IceCreamJson") ?? []
        classyfyIceCreams()
    }

    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            productCollectionview.reloadData()
            segmentedValue = sender.selectedSegmentIndex
        case 1:
            productCollectionview.reloadData()
            segmentedValue = sender.selectedSegmentIndex
        case 2:
            productCollectionview.reloadData()
            segmentedValue = sender.selectedSegmentIndex
        case 3:
            productCollectionview.reloadData()
            segmentedValue = sender.selectedSegmentIndex
        default:
            productCollectionview.reloadData()
            segmentedValue = sender.selectedSegmentIndex
        }
    }

    @IBAction func moveToBasket(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "BasketViewController") as? BasketViewController else { return }

        viewController.basketList = Self.classyfiedIceCreams.flatMap{$0}.filter { $0.amount != 0 }

        self.present(viewController, animated: true)

    }

    func loadJson(filename fileName: String) -> [IceCream]? {
        //json 파일 불러오기
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url) // Data 타입으로 변환
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(IceCreamList.self, from: data) // Data -> IceCreamList 타입
                return jsonData.iceCream // 리스트만 추출
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    func classyfyIceCreams() {
        var barIceCreamList = wholeIceCreamList.filter{$0.type == "bar"}
        var cornIceCreamList = wholeIceCreamList.filter{$0.type == "corn"}
        var cupIceCreamList = wholeIceCreamList.filter{$0.type == "cup"}
        var breadIceCreamList = wholeIceCreamList.filter{$0.type == "bread"}
        Self.classyfiedIceCreams = [barIceCreamList, cornIceCreamList, cupIceCreamList, breadIceCreamList]
    }
}


// 데이터 소스 설정 - 데이터와 관련된 것들
extension MainViewController: UICollectionViewDataSource {
    
    // 각 섹션에 들어가는 아이템 갯수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch segmentedValue {
        case 0:
            return Self.classyfiedIceCreams[0].count
        case 1:
            return Self.classyfiedIceCreams[1].count
        case 2:
            return Self.classyfiedIceCreams[2].count
        case 3:
            return Self.classyfiedIceCreams[3].count
        default:
            return 0
        }
    }

    // 각 콜렉션뷰 쎌에 대한 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: IceCreamProductViewCell.self), for: indexPath) as! IceCreamProductViewCell
        
        switch segmentedValue {
        case 0:
            cell.index = indexPath
            cell.type = 0
            cell.setUp()

        case 1:
            cell.index = indexPath
            cell.type = 1
            cell.setUp()

        case 2:
            cell.index = indexPath
            cell.type = 2
            cell.setUp()

        case 3:
            cell.index = indexPath
            cell.type = 3
            cell.setUp()

        default:
            cell.nameLabel.text = ""
            cell.explanationLabel.text = ""
            cell.imageView.image = UIImage(named: "watermelon-bar")
        }
        return cell
    }
}

// 콜렉션뷰 델리게이트 - 액션과 관련된 것들
extension MainViewController: UICollectionViewDelegate {

}
// 콜렉션뷰 콤포지셔널 레이아웃 관련
extension MainViewController {

    // 콤포지셔널 레이아웃 설정
    fileprivate func createCompositionalLayoutForFirst() -> UICollectionViewLayout {
        print("createCompositionalLayoutForFirst() called")
        // 콤포지셔널 레이아웃 생성
        let layout = UICollectionViewCompositionalLayout{
            // 만들게 되면 튜플 (키: 값, 키: 값) 의 묶음으로 들어옴 반환 하는 것은 NSCollectionLayoutSection 콜렉션 레이아웃 섹션을 반환해야함
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in

            // 아이템에 대한 사이즈 - absolute 는 고정값, estimated 는 추측, fraction 퍼센트
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))

            // 위에서 만든 아이템 사이즈로 아이템 만들기
            let item = NSCollectionLayoutItem(layoutSize: itemSize)

            // 아이템 간의 간격 설정
            item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 2, bottom: 5, trailing: 2)

            // 변경할 부분
            let groupHeight =  NSCollectionLayoutDimension.fractionalWidth(1/3)

            // 그룹사이즈
            let grouSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: groupHeight)

            // 변경할 부분
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: grouSize, subitem: item, count: 1)

            // 그룹으로 섹션 만들기
            let section = NSCollectionLayoutSection(group: group)

            // 섹션에 대한 간격 설정
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 10, bottom: 20, trailing: 10)
            return section
        }
        return layout
    }
}
