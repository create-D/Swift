//: [Previous](@previous)

import Foundation

class Person: NSObject {
    var name: String
    var age: Int = 0
    var weight: Float = 8 {
        //将要给weight赋值
        willSet(newValue) {
            print("====\(newValue)")
        }
        //已经给weight赋值成功
        didSet(oldValue) {
            print("====\(oldValue)")
            if weight > 20 {
                print("该减肥了")
            }
            if weight < 5 {
                print("吃")
            }
        }
    }
    init(name: String) {
        self.name = name
        super.init()
    }
}

let p = Person(name: "xiaoming")
print(p.weight)
p.weight = 20