//
//  ViewController.swift
//  ParkingOCR
//
//  Created by Dongyoung Kim on 11/23/21.
//
// 메인 뷰컨트롤러, 메인이 될 예정
// 구동 순서 런처 스크린 -> 스플래쉬(로딩 및 서버 연결 처리 ) -> 로구인 화면 -> 메인(웹뷰 또는 네이티브 추후 선택) -> 각 뷰 연결

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
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("메인화면")
        // Do any additional setup after loading the view.
    }


}

