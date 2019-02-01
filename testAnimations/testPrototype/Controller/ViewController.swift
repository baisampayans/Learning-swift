//
//  ViewController.swift
//  testPrototype
//
//  Created by Baisampayan Saha on 1/28/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherView: UIView!
    @IBOutlet weak var dayView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var floatingButton: UIButton!
    @IBOutlet weak var menuView: ViewX!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var clockButton: UIButton!
    @IBOutlet weak var pencilButton: UIButton!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    
    var tableData: [Model] = []
    var dayWeatherData: DayWeatherModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        floatingButton.createFloatingActionButton()
        
        tableView.separatorColor = UIColor.black
        
        tableView.dataSource = self
        tableView.delegate = self
        
        Data.getDayAndWeather { (data) in
            if let data = data {
                self.dayLabel.text = data.dayName
                self.dateLabel.text = data.longDate
                self.temperatureLabel.text = data.temperature
                self.cityLabel.text = data.city
                self.weatherImageView.image = data.weatherIcon
            }
        }
        
        Data.getData { (data) in
            self.tableData  = data
            self.tableView.reloadData()
            self.animateTableCells()
        }
        
        closeMenu()
        setupAnimatedControls()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.3, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.dayView.transform = .identity
            self.weatherView.transform = .identity
        }) {(success) in
            
        }
        
    }

    @IBAction func menuTapped(_ sender: FloatingActionButton) {
        UIView.animate(withDuration: 0.3) {
            if self.menuView.transform == .identity {
                self.closeMenu()
            } else {
                self.menuView.transform = .identity
            }
        }
        UIView.animate(withDuration: 0.3, delay: 0.3, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            if self.menuView.transform == .identity{
                self.chatButton.transform = .identity
                self.clockButton.transform = .identity
                self.pencilButton.transform = .identity
            }
        })
    }
    
    func animateTableCells(){
        let cells = tableView.visibleCells
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: view.frame.width, y: 0)
        }
        var delay = 0.5
        for cell in cells {
            UIView.animate(withDuration: 0.3, delay: delay, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
                cell.transform = .identity
            })
           delay += 0.1
        }
    }
    
    func closeMenu() {
        menuView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        chatButton.transform = CGAffineTransform(translationX: 0, y: 15)
        clockButton.transform = CGAffineTransform(translationX: 15, y: 15)
        pencilButton.transform = CGAffineTransform(translationX: 15, y: 0)
        
    }
    
    func setupAnimatedControls(){
        dayView.transform = CGAffineTransform(translationX: -dayView.frame.width, y: 0)
        weatherView.transform = CGAffineTransform(translationX: weatherView.frame.width, y: 0)
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = tableData[indexPath.row]
        var cell: TableViewCell!
        
        if model.images.count > 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: String(describing: "TableViewCellWithImages")) as? TableViewCell
            
            cell.setup(model: model)
            
            return cell
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: String(describing: "TableViewCell")) as? TableViewCell
            
            cell.setup(model: model)
            
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let model = tableData[indexPath.row]
        
        if model.images.count > 0 {
            return 107
        }
        return 100
    }

}
