//
//  ViewController.swift
//  MakeMyTripClone
//
//  Created by Baisampayan Saha on 1/30/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    var tableData : [Model] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        Data.getData { (data) in
            self.tableData = data
            self.tableView.reloadData()
        }
    }


}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = tableData[indexPath.row]
        var cell: TableViewCell!

        if indexPath.item == 2 {
            cell = tableView.dequeueReusableCell(withIdentifier: "LoginTableViewCell", for: indexPath) as? TableViewCell
            return cell
            
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
            cell.setup(model: data)
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        if indexPath.item == 2 {
            return 94
        } else {
            return 258
        }
    }
    
}

