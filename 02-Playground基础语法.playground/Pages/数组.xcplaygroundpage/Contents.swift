//: [Previous](@previous)

import Foundation


//数组的创建
//用var创建一个可变的数组,用let创建一个不可变的数组
var array = ["dog","cat","pig"]
var emptyArr:[String] = []
array.append("fish")
//用初始化的方式创建数组,一定要指定类型
var array2: [String] = Array()

//数组的遍历
for item in array {
    print(item)
}
//遍历同时拿到index
for item in array.enumerated() {
    print("\(item.offset):\(item.offset)")
}
//倒序遍历
for item in array.reversed() {
    print(item)
}

//数组的操作
//数组的合并
var array3 = ["goat","snake"]
var array4 = ["dog","cat","pig"]
var array5 = array3 + array4
//删除元素
let removed = array5.remove(at: 0)
//修改
array5[0] = "sheep"
//和OC的数组互转
let ocArray = array5 as NSArray
ocArray.subarray(with: NSMakeRange(0, 3))


