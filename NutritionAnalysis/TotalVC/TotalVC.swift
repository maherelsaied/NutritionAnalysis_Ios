//
//  TotalVC.swift
//  NutritionAnalysis
//
//  Created by Maher on 6/26/21.
//

import UIKit
import RxCocoa
import RxSwift
class TotalVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    var totalModel : TotalModel?
    let totalCell = "TotalCell"
    let totalHeader = "TotalHeader"
    
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTable () 
    }
    
    
    func setUpTable () {
        guard let rowaNum = self.totalModel?.getDataAsArray() else {return}
        let rowaNumObserv = Observable.of(rowaNum)
        self.tableView.register(UINib(nibName: totalCell, bundle: nil), forCellReuseIdentifier: totalCell)
        self.tableView.register(UINib(nibName: totalHeader , bundle: nil), forHeaderFooterViewReuseIdentifier: totalHeader)
        rowaNumObserv.bind(to: tableView.rx.items(cellIdentifier: totalCell, cellType: TotalCell.self)) { row , data , cell in
            cell.configCell(data: data)
        }.disposed(by: disposeBag)
        self.tableView.delegate = self
    }
    
    
    
    
}


extension TotalVC : UITableViewDelegate  {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 160
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: totalHeader ) as? TotalHeader else {return nil}
        if let cal = self.totalModel?.calories {
            headerView.calText.text = String(cal)
        }
        headerView.backCluser = {[weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}
