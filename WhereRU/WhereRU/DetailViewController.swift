//
//  DetailViewController.swift
//  WhereRU
//
//  Created by Abraham JongYoung Park on 4/18/24.
//
import UIKit
import Foundation

class DetailViewController: UIViewController {
    var modelWP: WorldPhotosModel!
    var selectedIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let info = modelWP.arrayList[selectedIndex]
        
        let labelLeft = self.view.viewWithTag(1) as? UILabel
        let labelRight = self.view.viewWithTag(2) as? UILabel
        let viewImage = self.view.viewWithTag(3) as? UIImageView
        
        labelLeft?.text = info.city
        labelRight?.text = info.nation
        viewImage?.image = UIImage(named: info.imageName)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vcMap = segue.destination as! MapViewController
        
        vcMap.info = self.modelWP.arrayList[self.selectedIndex]
        
    }
}






























