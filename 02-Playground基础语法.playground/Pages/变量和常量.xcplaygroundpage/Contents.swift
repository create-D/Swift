//: [Previous](@previous)

import UIKit

//1.用var来定义一个变量,用let定义一个常量
//变量一旦定义,其值可以改变,常量一旦定义,其值不可以改变
//如果不确定使用let还是var,可以先定义成let.保措时再改回来
var a:Int = 10
a = 5


let a1: Int = 15
//a1 = 20

//2.变量和常量可以根据等号右边的值,自动推导类型
var a3 = 15
let view = UIView()
var f = 10.5 //小数会被默认推断城Double类型

//3.swift对类型的要求极其严格,不同类型不能参与运算
//必须要强转
var result = Double(a3) + f
var result2 = a3 + Int(f)


