//
//  BeneficiariesController.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public class BeneficiariesController: BaseController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var beneficiariesTableView: UITableView!

    private var beneficiariesViewModel: BeneficiariesViewModel? = nil
    private let beneficiariesDatasource = BeneficiariesDatasource()

    public override func bindView() {
        super.bindView()
        titleLabel.text = .l10nTextTitleBeneficiaries
        beneficiariesViewModel = BeneficiariesViewModel(beneficiariesDatasource: beneficiariesDatasource)
        beneficiariesViewModel?.beneficiariesDatasource.data.bind { _ in
            self.beneficiariesTableView.reloadData()
        }
        beneficiariesViewModel?.isLoading.bind {_ in
            guard let isLoading = self.beneficiariesViewModel?.isLoading.value else {
                return
            }
            self.showHideLoader(isLoading)
        }
        beneficiariesViewModel?.error.bind {_ in
            guard let error = self.beneficiariesViewModel?.error.value else {
                return
            }
            self.presentAlert(error)
        }
    }
    
    public override func functionality() {
        super.functionality()
        beneficiariesTableView.dataSource = beneficiariesDatasource
        beneficiariesTableView.delegate = beneficiariesDatasource
        beneficiariesViewModel?.loadData()
        beneficiariesDatasource.tableViewItemSelectionHandler = { indexpath in
            self.performSegue(withIdentifier: "BeneficiariesListToDetail", sender: nil)
        }
    }
    
    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BeneficiariesListToDetail" {
            let viewController:BeneficiaryDetailController = segue.destination as! BeneficiaryDetailController
            let indexPath = self.beneficiariesTableView.indexPathForSelectedRow
            if let beneficiaryData = beneficiariesViewModel?.beneficiariesDatasource.data.value[indexPath!.row] {
                viewController.setBeneficiaryData(beneficiaryData:beneficiaryData)
            }
        }
    }
    
  
}
