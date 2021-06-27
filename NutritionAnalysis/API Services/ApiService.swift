//
//  ApiService.swift
//  NutritionAnalysis
//
//  Created by Maher on 6/25/21.
//

import Foundation
import Alamofire

class GetNutritionAnalysis {
    
    static var getNutritionAnalysis = GetNutritionAnalysis()
    
    func getNutrition (ingrs:[String] ,  complation : @escaping ([OneIngrModel]? , Error? , Bool)->Void ) {
        let app_id = "7457c233"
        let app_key = "1ae655f87498c7fd86d1cb424cf937b2"
        let url = "https://api.edamam.com/api/nutrition-data"
        var ingrArray : [OneIngrModel] = []
        let myGroup = DispatchGroup()
        
        for ingr in ingrs {
            myGroup.enter()
            let fullObjArr = ingr.components(separatedBy: " ")
            
            if fullObjArr.count < 3 {
                complation(nil , nil , false)
                return
            }
            let quantity = fullObjArr[0]
            let unit = fullObjArr[1]
            let name = fullObjArr[2]
            
            let pram = ["app_id" : app_id , "app_key" : app_key , "ingr" : ingr]
            Alamofire.request(url, method: .get, parameters: pram).responseJSON { (response) in
                guard let data = response.data else {return}
                switch response.result {
                case .success( _) :
                    do {
                        let Nutrition = try JSONDecoder().decode(MainModel.self, from: data)
                        // complation(Nutrition , nil , true)
                        let oneIngr = OneIngrModel(name: name, quantity: quantity, unit: unit, ingrDetaiels: Nutrition)
                        if Nutrition.calories == 0 {
                            complation(nil , nil , false)
                        }
                        ingrArray.append(oneIngr)
                        if ingrArray.count == ingrs.count {
                            myGroup.leave()
                            
                            complation(ingrArray , nil , true)
                            
                        }
                    } catch let err{
                        print(err)
                        complation(nil , err , false)
                    }
                case .failure(let error) :
                    complation(nil , error , false)
                }
            }
        }
    }
}
