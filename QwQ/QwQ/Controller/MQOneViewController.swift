//
//  MQOneViewController.swift
//  QwQ
//
//  Created by sundusk on 2017/7/28.
//  Copyright © 2017年 sundusk. All rights reserved.
//

import UIKit

class MQOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        
        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        print("将要显示")
        var password:Int? = 0
        password = 1
        if password == 1{
            let MQLogView = MQLoginViewController()
            self.present(MQLogView, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
