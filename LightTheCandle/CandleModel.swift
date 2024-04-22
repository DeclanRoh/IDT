//
//  CandleModel.swift
//  LightTheCandle
//
//  Created by Abraham JongYoung Park on 4/18/24.
//

import UIKit
import Foundation

class CandleModel {
    let imageCandleOn: UIImage! = UIImage(named: "candle on")
    let imageCandleOff: UIImage
    
    init() {
        imageCandleOff = UIImage(named: "candle off")!
    }
    
    func statusMessage(nowStatus: Bool) -> String {
        if nowStatus {
            return "Candle is now on!!!"
        }
        else {
            return "Candle is now off"
        }
    }
}

