//
//  Person.swift
//  07-swift电话本
//
//  Created by 董立权 on 2017/7/15.
//  Copyright © 2017年 董立权. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name: String?
    var phoneNum: String?
    //KVC构造方法
    init(dict: [String: Any]) {
        super.init()
        setValuesForKeys(dict)
    }
    //异常处理,如果找不到key值,会调用该方法
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
    
    class func loadPersons(callBack: @escaping ([Person])->()) {
        DispatchQueue.global().async {
            //模拟耗时
            Thread.sleep(forTimeInterval: 1.0)
            //模拟远程获取数据
            let responseDictArr: [[String: Any]] = [
                ["name":"zhang1","phoneNum":"110"],
                ["name":"zhang2","phoneNum":"111"],
                ["name":"zhang3","phoneNum":"112"],
                ["name":"zhang4","phoneNum":"113"],
                ["name":"zhang5","phoneNum":"114"]
            ]
            //数据字典转模型
            //创建一个可变的空数组
            var personArray:[Person] = []
        
            for personDict in responseDictArr {
                let person = Person(dict: personDict)
                personArray.append(person)
            }
            DispatchQueue.main.async {
                callBack(personArray)
            }
            
        }
    }
}
