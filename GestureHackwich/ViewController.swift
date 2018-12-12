//
//  ViewController.swift
//  GestureHackwich
//
//  Created by EDUARDO MENDOZA on 11/8/18.
//  Copyright © 2018 EDUARDO MENDOZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    var isBlue = true
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        if isBlue == true {
            blueView.backgroundColor = yellowView.backgroundColor
        }else{
            blueView.backgroundColor = .blue
        }
        isBlue = !isBlue
    }
    
    @IBAction func didpan(_ sender: UIPanGestureRecognizer) {
        var point = sender.location(in: yellowView)
        yellowView.center = CGPoint(x: point.x, y: point.y)
        print(point)
    }
    
}

