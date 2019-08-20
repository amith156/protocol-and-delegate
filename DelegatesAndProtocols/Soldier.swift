//
//  Soldier.swift
//  DelegatesAndProtocols
//
//  Created by Amith Kumar Narayan on 18/08/2019.
//  Copyright © 2019 Amith. All rights reserved.
//

import Foundation
import UIKit

class Soldier : UIViewController {
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var decisionProtocolDelegate : decisionProtocol?
    var titleData : String?
    var imageData : UIImage?
    var colourData : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLable.text = titleData
        imageView.image = imageData
        view.backgroundColor = colourData
    }
    
    @IBAction func declineOrder(_ sender: Any) {
        decisionProtocolDelegate?.orderResponce(orderResult: "Declined!", orderType: titleData!)
    }
    
    @IBAction func acceptOrder(_ sender: Any) {
        decisionProtocolDelegate?.orderResponce(orderResult: "Accepted!", orderType: titleData!)
    }
}
