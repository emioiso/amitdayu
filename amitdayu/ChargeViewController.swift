//
//  ChargeViewController.swift
//  amitdayu
//
//  Created by emi oiso on 2024/04/24.
//

import UIKit

class ChargeViewController: UIViewController {
    @IBOutlet weak var mistakePassword: UILabel!
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    // デリゲートプロパティ
    weak var delegate: ChargeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // パスワード入力を黒丸で表示
        textField.isSecureTextEntry = true
        
        // 保存された値を読み込む
        let defaults = UserDefaults.standard
        if let savedValue = defaults.string(forKey: "labelValue") {
            outputLabel.text = savedValue
        } else {
            // 初期値を設定
            outputLabel.text = "0"
        }
    }
        @IBAction func btnAction(sender: UIButton){
            print(sender.tag)
            // テキストフィールドの内容を取得
            if let text = textField.text {
                // 文字列が "amidayuiiyudana" と一致するか確認
                if text == "amidayuiiyudana" {
                    //一致した場合にコンソールに出力
                    print("成功")
                    // ラベルの現在の値を取得して、10を加算
                    if let currentText = outputLabel.text, let currentValue = Int(currentText) {
                        outputLabel.text = String(currentValue + 10)
                        // デリゲートを通じて値を伝える
                        delegate?.didUpdateValue(newValue: currentValue + 10)
                        //パスワードが合っている場合、"パスワードが間違っています"という文字列を消去する
                        mistakePassword.text = String("")
                    } else {
                        // ラベルが空だった場合
                        outputLabel.text = "10"
                        delegate?.didUpdateValue(newValue: 10)
                    }
                    // テキストフィールドの文字列を消去する
                    textField.text = ""
                } else {
                    // テキストフィールドの文字列を消去する
                    textField.text = ""
                    mistakePassword.text = String("パスワードが間違っています")
                    print("不一致")
                }
            } else {
                print("テキストフィールドが空") 
            }
        }
}
