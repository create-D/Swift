//: [Previous](@previous)

import Foundation


//定义一个字典
//用var定义一个可变的字典,用let定义一个不可变的字典
var dict = ["first":"dog","second":"cat"]
//定义一个空的字典
var dict1: [String: String] = Dictionary()
var dict2: [String: String] = [:]

//遍历字典
for (k,v) in dict {
    print("key:\(k),value:\(v)")
}
//字典的操作,增删改查,字典的操作都是围绕key值做操作
//增
dict["third"] = "pig"
//删
dict["second"] = nil
//查:从字典中取出的值是一个可选值,使用的时候最好做一次可选绑定
let first = dict["first"]
//改
dict["first"] = "duck"
print(dict)