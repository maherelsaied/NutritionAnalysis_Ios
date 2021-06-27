//
//  TotalCell.swift
//  NutritionAnalysis
//
//  Created by Maher on 6/26/21.
//

import UIKit

class TotalCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var gram: UILabel!
    @IBOutlet weak var present: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func configCell (data : Any?) {
        guard let data = data else {return}
        switch data {
        case is TotalFat :
            guard let data = data as? TotalFat else {return}
            self.name.text = "Total Fat "
            self.gram.text = String(Int(data.fatVal)) + "g"
            self.present.text = String(Int(data.fatPrs)) + "%"
        case is CHOLE2 :
            guard let data = data as? CHOLE2 else {return}
            self.name.text = "Cholesterol "
            self.gram.text = String(Int(data.choleVal)) + "g"
            self.present.text = String(Int(data.cholePrs)) + "%"
        case is Sodiom :
            guard let data = data as? Sodiom else {return}
            self.name.text = "Sodium "
            self.gram.text = String(Int(data.sodVal)) + "g"
            self.present.text = String(Int(data.sodPrs)) + "%"
        case is PROCNT2 :
            guard let data = data as? PROCNT2 else {return}
            self.name.text = "Protein "
            self.gram.text = String(Int(data.proVal)) + "g"
            self.present.text = String(Int(data.proPrs)) + "%"
            
        case is VITA_RAE2 :
            guard let data = data as? VITA_RAE2 else {return}
            self.name.text = "Vitamin "
            self.gram.text = String(Int(data.vitVal)) + "g"
            self.present.text = String(Int(data.vitPrs)) + "%"
        case is CA2 :
            guard let data = data as? CA2 else {return}
            self.name.text = "Calcium "
            self.gram.text = String(Int(data.caVal)) + "g"
            self.present.text = String(Int(data.caPrs)) + "%"
        case is FE2 :
            guard let data = data as? FE2 else {return}
            self.name.text = "Iron "
            self.gram.text = String(Int(data.feVal)) + "g"
            self.present.text = String(Int(data.fePrs)) + "%"
        case is K2 :
            guard let data = data as? K2 else {return}
            self.name.text = "Potassium "
            self.gram.text = String(Int(data.kVal)) + "g"
            self.present.text = String(Int(data.kPrs)) + "%"
        case is FIBTG2 :
            guard let data = data as? FIBTG2 else {return}
            self.name.text = "Dietary Fiber "
            self.gram.text = String(Int(data.fibVal)) + "g"
            self.present.text = String(Int(data.fibPrs)) + "%"
        case is SUGAR2 :
            guard let data = data as? SUGAR2 else {return}
            self.name.text = "Total Sugars "
            self.gram.text = String(Int(data.sugVal)) + "g"
            self.present.text = ""
            
        default:
            print("Ok Not found Model")
        }
        
    }
    
}
