//
//  MapViewController.swift
//  WhereRU
//
//  Created by Abraham JongYoung Park on 4/19/24.
//
import UIKit
import Foundation
import MapKit

class MapViewController: UIViewController {
    static let VIEW_MAP_CITY: Int = 1
    
    var info: LocationInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let viewMap = self.view.viewWithTag(Self.VIEW_MAP_CITY) as! MKMapView
        
        let coor = CLLocationCoordinate2D(latitude: info.latitude, longitude: info.longitude)
        let region = MKCoordinateRegion(center: coor, span: .init(latitudeDelta: 0.3, longitudeDelta: 0.3))
        
        viewMap.setRegion(region, animated: true)

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}

























