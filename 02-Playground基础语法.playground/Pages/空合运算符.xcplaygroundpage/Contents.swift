//: [Previous](@previous)

import Foundation


var a: Int? = 5
//空合运算符:在使用可选值时,如果可选值有值,则使用可选值的值,如果没有值,则使用空合运算符后面的值
//空合运算符的优先级比算数运算符低
var b = a ?? 10 + 3
