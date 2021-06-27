//
//  TotalHeader.swift
//  NutritionAnalysis
//
//  Created by Maher on 6/26/21.
//

import UIKit

class TotalHeader: UITableViewHeaderFooterView {
    @IBOutlet weak var calText: UILabel!
    var backCluser : (()->())?
    
    @IBAction func backAction(_ sender: Any) {
        backCluser?()
    }
    

}
