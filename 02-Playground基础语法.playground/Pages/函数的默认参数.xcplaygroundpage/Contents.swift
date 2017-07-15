//: [Previous](@previous)

import UIKit

//swift语言函数的参数可以设默认值
//如果参数有默认值,则该参数可传,可不传
func add(a: Int,b: Int = 10) -> Int {
    return a + b
}

add(a: 5)
add(a: 5, b: 15)

func customLabel(title: String, fontSize: CGFloat = 13,alignment: NSTextAlignment = .left,numberOfLines: Int = 0) -> UILabel {
    let label = UILabel()
    label.text = title
    label.font = UIFont.systemFont(ofSize: fontSize)
    label.textAlignment = alignment
    label.numberOfLines = numberOfLines
    return label
}

//let label = customLabel(title: <#T##String#>)
