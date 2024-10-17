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
    
    
    // チケットを使うボタンがクリックされた時の処理
        @IBAction func useTicketButtonClicked(_ sender: UIButton) {
            // "checkSegue"に対応するsegueを実行する
            performSegue(withIdentifier: "checkSegue", sender: nil)
        }
        
        // CheckViewControllerに遷移する際の準備
    // CheckViewControllerに遷移する際の準備
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "checkSegue" {
                if let checkViewController = segue.destination as? CheckViewController {
                    // CheckViewControllerのプロパティに渡す値を設定する
                    checkViewController.correctValue = correct - 1
                }
            }
        }
}
