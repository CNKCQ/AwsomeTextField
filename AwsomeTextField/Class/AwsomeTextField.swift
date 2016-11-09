//
//  AwsomeTextField.swift
//  AwsomeTextField
//
//  Created by KingCQ on 2016/11/6.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

open class AwsomeTextField: UITextField {
    open var activeborderColor: UIColor = .blue {
        didSet {
            updateborder()
        }
    }
    
    open var borderColor: UIColor = .gray {
        didSet {
            updateborder()
        }
    }
    
    open var placeholderColor: UIColor = .gray {
        didSet {
            updateplaceholder()
        }
    }
    
    open var placeholderFontScale: CGFloat = 0.7
    
    var placeholderLabel = UILabel()
    var shapelayer: CAShapeLayer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        placeholderLabel = UILabel(frame: CGRect(x: 10, y: 0, width: bounds.width - 10, height: bounds.height))
        let path = UIBezierPath(roundedRect: bounds, cornerRadius: bounds.height / 4)
        leftViewMode = .always
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 20))
        shapelayer = CAShapeLayer()
        shapelayer.path = path.cgPath
        self.layer.addSublayer(shapelayer)
        addSubview(placeholderLabel)
    }
    
    override open func drawPlaceholder(in rect: CGRect) {
        super.drawPlaceholder(in: rect)
        placeholderLabel.text = placeholder
        placeholder = nil
    }
    
    override open func willMove(toSuperview newSuperview: UIView?) {
        if newSuperview != nil {
            NotificationCenter.default.addObserver(self, selector: #selector(textFieldDidEndEditing), name: Notification.Name.UITextFieldTextDidEndEditing, object: self)
            NotificationCenter.default.addObserver(self, selector: #selector(textFieldDidBeginEditing), name: NSNotification.Name.UITextFieldTextDidBeginEditing, object: self)
        } else {
            NotificationCenter.default.removeObserver(self)
        }
    }
    
    func textFieldDidEndEditing() {
        let isNotEmpty = text?.characters.isEmpty ?? true
        if isNotEmpty {
            UIView.animate(withDuration: 0.5, animations: { 
                self.placeholderLabel.frame = CGRect(x: 10, y: 0, width: self.bounds.width - 10, height: self.bounds.height)
                self.placeholderLabel.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.shapelayer.strokeStart = 0
                self.shapelayer.strokeEnd = 1
                self.shapelayer.strokeColor = self.borderColor.cgColor
            })
        }
    }
    
    func textFieldDidBeginEditing() {
        UIView.animate(withDuration: 0.5) {
            self.placeholderLabel.frame = CGRect(x: self.bounds.height / 2, y: -20, width: 60, height: 44)
            self.placeholderLabel.transform = CGAffineTransform(scaleX: 1, y: self.placeholderFontScale)
            self.shapelayer.strokeStart = 0.1
            self.shapelayer.strokeEnd = 1
            self.shapelayer.strokeColor = self.activeborderColor.cgColor
        }
    }
    
    func updateborder()  {
        shapelayer.fillColor = UIColor.clear.cgColor
        shapelayer.strokeColor = borderColor.cgColor
    }
    
    func updateplaceholder() {
        placeholderLabel.textColor = placeholderColor
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
