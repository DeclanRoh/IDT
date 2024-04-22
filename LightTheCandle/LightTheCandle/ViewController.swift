//
//  ViewController.swift
//  LightTheCandle
//
//  Created by Abraham JongYoung Park on 4/17/24.
//

import UIKit

class ViewController: UIViewController {

    let modelCandle = CandleModel()
    
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var labelStatus: UILabel!
    @IBOutlet weak var switchNow: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switchNow.isOn = false
        self.touchSwitch(switchNow!)
        
//        self.touchSwitch(sender: )
//        self.touchSwitch(self)
    }

    @IBAction func touchSwitch(_ sender: Any) {
#if DEBUG
        guard let nowStatus = (sender as? UISwitch)?.isOn else {
            assertionFailure()
            return
        }
#else // if RELEASE
        let nowStatus = (sender as? UISwitch)?.isOn ?? true
#endif

        if nowStatus == true {
            self.viewImage.image = modelCandle.imageCandleOn
        }
        else {
            self.viewImage.image = modelCandle.imageCandleOff
        }
        labelStatus.text = modelCandle.statusMessage(nowStatus: nowStatus)
        
    }

}





























