//
//  UseViewController.swift
//  amitdayu
//
//  Created by emi oiso on 2024/04/24.
//

import UIKit

class UseViewController: UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    
    // ChargeViewControllerから受け取った値を保持するプロパティ
    var correct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 受け取った値を表示する
        valueLabel.text = "\(correct)"
    }
}
