//
//  DetailViewController.swift
//  07-swift电话本
//
//  Created by 董立权 on 2017/7/15.
//  Copyright © 2017年 董立权. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        self.title = "详情"
        //设置UI
        setupUI()
    }

    func setupUI() {
        
        let nameLabel = UILabel(title: person?.name)
        let phoneLabel = UILabel(title: person?.phoneNum)
        nameLabel.frame = CGRect(x: 20, y: 84, width: view.bounds.size.width - 40, height: 40)
        
        phoneLabel.frame = CGRect(x: 20, y: 84 + 60, width: view.bounds.size.width - 40, height: 40)
        view.addSubview(nameLabel)
        view.addSubview(phoneLabel)
        
    }
    
}
