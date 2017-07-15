//
//  ViewController.swift
//  03-闭包的使用
//
//  Created by 董立权 on 2017/7/15.
//  Copyright © 2017年 董立权. All rights reserved.
//

//需求:下载movie,更新UI
//1.下载,定义成函数
//2.更新,使用闭包
//使用最多的场景:异步加载数据,加载完成之后刷新UI
//异步加载数据:定义成函数
//加载完成数据之后刷新UI,定义成闭包
//把闭包作为参数传递
//在函数中执行闭包


import UIKit

class ViewController: UIViewController {

    var callBack: ((String)->())?
    
    func customLabel(title: String, fontSize: CGFloat = 13,alignment: NSTextAlignment = .left,numberOfLines: Int = 0,backgroundColor: UIColor = UIColor.yellow) -> UILabel {
        let label = UILabel(frame: CGRect(x: 20,y: 40,width: 300,height: 40))
        label.text = title
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.textAlignment = alignment
        label.numberOfLines = numberOfLines
        label.backgroundColor = backgroundColor
        return label
    }
    deinit {
        print("释放了")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let label = customLabel(title: "正在下载...")
        view.addSubview(label)
        
//        func updateUI(movieName: String){
//            label.text = "\(movieName),下载完成"
//        }
//        let updateUI = {
//            (movieName: String) in
//            label.text = "\(movieName),下载完成"
//        }
        //下载电影,完成后更新UI
        //downloadMovie(callBack: updateUI)
        //尾随闭包的写法
        downloadMovie {
            //解除循环引用
            //[weak self]时,代表self是可以被释放的,一旦释放,就代表self设为nil,self就是一个可选值
            [weak self](movieName: String) in
            label.text = "\(movieName),下载完成"
            print(self!)
        }
    }
    

    func downloadMovie(callBack:@escaping (String) -> ()) {
        self.callBack = callBack
        //模拟异步加载数据
        //尾随闭包:当闭包作为函数的最后一个参数的时候,可以把闭包写在小括号外面,如果函数的参数,只有闭包一个参数,则连小括号都可以省略
//        DispatchQueue.global().async(execute: ??)
        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: 2)
            let movieName = "电影"
            DispatchQueue.main.async {
                //刷新UI
                callBack(movieName)
                
            }
        }
    }
    


}

