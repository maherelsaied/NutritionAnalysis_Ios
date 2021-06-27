/* 
 Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar
 
 */

import Foundation
struct MainModel : Codable {
    let uri : String?
    let calories : Int?
    let totalWeight : Double?
    let dietLabels : [String]?
    let healthLabels : [String]?
    let cautions : [String]?
    let totalNutrients : TotalNutrients?
    let totalDaily : TotalDaily?
    let totalNutrientsKCal : TotalNutrientsKCal?
    
    
    enum CodingKeys: String, CodingKey {
        
        case uri = "uri"
        case calories = "calories"
        case totalWeight = "totalWeight"
        case dietLabels = "dietLabels"
        case healthLabels = "healthLabels"
        case cautions = "cautions"
        case totalNutrients = "totalNutrients"
        case totalDaily = "totalDaily"
        case totalNutrientsKCal = "totalNutrientsKCal"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        uri = try values.decodeIfPresent(String.self, forKey: .uri)
        calories = try values.decodeIfPresent(Int.self, forKey: .calories)
        totalWeight = try values.decodeIfPresent(Double.self, forKey: .totalWeight)
        dietLabels = try values.decodeIfPresent([String].self, forKey: .dietLabels)
        healthLabels = try values.decodeIfPresent([String].self, forKey: .healthLabels)
        cautions = try values.decodeIfPresent([String].self, forKey: .cautions)
        totalNutrients = try values.decodeIfPresent(TotalNutrients.self, forKey: .totalNutrients)
        totalDaily = try values.decodeIfPresent(TotalDaily.self, forKey: .totalDaily)
        totalNutrientsKCal = try values.decodeIfPresent(TotalNutrientsKCal.self, forKey: .totalNutrientsKCal)
    }
    
    
    
}


struct ENERC_KCAL : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct P : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}
struct ZN : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


import Foundation
struct K : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


import Foundation
struct VITB6A : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct TotalNutrients : Codable {
    let eNERC_KCAL : ENERC_KCAL?
    let fAT : FAT?
    let fASAT : FASAT?
    let fAMS : FAMS?
    let fAPU : FAPU?
    let cHOCDF : CHOCDF?
    let fIBTG : FIBTG?
    let sUGAR : SUGAR?
    let pROCNT : PROCNT?
    let cHOLE : CHOLE?
    let nA : NA?
    let cA : CA?
    let mG : MG?
    let k : K?
    let fE : FE?
    let zN : ZN?
    let p : P?
    let vITA_RAE : VITA_RAE?
    let vITC : VITC?
    let tHIA : THIA?
    let rIBF : RIBF?
    let nIA : NIA?
    let vITB6A : VITB6A?
    let fOLDFE : FOLDFE?
    let fOLFD : FOLFD?
    let fOLAC : FOLAC?
    let vITB12 : VITB12?
    let vITD : VITD?
    let tOCPHA : TOCPHA?
    let vITK1 : VITK1?
    let wATER : WATER?
    
    enum CodingKeys: String, CodingKey {
        
        case eNERC_KCAL = "ENERC_KCAL"
        case fAT = "FAT"
        case fASAT = "FASAT"
        case fAMS = "FAMS"
        case fAPU = "FAPU"
        case cHOCDF = "CHOCDF"
        case fIBTG = "FIBTG"
        case sUGAR = "SUGAR"
        case pROCNT = "PROCNT"
        case cHOLE = "CHOLE"
        case nA = "NA"
        case cA = "CA"
        case mG = "MG"
        case k = "K"
        case fE = "FE"
        case zN = "ZN"
        case p = "P"
        case vITA_RAE = "VITA_RAE"
        case vITC = "VITC"
        case tHIA = "THIA"
        case rIBF = "RIBF"
        case nIA = "NIA"
        case vITB6A = "VITB6A"
        case fOLDFE = "FOLDFE"
        case fOLFD = "FOLFD"
        case fOLAC = "FOLAC"
        case vITB12 = "VITB12"
        case vITD = "VITD"
        case tOCPHA = "TOCPHA"
        case vITK1 = "VITK1"
        case wATER = "WATER"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eNERC_KCAL = try values.decodeIfPresent(ENERC_KCAL.self, forKey: .eNERC_KCAL)
        fAT = try values.decodeIfPresent(FAT.self, forKey: .fAT)
        fASAT = try values.decodeIfPresent(FASAT.self, forKey: .fASAT)
        fAMS = try values.decodeIfPresent(FAMS.self, forKey: .fAMS)
        fAPU = try values.decodeIfPresent(FAPU.self, forKey: .fAPU)
        cHOCDF = try values.decodeIfPresent(CHOCDF.self, forKey: .cHOCDF)
        fIBTG = try values.decodeIfPresent(FIBTG.self, forKey: .fIBTG)
        sUGAR = try values.decodeIfPresent(SUGAR.self, forKey: .sUGAR)
        pROCNT = try values.decodeIfPresent(PROCNT.self, forKey: .pROCNT)
        cHOLE = try values.decodeIfPresent(CHOLE.self, forKey: .cHOLE)
        nA = try values.decodeIfPresent(NA.self, forKey: .nA)
        cA = try values.decodeIfPresent(CA.self, forKey: .cA)
        mG = try values.decodeIfPresent(MG.self, forKey: .mG)
        k = try values.decodeIfPresent(K.self, forKey: .k)
        fE = try values.decodeIfPresent(FE.self, forKey: .fE)
        zN = try values.decodeIfPresent(ZN.self, forKey: .zN)
        p = try values.decodeIfPresent(P.self, forKey: .p)
        vITA_RAE = try values.decodeIfPresent(VITA_RAE.self, forKey: .vITA_RAE)
        vITC = try values.decodeIfPresent(VITC.self, forKey: .vITC)
        tHIA = try values.decodeIfPresent(THIA.self, forKey: .tHIA)
        rIBF = try values.decodeIfPresent(RIBF.self, forKey: .rIBF)
        nIA = try values.decodeIfPresent(NIA.self, forKey: .nIA)
        vITB6A = try values.decodeIfPresent(VITB6A.self, forKey: .vITB6A)
        fOLDFE = try values.decodeIfPresent(FOLDFE.self, forKey: .fOLDFE)
        fOLFD = try values.decodeIfPresent(FOLFD.self, forKey: .fOLFD)
        fOLAC = try values.decodeIfPresent(FOLAC.self, forKey: .fOLAC)
        vITB12 = try values.decodeIfPresent(VITB12.self, forKey: .vITB12)
        vITD = try values.decodeIfPresent(VITD.self, forKey: .vITD)
        tOCPHA = try values.decodeIfPresent(TOCPHA.self, forKey: .tOCPHA)
        vITK1 = try values.decodeIfPresent(VITK1.self, forKey: .vITK1)
        wATER = try values.decodeIfPresent(WATER.self, forKey: .wATER)
    }
    
}


struct PROCNT_KCAL : Codable {
    let label : String?
    let quantity : Int?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Int.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct THIA : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct CA : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct NIA : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct FOLDFE : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}

struct VITD : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct VITB12 : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct CHOCDF : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct MG : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}

struct VITC : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}
struct VITK1 : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}

struct CHOCDF_KCAL : Codable {
    let label : String?
    let quantity : Int?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Int.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct FOLFD : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}

struct VITA_RAE : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct FAPU : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct TotalNutrientsKCal : Codable {
    let eNERC_KCAL : ENERC_KCAL?
    let pROCNT_KCAL : PROCNT_KCAL?
    let fAT_KCAL : FAT_KCAL?
    let cHOCDF_KCAL : CHOCDF_KCAL?
    
    enum CodingKeys: String, CodingKey {
        
        case eNERC_KCAL = "ENERC_KCAL"
        case pROCNT_KCAL = "PROCNT_KCAL"
        case fAT_KCAL = "FAT_KCAL"
        case cHOCDF_KCAL = "CHOCDF_KCAL"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eNERC_KCAL = try values.decodeIfPresent(ENERC_KCAL.self, forKey: .eNERC_KCAL)
        pROCNT_KCAL = try values.decodeIfPresent(PROCNT_KCAL.self, forKey: .pROCNT_KCAL)
        fAT_KCAL = try values.decodeIfPresent(FAT_KCAL.self, forKey: .fAT_KCAL)
        cHOCDF_KCAL = try values.decodeIfPresent(CHOCDF_KCAL.self, forKey: .cHOCDF_KCAL)
    }
    
}


struct TOCPHA : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct PROCNT : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct FAT : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct FAMS : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct TotalDaily : Codable {
    let eNERC_KCAL : ENERC_KCAL?
    let fAT : FAT?
    let fASAT : FASAT?
    let cHOCDF : CHOCDF?
    let fIBTG : FIBTG?
    let pROCNT : PROCNT?
    let cHOLE : CHOLE?
    let nA : NA?
    let cA : CA?
    let mG : MG?
    let k : K?
    let fE : FE?
    let zN : ZN?
    let p : P?
    let vITA_RAE : VITA_RAE?
    let vITC : VITC?
    let tHIA : THIA?
    let rIBF : RIBF?
    let nIA : NIA?
    let vITB6A : VITB6A?
    let fOLDFE : FOLDFE?
    let vITB12 : VITB12?
    let vITD : VITD?
    let tOCPHA : TOCPHA?
    let vITK1 : VITK1?
    
    enum CodingKeys: String, CodingKey {
        
        case eNERC_KCAL = "ENERC_KCAL"
        case fAT = "FAT"
        case fASAT = "FASAT"
        case cHOCDF = "CHOCDF"
        case fIBTG = "FIBTG"
        case pROCNT = "PROCNT"
        case cHOLE = "CHOLE"
        case nA = "NA"
        case cA = "CA"
        case mG = "MG"
        case k = "K"
        case fE = "FE"
        case zN = "ZN"
        case p = "P"
        case vITA_RAE = "VITA_RAE"
        case vITC = "VITC"
        case tHIA = "THIA"
        case rIBF = "RIBF"
        case nIA = "NIA"
        case vITB6A = "VITB6A"
        case fOLDFE = "FOLDFE"
        case vITB12 = "VITB12"
        case vITD = "VITD"
        case tOCPHA = "TOCPHA"
        case vITK1 = "VITK1"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eNERC_KCAL = try values.decodeIfPresent(ENERC_KCAL.self, forKey: .eNERC_KCAL)
        fAT = try values.decodeIfPresent(FAT.self, forKey: .fAT)
        fASAT = try values.decodeIfPresent(FASAT.self, forKey: .fASAT)
        cHOCDF = try values.decodeIfPresent(CHOCDF.self, forKey: .cHOCDF)
        fIBTG = try values.decodeIfPresent(FIBTG.self, forKey: .fIBTG)
        pROCNT = try values.decodeIfPresent(PROCNT.self, forKey: .pROCNT)
        cHOLE = try values.decodeIfPresent(CHOLE.self, forKey: .cHOLE)
        nA = try values.decodeIfPresent(NA.self, forKey: .nA)
        cA = try values.decodeIfPresent(CA.self, forKey: .cA)
        mG = try values.decodeIfPresent(MG.self, forKey: .mG)
        k = try values.decodeIfPresent(K.self, forKey: .k)
        fE = try values.decodeIfPresent(FE.self, forKey: .fE)
        zN = try values.decodeIfPresent(ZN.self, forKey: .zN)
        p = try values.decodeIfPresent(P.self, forKey: .p)
        vITA_RAE = try values.decodeIfPresent(VITA_RAE.self, forKey: .vITA_RAE)
        vITC = try values.decodeIfPresent(VITC.self, forKey: .vITC)
        tHIA = try values.decodeIfPresent(THIA.self, forKey: .tHIA)
        rIBF = try values.decodeIfPresent(RIBF.self, forKey: .rIBF)
        nIA = try values.decodeIfPresent(NIA.self, forKey: .nIA)
        vITB6A = try values.decodeIfPresent(VITB6A.self, forKey: .vITB6A)
        fOLDFE = try values.decodeIfPresent(FOLDFE.self, forKey: .fOLDFE)
        vITB12 = try values.decodeIfPresent(VITB12.self, forKey: .vITB12)
        vITD = try values.decodeIfPresent(VITD.self, forKey: .vITD)
        tOCPHA = try values.decodeIfPresent(TOCPHA.self, forKey: .tOCPHA)
        vITK1 = try values.decodeIfPresent(VITK1.self, forKey: .vITK1)
    }
    
}


struct CHOLE : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct FASAT : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct FIBTG : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct FAT_KCAL : Codable {
    let label : String?
    let quantity : Int?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Int.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct SUGAR : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct NA : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct RIBF : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}
struct WATER : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct FOLAC : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}


struct FE : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }
    
}
