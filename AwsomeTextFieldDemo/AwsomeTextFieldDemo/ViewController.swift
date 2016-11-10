//
//  ViewController.swift
//  AwsomeTextField
//
//  Created by KingCQ on 2016/11/6.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit
import AwsomeTextField

class ViewController: UIViewController {
    var field: AwsomeTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field = AwsomeTextField(frame: CGRect(x: 60, y: 200, width: 320, height: 44))
        field.placeholder = "手机号"
        field.borderColor = UIColor.blue
        field.activeborderColor = UIColor.red
        field.placeholderColor = UIColor.purple
        view.addSubview(field)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        field.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

