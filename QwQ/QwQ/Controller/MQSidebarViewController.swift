//
//  MQSidebarViewController.swift
//  QwQ
//
//  Created by sundusk on 2017/7/29.
//  Copyright © 2017年 sundusk. All rights reserved.
//

import UIKit

class MQSidebarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.MQRedColor()
        setupUI()
    }
    // 添加容器视图控制器
    func setupUI(){
        let mqChildView = MQMainViewController()
        self.addChildViewController(mqChildView)
        mqChildView.view.frame = self.view.bounds
        self.view.addSubview(mqChildView.view)
        // 确定父控制器
        mqChildView.didMove(toParentViewController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
