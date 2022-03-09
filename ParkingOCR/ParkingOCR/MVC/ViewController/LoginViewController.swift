//
//  LoginViewController.swift
//  ParkingOCR
//
//  Created by Dongyoung Kim on 3/6/22.
///  컨트롤러  처리 로작: 로그인 처리 로직
///  Lite : 간편 비밀번호 로그인 , Pro: 개인 서버 로그인
///    lite 버전 기준 비밀번호가 없을시 생성, 있을시 로그인 입력 뷰를 생성
///
///    TODO: 분기를 입력컨트롤을 생성하느냐 아님 히든 처리 방색으로 생성 하는지를 고려 해야함. 이경우 storyboard 보다는 swiftUI 방식을 고려
///    다만 자동으로 스토리 보드를 넘겨주는 방식으로 제작하여 컨트롤러를 통합하면 단일 컨트롤러 다중 스토리 보드 형태로 제작 해야 할듯?

import UIKit
import SnapKit


class LoginViewController:UIViewController{
    
    
    let UserData = UserDefaults.standard
    
    
    
    private let LoginBtn: UIButton = {
        let LoginBtn = UIButton()
        LoginBtn.setTitle("로그인", for: .normal)
        LoginBtn.setTitleColor(.white, for: .normal)
        LoginBtn.setTitleColor(.blue, for: .highlighted)
        LoginBtn.backgroundColor = .systemBlue
        return LoginBtn
    }()
    
    //뷰가 생성시
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.LoginBtn.contentVerticalAlignment = .top
        self.LoginBtn.contentEdgeInsets.top = 20
        self.view.addSubview(self.LoginBtn)
        self.LoginBtn.snp.makeConstraints{
            $0.left.right.bottom.equalToSuperview()
            $0.top.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-60)
        }
        
        
        
        
        let password = UserData.string(forKey: "LoginPasssword")
        
        //간편비밀번호가 없을시 로그인 생성뷰/ 또는 로그인 생성 비밀번호를 제작
        if (password == nil){
            createPasword()
        }else{
            // 패스워드가 있을 경우 로그인 처리 로직 동작
        }
        
    }
    
}



extension LoginViewController{
    
    //로그인 생성 호출 및 저장
    func createPasword(){
        
    }
    
    //암호 변경
    func changePasswrd(){
        
    }
    
    
}
