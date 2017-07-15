//
//  UIlabel+Addition.swift
//  07-swift电话本
//
//  Created by 董立权 on 2017/7/15.
//  Copyright © 2017年 董立权. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience init(title: String?,fontSize: CGFloat = 13,textColor: UIColor = UIColor.blue,aligment: NSTextAlignment = .left,numberofLines: Int = 0){
        self.init()
        
        self.text = title
        self.font = UIFont.systemFont(ofSize: fontSize)
        self.textColor = textColor
        self.textAlignment = aligment
        self.numberOfLines = numberofLines
    }
}
