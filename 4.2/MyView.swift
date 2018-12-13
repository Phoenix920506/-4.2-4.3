//
//  MyView.swift
//  4.2
//
//  Created by student on 2018/11/29.
//  Copyright © 2018年 gjn. All rights reserved.
//

import UIKit

class MyView: UIView {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.purple.setStroke()//边框
        path.stroke()
        UIColor.yellow.setFill()//填充
        path.fill()
    }
}
