//
//  ProductViewCell.swift
//  IceCreamKiosk
//
//  Created by Developer_P on 4/4/24.
//

import Foundation
import UIKit

class IceCreamProductViewCell: UICollectionViewCell {
    @IBOutlet weak var productpric: UIStepper!
    @IBOutlet weak var iceCreamimg: UIImageView!
    @IBOutlet weak var iceCreamtext: UILabel!
    @IBOutlet weak var iceCreamQuantity: UITextField!
    @IBOutlet weak var iceCreamPrice: UITextField!
    
    // UILabel 프로퍼티 추가
     var iceCreamtextLabel: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         // 레이블 설정 (예: 폰트, 색상 등)
         label.numberOfLines = 0 // 텍스트 허용 여러줄
         label.text = "제품명: 수박바 \n개당: 1,000원\n 원산지: 국내산" //텍스트 설정
         return label
     }()
     
     override init(frame: CGRect) {
         super.init(frame: frame)
         // 레이블을 셀의 서브뷰로 추가
         contentView.addSubview(iceCreamtextLabel)
         // 레이블의 오토레이아웃 설정
         setupIceCreamTextLabelConstraints() // 이 메서드에서 오토레이아웃을 설정해주세요
     }
     
     required init?(coder: NSCoder) {
         super.init(coder: coder)
         // Interface Builder를 통한 초기화 시 사용됩니다.
     }
     
     // 레이블의 오토레이아웃 설정 메서드
     private func setupIceCreamTextLabelConstraints() {
         // iceCreamtextLabel에 대한 오토레이아웃 코드 작성
     }
 }
