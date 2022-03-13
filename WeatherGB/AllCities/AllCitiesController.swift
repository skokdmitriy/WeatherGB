//
//  AllCitiesController.swift
//  WeatherGB
//
//  Created by Дмитрий Скок on 23.02.2022.
//

import UIKit

class AllCitiesController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var cities = [
        (title: "Moscow", emblem: UIImage(named: "moscow")),
    (title: "Krasnodar", emblem: UIImage(named: "krasnodar")),
    (title: "Tomsk", emblem: UIImage(named: "tomsk"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

    }

}

// MARK: - Table view data source

extension AllCitiesController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AllCityCellReuseIdentifier", for: indexPath) as? AllCitiesCell else {return UITableViewCell()}
        
        let city = self.cities[indexPath.row]
        cell.configure(city: city.title, emblem: city.emblem!)
        return cell
    }
    
    
}


