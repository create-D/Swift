//
//  Person.swift
//  06-KVC构造函数
//
//  Created by 董立权 on 2017/7/15.
//  Copyright © 2017年 董立权. All rights reserved.
//

import UIKit

//Any: 任何类型
//AnyObject: 对象类型
//KVC构造函数,是在运行时,动态的向对象发消息,给对象的属性赋值
//setValuesForKeys(dict):遍历dict,找到dict的key值,逐一给对象的属性赋值
//在kvc中,对于基本的数据类型,如果设为可选,不兼容,会赋值失败
//如果是基本的数据类型,我们需要给它附一个初值
class Person: NSObject {

    var name: String?
    var age: Int = 0
    
    //super.init() 在构造函数中,如果没有手动添加,则会自动添加在构造函数的最后面
    init(dict: [String: Any]) {
        super.init()
        //对象此时已创建
        setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forKey key: String) {
        super.setValue(value, forKey: key)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        //不要调用super
        print("key:\(key),value:\(String(describing: value))")
    }
    
    //实例方法
    func eat() {
        print("实例方法")
    }
    //类方法
    class func eat() {
        print("类方法")
    }
}
