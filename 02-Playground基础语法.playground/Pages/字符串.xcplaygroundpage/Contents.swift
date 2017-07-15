//: [Previous](@previous)

import Foundation

//用var创建一个可变的字符串,用let创建一个不可变的字符串
//自变量创建
var str = "hello"
//构造方法创建
var str2 = String("hello2")
var str3 = String.init("hello3")

//字符串和字符串的拼接
var str4 = "hello,"
var str5 = "world"
var str6 = str4 + str5;
str4 += str5;

//字符串和常量,变量的拼接 \
var classIndex = 5
var str7 = "world"
var str8 = "hello\(str7)"
var str9 = "hello\(classIndex)"

//stringWithFormat
//05:05:05
let h = 5
let m = 5
let s = 5
var time = String(format: "%02d: %02d: %02d", h,m,s)

//字符串的比较
var str10 = "hello"
var str11 = "hello"
var str12 = "helll"
if str10 == str11 {
    print("一样")
}
if str11 != str12 {
    print("不一样")
}

//取字符串的长度
//let count = str12.lengthOfBytes(using: .utf8)
let count = str12.characters.count

//判断是否有前缀
if str12.hasPrefix("h") {
    print("h开头")
}
if str12.hasSuffix("l") {
    print("l结尾")
}
//正常情况下,swift的api可以解决问题,如果解决不了,可以将swift字符串转成oc字符串
let swiftStr = "hello,world"
//as代表类型转换
let ocString = swiftStr as NSString
ocString.substring(with: NSMakeRange(0, 5))





