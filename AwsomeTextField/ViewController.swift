//
//  ViewController.swift
//  AwsomeTextField
//
//  Created by KingCQ on 2016/11/6.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var field: AwsomeTextField!
    var namefield: AwsomeTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namefield = AwsomeTextField(frame: CGRect(x: 60, y: 200, width: 320, height: 44))
        namefield.placeholderFontScale = 0.8
        namefield.placeholder = "生份证"
        
        field = AwsomeTextField(frame: CGRect(x: 60, y: 280, width: 320, height: 44))
        field.borderColor = UIColor.black
        field.activeborderColor = UIColor.red
        field.placeholderColor = UIColor.green
        field.placeholderFontScale = 0.7
        field.placeholder = "手机号"
        
        view.addSubview(namefield)
        view.addSubview(field)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        field.resignFirstResponder()
        namefield.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

