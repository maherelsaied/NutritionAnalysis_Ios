//
//  MainViewModel.swift
//  NutritionAnalysis
//
//  Created by Maher on 6/25/21.
//

import Foundation
import RxCocoa
import RxSwift

class MainViewModel {
    
    var nutritionText = BehaviorRelay<String>(value: "")
    var loadingBehavior = BehaviorRelay<Bool>(value: false)
    private var stateSubject = PublishSubject<Bool>()
    private var resultModel = PublishSubject<[OneIngrModel]>()
    var lines : [String] = []
    var resultIngr : [OneIngrModel] = []
    var stateObservable : Observable<Bool> {
        return stateSubject
    }
    var resultObservable : Observable<[OneIngrModel]> {
        return resultModel
    }
    
    var isValidText : Observable<Bool> {
        return nutritionText.asObservable().map { (txt) -> Bool in
            let isValidPhone = txt.trimmingCharacters(in: .whitespacesAndNewlines).count > 5
            return isValidPhone
        }
    }
    
    
    
    func getData(complation : @escaping ([OneIngrModel]?)->Void) {
        loadingBehavior.accept(true)
        lines = nutritionText.value.components(separatedBy: CharacterSet.newlines)
        
        GetNutritionAnalysis.getNutritionAnalysis.getNutrition(ingrs: lines) {[weak self] (data, err , state) in
            
            guard let self = self else {return}
            
            guard state else {
                self.stateSubject.onNext(false)
                self.loadingBehavior.accept(false)
                return}
            
            guard let data = data else {
                self.stateSubject.onNext(false)
                self.loadingBehavior.accept(false)
                return }
            
            self.loadingBehavior.accept(false)
            self.stateSubject.onNext(true)
            
            complation(data)
        }
    }
}
