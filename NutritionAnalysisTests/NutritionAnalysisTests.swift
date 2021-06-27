//
//  NutritionAnalysisTests.swift
//  NutritionAnalysisTests
//
//  Created by Maher on 6/25/21.
//

import XCTest
@testable import NutritionAnalysis

class NutritionAnalysisTests: XCTestCase {

    let mainViewModel = MainViewModel()
    let getNutritionAnalysis = GetNutritionAnalysis()
    
    func testcheckDataf() {
        let oneIngrModelTest = ["1 cup rice"]
        getNutritionAnalysis.getNutrition(ingrs: oneIngrModelTest) { (data, err, state) in
            XCTAssertNil(err)
            XCTAssertTrue(state, "Ok")
            guard let data = data else {
                XCTFail()
                return
            }
            for x in data {
                if x.ingrDetaiels?.calories == 0 {
                    XCTFail()
                }
            }
        }
    }
    
    
    

}
