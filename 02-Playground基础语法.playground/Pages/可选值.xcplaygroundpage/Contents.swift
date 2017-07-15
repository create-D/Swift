//: [Previous](@previous)

import UIKit

//可选值:一个变量或常量,可能有值,可能没有值(nil),一个变量或常量有可能会被设为nil,那么这个值就叫可选值
//对于对象,OC可以将其设为nil
//OC会给变量赋初值,swift不会,swift默认不能将对象设为nil;swift中,如果将对象设为可选值,则任何数据类型都可以设为nil
var view: UIView?
view = nil

//在变量的数据类型后面接一个 ? 代表定义一个可选值
//一旦该变量设为可选,就代表该变量可以设为nil
//对于可选的变量,如果没有初始值,它的初始值为nil
var a:Int?
a = nil
//Optional :可选
var view1: UIView? = UIView()
print(view1)

//可选值不能直接参与运算,需要强制解包,在该值的后面接一个 !
//使用!时,如果该可选值为nil,则会崩溃
//value of optional type 'Int?' not unwrapped;提示使用一个可选值时需要强制解包
//unexpectedly found nil while unwrapping an Optional value 强制解包一个可选值时,发现其值为nil
//? 告诉编译器,我是一个可选值,不要拿我做运算
//! 告诉编译器,我一定有值,可以使用,一旦编译器发现没有值,就会蹦会
var b:Int? = 10
var c:Int? = 10
var result = b! + 10
//如果不确定可选值是否有值,需要先判断是否为nil
//1.直接判断,在使用可选值的时候,仍然需要使用!
if b != nil {
    var result = b! + 10
}
//2.可选绑定
//对于可选值,条件判断语句中,定义一个临时的变量/常量 x,将可选值赋值给x,如果x有值,则绑定成功,后面可以直接使用,如果x没有值,则绑定不成功,可以异常处理;如果需要接条件判断,可以用逗号隔开
//可选绑定,使用可选值最广泛的用法
if let b = b,b > 15 {
    var result = b + 10
}
//对多个可选值做可选绑定
if let b = b,let c = c {
    var result = b + c
}
//可选值的使用
let url = URL(string: "http://www.baidu.com")

let request = URLRequest(url: url!)

if let url = url {
    let request = URLRequest(url: url)
}




