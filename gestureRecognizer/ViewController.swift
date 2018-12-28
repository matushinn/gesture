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
        
        view.backgroundColor = UIColor(hue: kakudo/360, saturation: 1.0, brightness: 1.0, alpha: 1.0)
    }
    var kakudo:CGFloat = 180.0


    @IBAction func dragging(_ sender: UIPanGestureRecognizer) {
        /*
        //ドラッグしているビュー
        let tombo = sender.view!
        
        //指の座標を合わせる
        tombo.center = sender.location(in: self.view)
 */
        //ドラッグした量を調べる
        let translation = sender.translation(in: view)
        //水平方向の移動量
        if translation.x > 0{
            //右方向へドラッグしたら色相環を右回り
            kakudo -= 1.0
        }else{
            //左方向へドラッグしたら色相環を左回り
            kakudo += 1.0
        }
        
        //色相環循環
        //0~360の間で回す
        if kakudo < 0{
            kakudo += 360
        }else{
            kakudo -= 360
        }
        
        //ビューの背景色を変更する
        let color = UIColor(hue: kakudo/360, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        view.backgroundColor = color
        
    }
}

