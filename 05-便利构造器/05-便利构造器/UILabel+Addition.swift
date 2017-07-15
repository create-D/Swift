//
//  UILabel+Addition.swift
//  05-便利构造器
//
//  Created by 董立权 on 2017/7/15.
//  Copyright © 2017年 董立权. All rights reserved.
//

import UIKit

//相当于OC中的category
//便利构造器
//需要用convenience修饰
//调用指定构造器
extension UILabel {
    convenience init(title: String,fontSize: CGFloat = 13,alignment: NSTextAlignment = .left,textColor: UIColor = UIColor.darkGray,numberOfLines: Int = 0) {
        //调用指定构造器,保证所有的存储实型被正确初始化
        self.init()
        //此时对象已创建
        self.text = title
        self.font = UIFont.systemFont(ofSize: 13)
        self.textColor = textColor
        self.textAlignment = alignment
        self.numberOfLines = numberOfLines
    }
}
