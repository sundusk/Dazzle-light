//
//  MQThreeViewController.swift
//  QwQ
//
//  Created by sundusk on 2017/7/28.
//  Copyright © 2017年 sundusk. All rights reserved.
//

import UIKit

class MQThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
