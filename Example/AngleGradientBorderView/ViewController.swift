//
//  ViewController.swift
//  AngleGradientBorderView
//
//  Created by erusso1 on 06/27/2019.
//  Copyright (c) 2019 erusso1. All rights reserved.
//

import UIKit
import AngleGradientBorderView

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let view = AngleGradientBorderView(frame: CGRect(x: 0, y: 0, width: 200, height: 200), borderColors: [.yellow, .orange, .purple, .red], borderWidth: 4, cornerRadius: 20)
    view.translatesAutoresizingMaskIntoConstraints = false
    view.center = self.view.center
    self.view.addSubview(view)
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

