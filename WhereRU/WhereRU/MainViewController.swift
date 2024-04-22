//
//  MainViewController.swift
//  WhereRU
//
//  Created by Abraham JongYoung Park on 4/18/24.
//
import UIKit
import Foundation

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let modelWP = WorldPhotosModel()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelWP.arrayList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = modelWP.arrayList[indexPath.row]
        
        
        
        let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "CellBase")
                
        cell.textLabel?.text = info.city
        cell.detailTextLabel?.text = info.nation

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.identifier
//        segue.source
        if let vcDest = segue.destination as? DetailViewController {
            vcDest.modelWP = self.modelWP
            
            let tV = self.view.viewWithTag(999) as! UITableView
            let indexPath = tV.indexPath(for: (sender as! UITableViewCell))
            
            vcDest.selectedIndex = indexPath?.row
        }
    }
    
}





























