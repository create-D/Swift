//: [Previous](@previous)

import Foundation

//类名要大写
class Person: NSObject {
    //属性
    var name: String
    var age: Int
    
    //构造函数
    init(name: String,age: Int) {
        self.name = name
        self.age = age
        super.init()
    }
    
    //方法
    func eat() {
        print("吃")
    }
}