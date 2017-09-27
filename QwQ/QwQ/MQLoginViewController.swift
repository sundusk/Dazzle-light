//
//  ViewController.swift
//  QwQ
//
//  Created by sundusk on 2017/7/28.
//  Copyright © 2017年 sundusk. All rights reserved.
//

import UIKit
import SnapKit
class MQLoginViewController: UIViewController {
    let MQiconView = UIView()
    let MQnameField = UITextField()
    let MQpasswordField = UITextField()
    let MQagainPasswordField = UITextField()
    let MQLogBth = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .MQYellowColor()
        setupUI()
    }
    func setupUI(){
        self.view.addSubview(MQiconView)
        self.view.addSubview(MQnameField)
        self.view.addSubview(MQpasswordField)
        self.view.addSubview(MQagainPasswordField)
        self.view.addSubview(MQLogBth)
        
        MQiconView.snp.makeConstraints { (make) in
           make.top.equalTo(self.view).offset(SCREEN_HEIGHT/8)
           make.height.width.equalTo(60)
           make.centerX.equalTo(self.view)
        }
        MQnameField.snp.makeConstraints { (make) in
           make.left.equalTo(self.view).offset(SCREEN_WIDTH/10)
           make.right.equalTo(self.view.snp.right).offset(-SCREEN_WIDTH/10)
           make.top.equalTo(MQiconView).offset(SCREEN_HEIGHT/8)
           make.height.equalTo(30)
        }
        MQpasswordField.snp.makeConstraints { (make) in
            
            make.top.equalTo(MQnameField).offset(SCREEN_HEIGHT/10)
            make.left.equalTo(self.view).offset(SCREEN_WIDTH/10)
            make.right.equalTo(self.view.snp.right).offset(-SCREEN_WIDTH/10)
            
            make.height.equalTo(30)
        }
        MQagainPasswordField.snp.makeConstraints { (make) in
            make.top.equalTo(MQpasswordField).offset(SCREEN_HEIGHT/10)
            make.left.equalTo(self.view).offset(SCREEN_WIDTH/10)
            make.right.equalTo(self.view.snp.right).offset(-SCREEN_WIDTH/10)
            
            make.height.equalTo(30)
        }
        MQLogBth.snp.makeConstraints { (make) in
            
           make.top.equalTo(MQagainPasswordField.snp.bottom).offset(SCREEN_HEIGHT/10)
            make.left.equalTo(self.view).offset(SCREEN_WIDTH/10)
            make.right.equalTo(self.view).offset(-SCREEN_WIDTH/10)
            make.height.equalTo(40)
        }
        
        
        MQnameField.placeholder = "请输入账号"
        MQpasswordField.placeholder = "请输入密码"
        MQagainPasswordField.placeholder = "请再次输入密码"
        MQnameField.borderStyle = UITextBorderStyle.roundedRect
        MQpasswordField.borderStyle = UITextBorderStyle.roundedRect
        MQagainPasswordField.borderStyle = UITextBorderStyle.roundedRect
        MQLogBth.setTitle("我是按钮", for:UIControlState.normal)
        MQLogBth.addTarget(self, action:#selector(playLog), for:.touchUpInside)
        MQiconView.backgroundColor = UIColor.MQRedColor()
        MQLogBth.backgroundColor = .red
    }
    func playLog(){
        
        
        if MQagainPasswordField.text == MQagainPasswordField.text{
            self.dismiss(animated: true, completion: nil)
        }else{
            XMToastView.showInfo(info: "密码不一致", bgColor: UIColor.gray, inView: self.view, vertical: 0.5)
        }
       
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

