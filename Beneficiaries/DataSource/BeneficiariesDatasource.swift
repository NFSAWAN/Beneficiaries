//
//  BeneficiariesDatasource.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public typealias TableViewItemHandlerType = (IndexPath) -> Void

public final class BeneficiariesDatasource: GenericDataSource<BeneficiaryData>, UITableViewDataSource, UITableViewDelegate {
    
    public var tableViewItemSelectionHandler : TableViewItemHandlerType?
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.value.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BeneficiariesTableViewCell.identifier(), for: indexPath) as? BeneficiariesTableViewCell else {
            let defaultCell = UITableViewCell(style: .default, reuseIdentifier: "Default")
            defaultCell.textLabel?.text = " N/A"
            defaultCell.detailTextLabel?.text = " N/A"
            return defaultCell
        }
        
        cell.configure(data.value[indexPath.row])
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewItemSelectionHandler?(indexPath)
    }
    
}
