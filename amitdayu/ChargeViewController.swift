//
//  ChargeViewController.swift
//  amitdayu
//
//  Created by emi oiso on 2024/04/24.
//

import UIKit

class ChargeViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
       
    }
    @IBAction func btnAction(sender: UIButton){
        print(sender.tag)
        // テキストフィールドの内容を取得
                if let text = textField.text {
                    // 文字列が "amidayuiiyudana" と一致するか確認
                    if text == "amidayuiiyudana" {
                        print("成功") // 一致した場合にコンソールに出力
                    } else {
                        print("不一致") // 一致しない場合
                    }
                } else {
                    print("テキストフィールドが空") // テキストフィールドが空の場合
                }
    }
        
    
       
    
    
    
}
