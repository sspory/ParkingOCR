//
//  ViewController.swift
//  ParkingOCR
//
//  Created by Dongyoung Kim on 11/23/21.
//

import UIKit
class ViewController: UIViewController {

    
    
    @IBAction func cameraBtn(_ sender: UIButton) {
        print("카메라 이동")
       
        //1 : 별도의 스토리 보드의 뷰를 호출시 스토리 보드의 클래스 명을 지정
        let secondStoryboard = UIStoryboard.init(name: "ScanView", bundle: nil)
        //2 : 지정된 클래스 명에 있는 뷰의 storyBoard의 id를 지정
        guard let second = secondStoryboard.instantiateViewController(identifier: "ScanViewController2") as? ScanViewController else {return}
        second.modalTransitionStyle = .coverVertical
        second.modalPresentationStyle = .popover
        //3 뷰를 호출
        present(second, animated: true, completion: nil)
        
        
        
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ScanViewController2")
//        vc?.modalTransitionStyle = .coverVertical
//        vc?.modalPresentationStyle = .popover
//        self.present(vc!, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("메인화면")
        // Do any additional setup after loading the view.
    }


}

