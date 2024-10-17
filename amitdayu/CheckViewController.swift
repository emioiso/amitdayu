//
//  CheckViewController.swift
//  amitdayu
//
//  Created by emi oiso on 2024/04/24.
//

import UIKit

class CheckViewController: UIViewController {
    @IBOutlet weak var valueLabel: UILabel!
    
    // UseViewControllerから受け取った値を保持するプロパティ
        var correctValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    // correctValueを表示する
        valueLabel.text = "\(correctValue)"
    }
}
