//: Playground - noun: a place where people can play

import UIKit
//swift类的构造过程:用类来创建一个对象的过程
//类的构造过程,要保证类的所有属性都被正确初始化
//初始化:对类的属性赋值(存储属性)
//swift类的构造过程:先保证自己的存储属性被正确初始化,再保证父类的存储属性被正确初始化(调用父类的构造函数)
class Dog: NSObject {
    var name: String = "旺财"
}

//属性
//存储属性:当对象创建之后属性一直存在,直到对象释放
//计算属性:当调用这个属性的时候,临时生成一个值
//可选属性:属性是一个可选值
//懒加载属性:当首次调用的时候加载

//重载:在一个类中,存在多个名字一样的方法,但是参数的个数和名字不一样

//便利构造器:简化类的构造过程的

class Person: NSObject {
    //存储属性
    var name: String
    var age: Int = 1
    //计算属性(构造过程不需要考虑)
    var kindName: String {
        return "hi\(name)"
    }
    //可选属性(有一个默认值nil)
    var girlFriend: String?
    //懒加载属性(对象创建完成之后,首次调用才会创建)
    lazy var pet: Dog = Dog()
    
    convenience init?(name: String,age: Int) {
        if age > 100 {
            return nil
        }
        self.init(name:name)
        
        
        
    }
    init(name: String) {
        self.name = name
    }
    
    func eat() {
        print("吃")
    }
}
let xiaoming = Person(name: "xiaoming", age: 18)
//print("name:\(xiaoming.name),age:\(xiaoming.age),kindName:\(xiaoming.kindName),girlFriend:\(xiaoming.girlFriend),pet:\(xiaoming.pet)")

let button = UIButton(type: .contactAdd)







