//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Life is Tech on 2017/11/03.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ansLabel: UILabel! // 計算結果を表示するためのラベル
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    
    var ope: Int = 0 // どの演算子か判断するための変数
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func select1() {
        number1 = number1 * 10 + 1
        ansLabel.text = String(number1)
    }
    @IBAction func select2() {
        number1 = number1 * 10 + 2
        ansLabel.text = String(number1)
    }
    
    @IBAction func select3() {
        number1 = number1 * 10 + 3
        ansLabel.text = String(number1)
    }
    
    @IBAction func select4() {
        number1 = number1 * 10 + 4
        ansLabel.text = String(number1)
    }

    @IBAction func select5() {
        number1 = number1 * 10 + 5
        ansLabel.text = String(number1)
    }
    
    @IBAction func select6() {
        number1 = number1 * 10 + 6
        ansLabel.text = String(number1)
    }
    
    @IBAction func select7() {
        number1 = number1 * 10 + 7
        ansLabel.text = String(number1)
    }
    
    @IBAction func select8() {
        number1 = number1 * 10 + 8
        ansLabel.text = String(number1)
    }
    
    @IBAction func select9() {
        number1 = number1 * 10 + 9
        ansLabel.text = String(number1)
    }
    
    @IBAction func select0() {
        number1 = number1 * 10
        ansLabel.text = String(number1)
    }

    @IBAction func selectPlus() {
        number2 = number1
        number1 = 0
        ope = 0
    }
    
    @IBAction func selectMinus() {
        number2 = number1
        number1 = 0
        ope = 1
    }
    
    @IBAction func selectKakeru() {
        number2 = number1
        number1 = 0
        ope = 2
    }
    
    @IBAction func selectWaru() {
        number2 = number1
        number1 = 0
        ope = 3
    }
    
    @IBAction func selectClear() {
        number1 = 0
        number2 = 0
        number3 = 0
        ope = 0
        ansLabel.text = String("0")
    }
    
    @IBAction func selectEqual() {
        number3 = number2 + number1
        
        switch (ope) {
        case 0:
            number3 = number2 + number1
            break;
        case 1:
            number3 = number2 - number1
            break;
        case 2:
            number3 = number2 * number1
            break;
        case 3:
            number3 = number2 / number1
            break;
        default:
            break;
        }
        
        ansLabel.text = String(number3)
        number3 = number1
    }

}

