//: [Previous](@previous)

import UIKit

//let定义不可变集合,var定义可变集合
//无序,不可重复
//空集合
var set: Set<String> = []
var set1: Set<String> = Set()
var Set2 = Set<String>()

//增加元素
set.insert("a")
set.insert("b")
//创建一个带有默认值的集合
let set4: Set = ["cat","dog","cow"]

//集合的遍历
for item in set {
    print(item)
}
//集合中删除一个元素
set.remove("a")
print(set)
//集合的交集,并集的判断
var setaa: Set = [1,2,3,4]
var setbb: Set = [1,2]
var setcc: Set = [3,4,5]
var setdd: Set = [1,2]

if setbb.isSubset(of: setaa) {
    print("bb是aa的子集")
}
if setbb.isStrictSubset(of: setaa) {
    print("bb是aa的真子集")
}
if setbb.isSuperset(of: setdd) {
    print("bb是dd的交集")
}


