//
//  ViewController.swift
//  4.2
//
//  Created by student on 2018/11/29.
//  Copyright © 2018年 gjn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var label:UILabel!
    var circle:MyView!
    override func loadView() {
        view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.backgroundColor = UIColor.gray
        
        //创建椭圆
        let circle = MyView(frame:CGRect(x: 100, y: 250, width: 200, height: 100))
        circle.backgroundColor = UIColor.clear
        view.addSubview(circle)
        
        //label
        
        label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        label.backgroundColor = UIColor.orange
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.text = "hello world"
        view.addSubview(label)
        
        //button
        
        let button = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 50))
        button.backgroundColor = UIColor.orange
        button.setTitle("click me", for: .normal)
        button.addTarget(self, action: #selector(ViewController.clicked), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func clicked(){
        print("hello the new world")
        label?.text = "hello the new world"
        UIView.animate(withDuration: 1){
            self.circle.center = CGPoint(x: 200, y: 0)
        }
    }

}

