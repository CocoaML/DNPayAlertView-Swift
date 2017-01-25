//
//  ViewController.swift
//  DCPaymentAlertSwift
//
//  Created by dawnnnnn on 16/3/10.
//  Copyright © 2016年 dawnnnnn. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.lightGray
        
        // UIButton
        let button = UIButton(type: UIButtonType.system)
        button.frame = CGRect(x: 10, y: 300, width: 200, height: 50)
        button.backgroundColor = UIColor.green
        button.setTitle("button", for: UIControlState())
        button.setTitleColor(UIColor.darkGray, for: UIControlState())
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func buttonClicked(_ sender: UIButton) {
        
        let payAlert = DCPayAlertView(frame: CGRect.zero)
        payAlert.setTitle("请输入支付密码")
        payAlert.setDetail("提现")
        payAlert.setAmount(10)
        payAlert.completeBlock = ({(password: String) -> Void in
            print("password" + password)
        })
        payAlert.show()
    }
}

