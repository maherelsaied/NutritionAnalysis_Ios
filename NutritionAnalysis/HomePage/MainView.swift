//
//  ViewController.swift
//  NutritionAnalysis
//
//  Created by Maher on 6/25/21.
//

import UIKit
import RxCocoa
import RxSwift
import MBProgressHUD

class ViewController: UIViewController {
    
    @IBOutlet weak var nutritionTf: UITextView!
    @IBOutlet weak var anlizerBtn: UIButton!
    
    var mainViewModel = MainViewModel()
    var disposeBag = DisposeBag()
    var result : [OneIngrModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindOutLet()
        validationElement()
        getData()
        subscripRespone()
        controlLoading()
    }
    
    func bindOutLet () {
        nutritionTf.rx.text.orEmpty.bind(to: mainViewModel.nutritionText).disposed(by: disposeBag)
    }
    
    func validationElement() {
        mainViewModel.isValidText.bind(to: anlizerBtn.rx.isEnabled).disposed(by: disposeBag)
    }
    
    
    func getData() {
        DispatchQueue.global(qos: .background).async{[weak self] in
            guard let self = self else {return}
            self.anlizerBtn.rx.tap.subscribe {[weak self] (_)  in
                self?.mainViewModel.getData { [weak self] (result) in
                    guard let result = result , result.count > 0 else {return}
                    self?.result = result
                    DispatchQueue.main.async {
                        let vc = IgnrDetaiels()
                        vc.allIgnr = result
                        self?.navigationController?.pushViewController(vc, animated: true)
                    }
                }
            }.disposed(by: self.disposeBag)
            
        }
        
    }
    
    func controlLoading() {
        mainViewModel.loadingBehavior.subscribe(onNext: {[weak self] (isLoading) in
            if isLoading {
                self?.showIndcator(title: "", discribtion: "")
            }else{
                self?.hideIndcator()
            }
        }).disposed(by: disposeBag)
    }
    func subscripRespone() {
        mainViewModel.stateObservable.subscribe(onNext: { [weak self] (state) in
            guard state else {
                self?.showAlert(Error: "Please Insert right Data")
                return}
        }).disposed(by: disposeBag)
    }
    
}



