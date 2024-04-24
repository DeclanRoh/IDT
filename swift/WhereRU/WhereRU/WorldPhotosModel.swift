//
//  WorldPhotosModel.swift
//  WhereRU
//
//  Created by Abraham JongYoung Park on 4/18/24.
//

import Foundation

struct LocationInfo {
    let city: String
    let nation: String
    let imageName: String
    let latitude: Double
    let longitude: Double
    
}

class WorldPhotosModel {
    var arrayList: [LocationInfo]
    
    init() {
        arrayList = []
        
        arrayList.append(LocationInfo(city: "New york", nation: "USA", imageName: "newyork", latitude: 40.71698778804698, longitude: -73.99986208091252))
        arrayList.append(LocationInfo.init(city: "Malága", nation: "España", imageName: "malaga", latitude: 36.717019564706085, longitude: -4.431432785587306))
        arrayList.append(LocationInfo(city: "東京", nation: "日本", imageName: "tokyo",latitude: 35.59417318561349, longitude: 139.81838295038816))
    }
}
