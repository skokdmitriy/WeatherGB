//
//  MyCitiesCell.swift
//  WeatherGB
//
//  Created by Дмитрий Скок on 23.02.2022.
//

import UIKit

class MyCitiesCell: UITableViewCell {
    
    @IBOutlet weak var cityName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
