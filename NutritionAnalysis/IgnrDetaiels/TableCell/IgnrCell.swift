//
//  IgnrCell.swift
//  NutritionAnalysis
//
//  Created by Maher on 6/26/21.
//

import UIKit

class IgnrCell: UITableViewCell {
    
    @IBOutlet weak var qty: UILabel!
    @IBOutlet weak var unit: UILabel!
    @IBOutlet weak var food: UILabel!
    @IBOutlet weak var Calories: UILabel!
    @IBOutlet weak var Weight: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func configCell (data : OneIngrModel) {
        self.qty.text = data.quantity
        self.unit.text = data.unit
        self.food.text = data.name
        if let cal = data.ingrDetaiels?.calories {
            self.Calories.text = String(cal) + "kcal"
        }
        if let weight = data.ingrDetaiels?.totalWeight{
            let weit = Int(weight)
            self.Weight.text = String(weit) + "g"
        }
        
    }
    
}
