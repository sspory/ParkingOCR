//
//  CustomAlert.swift
//  ParkingOCR
//
//  Created by Dongyoung Kim on 3/6/22.
//

import Foundation
import UIKit

class CustomAlert:UIView{
    static let instance = CustomAlert()
    
    @IBOutlet weak var MasterView: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        Bundle.main.loadNibNamed("CustomView", owner: nil, options: nil)
        self.commonInit()

    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    
    private func commonInit(){
        MasterView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        MasterView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    
    //케이스에 따른 확인 취소 버튼 삽입
    enum AlertType{
        case oneButton
        case twoButton
    }
    
    //케이스 문에 따른 처리
    func showAlert(title:String, message:String, alertType: AlertType){
        switch alertType {
        case .oneButton:
            print("one")
        case .twoButton:
            print("two")
        }
        
    }
}
