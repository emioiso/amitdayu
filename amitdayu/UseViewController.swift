//
//  UseViewController.swift
//  amitdayu
//
//  Created by emi oiso on 2024/04/24.
//

import UIKit

class UseViewController: UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // ChargeViewControllerからの値を受け取るメソッド
    func updateValue(newValue: Int) {
        valueLabel.text = String(newValue)
    }
}
