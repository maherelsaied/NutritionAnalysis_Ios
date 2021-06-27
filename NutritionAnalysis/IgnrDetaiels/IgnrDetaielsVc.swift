//
//  IgnrDetaiels.swift
//  NutritionAnalysis
//
//  Created by Maher on 6/26/21.
//

import UIKit
import RxSwift
import RxCocoa

class IgnrDetaiels: UIViewController {
    @IBOutlet weak var ignrTable: UITableView!
    
    var allIgnr : [OneIngrModel] = []
    var disposeBag = DisposeBag()
    let ignrCell = "IgnrCell"
    let ignrHeader = "IgnrHeader"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTable ()
    }
    
    
    func setUpTable () {
        
        let allIgnrObserv = Observable.of(allIgnr)
        self.ignrTable.register(UINib(nibName: ignrCell, bundle: nil), forCellReuseIdentifier: ignrCell)
        self.ignrTable.register(UINib(nibName: ignrHeader , bundle: nil), forHeaderFooterViewReuseIdentifier: ignrHeader)
        allIgnrObserv.bind(to: ignrTable.rx.items(cellIdentifier: ignrCell, cellType: IgnrCell.self)) { row , data , cell in
            cell.configCell(data: data)
        }.disposed(by: disposeBag)
        self.ignrTable.delegate = self
    }
    
    
    @IBAction func showTotal(_ sender: Any) {
        let vc = TotalVC()
        vc.totalModel = TotalModel(data: self.allIgnr)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}


extension IgnrDetaiels : UITableViewDelegate  {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: ignrHeader ) as? IgnrHeader else {return nil}
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}
