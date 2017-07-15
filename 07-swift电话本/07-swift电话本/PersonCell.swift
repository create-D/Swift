//
//  PersonCell.swift
//  07-swift电话本
//
//  Created by 董立权 on 2017/7/15.
//  Copyright © 2017年 董立权. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {
    //personModel
    //didSet:属性观察器,一旦person的值发生变化,就更新UI
    var person: Person? {
        didSet {
            textLabel?.text = person?.name
            detailTextLabel?.text = person?.phoneNum
        }
    }
    //参数有?代表参数可能设为nil
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
    }
    
    //required:关键字是说,该方法必须实现
    //swift中所有的UIView的子类都必须实现该方法
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
