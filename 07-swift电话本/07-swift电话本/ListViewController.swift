//
//  ViewController.swift
//  07-swift电话本
//
//  Created by 董立权 on 2017/7/15.
//  Copyright © 2017年 董立权. All rights reserved.
//

import UIKit
private let identifier = "listCell"

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    //数据源属性
    lazy var personArray: [Person] = []
    //tableView的懒加载属性
    lazy var tableView: UITableView = UITableView(frame: self.view.bounds, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        self.title = "列表"
        view.addSubview(tableView)
        //设置tableView
        tableView.register(PersonCell.self, forCellReuseIdentifier: identifier)
        tableView.dataSource = self
        tableView.delegate = self
        
        //加载数据
        loadData()
        
    }
    func loadData() {
        let callBack = {
            (persons: [Person]) in
            self.personArray += persons
            self.tableView.reloadData()
        }
        Person.loadPersons(callBack: callBack)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! PersonCell
        
        let person = personArray[indexPath.row]
//        cell.textLabel?.text = person.name
//        cell.detailTextLabel?.text = person.phoneNum
        cell.person = person
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //创建详细页
        let detailViewController = DetailViewController()
        let person = personArray[indexPath.row]
        detailViewController.person = person
        self.navigationController?.pushViewController(detailViewController, animated: true)
        
    }
}

