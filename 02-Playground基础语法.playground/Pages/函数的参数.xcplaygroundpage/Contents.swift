//: [Previous](@previous)

import Foundation

//函数的参数默认有一个外部参数名
//外部参数名:就是对参数做解释说明用的字符串
//默认情况下,swift会给每个参数加一个和形参一样的外部参数名
//外部参数名,就是对参数做解释说明的字符串
//外部参数名,在调用的时候,必须写
func add(a: Int,b: Int) {
    return a + b
}
//add(a: <#T##Int#>, b: <#T##Int#>)
//也可以自定义外部参数名
func addOne(first a: Int,second b: Int){
    return a + b
}
//addOne(first: <#T##Int#>, second: <#T##Int#>)

//也可以忽略外部参数名
//使用忽略运算符忽略外部参数名
func addTwo(_ a: Int,_ b: Int) {
    return a + b
}
//addTwo(<#T##a: Int##Int#>, <#T##b: Int##Int#>)
