//
//  ViewController.swift
//  05-便利构造器
//
//  Created by 董立权 on 2017/7/15.
//  Copyright © 2017年 董立权. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel(title: "hello", fontSize: 13, alignment: .left, textColor: UIColor.blue, numberOfLines: 0)
        
        let label2 = UILabel(title: "hello")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

