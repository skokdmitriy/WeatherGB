//
//  MyCitiesController.swift
//  WeatherGB
//
//  Created by Дмитрий Скок on 23.02.2022.
//

import UIKit

class MyCitiesController: UITableViewController {

    var cities = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCitiesCell", for: indexPath) as? MyCitiesCell else { return UITableViewCell() }
        
        let city = cities[indexPath.row]
        cell.cityName.text = city

        return cell
    }
//    выбор города из списка
    

    @IBAction func addCity(segue: UIStoryboardSegue) {
        if segue.identifier == "addCity" {
            guard let allCitiesController = segue.source as? AllCitiesController else {return}
            if let indexPath = allCitiesController.tableView.indexPathForSelectedRow {
                let city = allCitiesController.cities[indexPath.row]
                if !cities.contains(city.title) {
                    cities.append(city.title)
                    tableView.reloadData()
                    
                }
            }
        }
    }
    
//    удаление города из списка
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            cities.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
