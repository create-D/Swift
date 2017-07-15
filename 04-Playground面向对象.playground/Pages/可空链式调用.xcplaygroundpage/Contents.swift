//: [Previous](@previous)

import Foundation

//可空链式调用:当我们访问一个可选对象的属性时,可以直接使用?,最终会返回一个可选值


class House: NSObject {
    
}
class Person: NSObject {
    var house: House?
}

let person: Person? = Person()
let house = person?.house