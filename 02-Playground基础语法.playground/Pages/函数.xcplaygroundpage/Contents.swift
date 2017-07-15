//: [Previous](@previous)

import Foundation

//用func来创建一个函数
//函数名后面接小括号,小括号不能省略
//小括号里面放参数,参数必须指定类型,多个参数用逗号隔开
//如果没有返回值,返回值的部分可以省略
func add(a:Int,b:Int) -> Int {
    return a + b
}
let funcadd = add

//函数没有返回值,本质上返回一个空的元组
func addOne(a:Int,b:Int){
    print(a + b)
}
func addTwo(a:Int,b:Int) -> (){
    print(a + b)
}
func addThree(a:Int,b:Int) -> Void{
    print(a + b)
}
let funcaddOne = addOne

//没有参数,没有返回值
func methodOne() {
    print("hello,world")
}


//有参数,没有返回值
func methodTwo(a:Int,b:Int) {
    print(a + b)
}
//有参数,有返回值,返回的值和返回值的类型必须保持一致
func methdThird(a:Int,b:Int) -> Int {
    return a + b
}
//函数的调用
methodOne()
