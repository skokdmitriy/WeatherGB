//
//  AllCitiesCell.swift
//  WeatherGB
//
//  Created by Дмитрий Скок on 12.03.2022.
//

import UIKit

class AllCitiesCell: UITableViewCell {

    @IBOutlet weak var cityEmblemView: UIImageView!
//    {
//        didSet{
//            self.cityEmblemView.layer.borderWidth = 2
//            self.cityEmblemView.layer.borderColor = UIColor.black.cgColor
//        }
//    }
    
    @IBOutlet weak var cityTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cityEmblemView.layer.borderWidth = 1
        cityEmblemView.layer.borderColor = UIColor.white.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure (city: String, emblem: UIImage) {
        self.cityTitleLabel.text = city
        self.cityEmblemView.image = emblem
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.cityTitleLabel.text = nil
        self.cityEmblemView.image = nil
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        cityEmblemView.clipsToBounds = true
        cityEmblemView.layer.cornerRadius = cityEmblemView.frame.width / 2
        
    }
}
