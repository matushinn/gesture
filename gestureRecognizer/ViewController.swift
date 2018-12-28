//
//  ViewController.swift
//  gestureRecognizer
//
//  Created by 大江祥太郎 on 2018/12/29.
//  Copyright © 2018年 shotaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func dragging(_ sender: UIPanGestureRecognizer) {
        //ドラッグしているビュー
        let tombo = sender.view!
        
        //指の座標を合わせる
        tombo.center = sender.location(in: self.view)
    }
}

