//: [Previous](@previous)

import Foundation
//if条件语句的小括号可以省略,执行语句的大括号一定不能省略
var a = 10

if (a > 5) {
    print("hello,world")
}

//使用for in + 区间运算符做循环
//0...10 [0,10]
//0..<10 [0,10)
for i in 0..<10 {
    print(i)
}
//倒序遍历
//从10循环到0
for i in (0...10).reversed() {
    print("love \(i)")
}

//忽略运算符 _:如果不想使用某个值,可以将该值忽略
for _ in 0...5 {
    print("hello")
}

//while
//swift放弃了 ++ 和 -- 运算符
var i = 10
while i > 0 {
    i -= 1
    print("while \(i)")
}

//swift把do while 换成了repeat while
var m = 10
repeat {
    m -= 1
    print("repeat while\(m)")
} while m > 0

//switch
var score = 75
switch score {
case 60,75:
    print("及格")
default:
    print("仍需努力")
}
//可以判断任何类型
var scorestr = "75"
switch scorestr {
case "60":
    print("及格")
default:
    print("仍需努力2")
}
//可以做区间判断
//绑定:定义一个临时的变量或常量,把要判断的值赋值给该变量或常量,后面直接使用这个临时的变量或常量
//where是swift的关键,可以接条件判断语句  
//default 如果case不能覆盖所有条件,则必须加default
//如果多个case同时满足条件,case的条件之间用逗号隔开
switch score {
case let score where score < 60:
    print("不及格")
case let x where x >= 60 && x < 70:
    print("及格")
case let x where x >= 70 && x < 80:
    print("良好")
case let x where x >= 80 && x < 90:
    print("优秀")
case let x where x >= 90:
    print("牛逼")
default:
    print("仍需努力")
}