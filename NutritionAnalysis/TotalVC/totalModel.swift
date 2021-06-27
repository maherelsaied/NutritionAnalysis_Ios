//
//  totalModel.swift
//  NutritionAnalysis
//
//  Created by Maher on 6/26/21.
//

import Foundation


struct TotalModel {
    var calories : Int = 0
    var totalFat : TotalFat?
    var cholesterol : CHOLE2?
    var sodium : Sodiom?
    var protein : PROCNT2?
    var vitamin : VITA_RAE2?
    var calcium : CA2?
    var iron : FE2?
    var potassium : K2?
    var fIBTG : FIBTG2?
    var sUGAR : SUGAR2?
    
    
    init(data : [OneIngrModel]) {
        for ingr in data {
            //total cal
            if let calories = ingr.ingrDetaiels?.calories {
                self.calories += calories
            }
            
            //total fat , chole ....
            if let _ = ingr.ingrDetaiels?.totalNutrients , let _ = ingr.ingrDetaiels?.totalDaily {
                self.totalFat = TotalFat(data:data)
                self.cholesterol = CHOLE2(data: data)
                self.protein = PROCNT2(data: data)
                self.vitamin = VITA_RAE2(data: data)
                self.calcium = CA2(data: data)
                self.sodium = Sodiom(data: data)
                self.iron = FE2(data: data)
                self.potassium = K2(data: data)
                self.fIBTG = FIBTG2(data: data)
                self.sUGAR = SUGAR2(data: data)
            }
            
        }
    }
    
    func getDataAsArray () -> [Any] {
        guard let totalFat = totalFat , let cholesterol = cholesterol , let sodium = sodium ,let protein = protein ,let vitamin = vitamin , let calcium = calcium , let iron = iron , let potassium = potassium ,let fIBTG = fIBTG ,let sUGAR = sUGAR else {return []}
        return [ totalFat ,cholesterol ,sodium ,protein , vitamin , calcium , iron ,potassium , fIBTG , sUGAR]
    }
    
}


struct TotalFat {
    var fatVal : Double = 0.0
    var fatPrs : Double = 0.0
    
    init (data :[OneIngrModel]) {
        for x in data {
            self.fatVal += x.ingrDetaiels?.totalNutrients?.fAT?.quantity ?? 0.0
            self.fatPrs += x.ingrDetaiels?.totalDaily?.fAT?.quantity ?? 0.0
        }
        
    }
}
struct CHOLE2 {
    var choleVal : Double = 0.0
    var cholePrs : Double = 0.0
    init (data :[OneIngrModel]) {
        for x in data {
            self.choleVal += x.ingrDetaiels?.totalNutrients?.cHOLE?.quantity ?? 0.0
            self.cholePrs += x.ingrDetaiels?.totalDaily?.cHOLE?.quantity ?? 0.0
        }
        
    }
}
struct Sodiom {
    var sodVal : Double = 0.0
    var sodPrs : Double = 0.0
    init (data :[OneIngrModel]) {
        for x in data {
            self.sodVal += x.ingrDetaiels?.totalNutrients?.nA?.quantity ?? 0.0
            self.sodPrs += x.ingrDetaiels?.totalDaily?.nA?.quantity ?? 0.0
        }
        
    }
}

struct PROCNT2 {
    var proVal : Double = 0.0
    var proPrs : Double = 0.0
    init (data :[OneIngrModel]) {
        for x in data {
            self.proVal += x.ingrDetaiels?.totalNutrients?.pROCNT?.quantity ?? 0.0
            self.proPrs += x.ingrDetaiels?.totalDaily?.pROCNT?.quantity ?? 0.0
        }
        
    }
}

struct VITA_RAE2 {
    var vitVal : Double = 0.0
    var vitPrs : Double = 0.0
    init (data :[OneIngrModel]) {
        for x in data {
            self.vitVal += x.ingrDetaiels?.totalNutrients?.vITA_RAE?.quantity ?? 0.0
            self.vitPrs += x.ingrDetaiels?.totalDaily?.vITA_RAE?.quantity ?? 0.0
        }
        
    }
}


struct CA2 {
    var caVal : Double = 0.0
    var caPrs : Double = 0.0
    init (data :[OneIngrModel]) {
        for x in data {
            self.caVal += x.ingrDetaiels?.totalNutrients?.cA?.quantity ?? 0.0
            self.caPrs += x.ingrDetaiels?.totalDaily?.cA?.quantity ?? 0.0
        }
        
    }
}
struct FE2 {
    var feVal : Double = 0.0
    var fePrs : Double = 0.0
    init (data :[OneIngrModel]) {
        for x in data {
            self.feVal += x.ingrDetaiels?.totalNutrients?.fE?.quantity ?? 0.0
            self.fePrs += x.ingrDetaiels?.totalDaily?.fE?.quantity ?? 0.0
        }
        
    }
}
struct K2 {
    var kVal : Double = 0.0
    var kPrs : Double = 0.0
    init (data :[OneIngrModel]) {
        for x in data {
            self.kVal += x.ingrDetaiels?.totalNutrients?.k?.quantity ?? 0.0
            self.kPrs += x.ingrDetaiels?.totalDaily?.k?.quantity ?? 0.0
        }
        
    }
}
struct FIBTG2 {
    var fibVal : Double = 0.0
    var fibPrs : Double = 0.0
    init (data :[OneIngrModel]) {
        for x in data {
            self.fibVal += x.ingrDetaiels?.totalNutrients?.fIBTG?.quantity ?? 0.0
            self.fibPrs += x.ingrDetaiels?.totalDaily?.fIBTG?.quantity ?? 0.0
        }
        
    }
}
struct SUGAR2 {
    var sugVal : Double = 0.0
    
    init (data :[OneIngrModel]) {
        for x in data {
            self.sugVal += x.ingrDetaiels?.totalNutrients?.sUGAR?.quantity ?? 0.0
            
        }
        
    }
}

