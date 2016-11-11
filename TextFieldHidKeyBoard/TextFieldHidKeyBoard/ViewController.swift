//
//  ViewController.swift
//  TextFieldHidKeyBoard
//
//  Created by pankx on 2016/11/11.
//  Copyright © 2016年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    //获取屏幕的大小
    let fullScreenSize = UIScreen.main.bounds.size;
    //定义一个textfield
    let mytext = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 30));
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置TextField的起始值
        mytext.placeholder = "请输入...";
        //设置键盘类型
        mytext.keyboardType = .default;
        //设置代理
        mytext.delegate = self;
        //设置TextField的位置
        mytext.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.5);
        //把TextField加入视图View中
        self.view.addSubview(mytext);
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //设置点击键盘返回键隐藏键盘
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.mytext.endEditing(true);
        //也可以用下面这个方法
        //self.mytext.resignFirstResponder();
        return true;
    }


}

