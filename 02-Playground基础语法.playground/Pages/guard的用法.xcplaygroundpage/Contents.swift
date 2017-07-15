//: [Previous](@previous)

import Foundation

//guard:保证
//guard:引导一个条件判断
//guard和if逻辑相同,写法相反
//if条件满足时,执行语句写在大括号里面,guard条件满足时,执行语句写在大括号外面,在大括号里面需要return,continue,break

func testif() {
    var a = 10
    if a > 5 {
        print("hello")
    }
}
testif()

func testGuard() {
    var a = 10
    guard a > 5 else{
        return
    }
    print("hello,world")
}
testGuard()

func testUrl() {
    let url = URL(string: "http://www.baidu.com")
    if let url = url {
        let request = NSURLRequest(url: url)
    }
    
    guard let urls = url else {
        return
    }
    let request = NSURLRequest(url: urls)
}