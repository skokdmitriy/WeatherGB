//
//  WeatherViewController.swift
//  WeatherGB
//
//  Created by Дмитрий Скок on 10.03.2022.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var weatherCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherCollectionView.dataSource = self

    }
   
}

// MARK: - UICollectionViewDataSource

extension WeatherViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeatherCell", for: indexPath) as? WeatherCell else {return UICollectionViewCell()}
        
        cell.weather.text = "30c"
        cell.time.text = "22.02.2022"
        
        return cell
        
    }
    
 
    
}
