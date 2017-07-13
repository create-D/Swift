//
//  ViewController.swift
//  01-Swift初体验
//
//  Created by 董立权 on 2017/7/14.
//  Copyright © 2017年 董立权. All rights reserved.
//

import UIKit
//4.swift类的所有的声名和实现都写在class最外层的大括号里面
class ViewController: UIViewController {
    //5.重写方法需要加上override
    override func viewDidLoad() {
        //6.swift使用点语法调用一个方法
        super.viewDidLoad()
        //var声明一个变量,let声明一个常量
        let firstView = UIView(frame: CGRect(x: 10, y: 30, width: 200, height: 200))
        //设置背景颜色
        firstView.backgroundColor = UIColor.red
        //添加到根视图
        view.addSubview(firstView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

