//: [Previous](@previous)

import Foundation

//闭包是一个匿名的函数快
//闭包被完成的包裹在大括号里面
//闭包的调用方式和函数一样
//闭包可以作为参数传递,也可以作为返回值

//闭包的定义和调用
//没有参数,没有返回值的闭包
let clousureOne = {
    print("hello,world")
}
clousureOne()

//有参数,没有返回值
//参数和执行语句都写在大括号里面,用 in 隔开
//闭包没有外部参数名
let clousureTwo = {
    (a: Int,b: Int) in
    print(a + b)
}
clousureTwo(5,10)

//有参数,有返回值
let clousureThree = {
    (a: Int,b: Int) -> Int in
    return a + b
}
let result = clousureThree(3,4)

