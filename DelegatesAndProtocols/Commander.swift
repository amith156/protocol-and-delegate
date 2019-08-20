//
//  ViewController.swift
//  DelegatesAndProtocols
//
//  Created by Amith Kumar Narayan on 17/08/2019.
//  Copyright © 2019 Amith. All rights reserved.
//

import UIKit

//protocol ordersDelegate {
//    func folowingOrder(image : UIImage, title : String, color : UIColor)
//}

class Commander: UIViewController {

//    var CommanderDelegate : ordersDelegate!
    
    @IBOutlet weak var resultOrder: UILabel!
    
    var soldierVC :Soldier?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "discriptionSegue" {
            self.soldierVC = segue.destination as? Soldier
            soldierVC?.decisionProtocolDelegate = self
        }
    }
    
    func commandAction(title titleText : String, imageName imageString : String, colour BGcolour : UIColor) {
        self.soldierVC?.titleData = titleText
        self.soldierVC?.imageData = UIImage(named: imageString)
        self.soldierVC?.colourData = BGcolour
    }

    @IBAction func trainingAction(_ sender: Any) {
        performSegue(withIdentifier: "discriptionSegue", sender: nil)
        commandAction(title: "Training", imageName : "training", colour: .blue)
    }
    
    @IBAction func guardAction(_ sender: Any) {
        performSegue(withIdentifier: "discriptionSegue", sender: nil)
        commandAction(title: "Guard", imageName : "guard", colour: .yellow)
    }
    
    @IBAction func warAction(_ sender: Any) {
        performSegue(withIdentifier: "discriptionSegue", sender: nil)
        commandAction(title: "War", imageName : "war", colour: .red)
    }
    
}
extension Commander : decisionProtocol {
    func orderResponce(orderResult result: String, orderType type: String) {
        resultOrder.text = type + " command " + result
    }
}
