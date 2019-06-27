//
//  AngleGradientBorderLayer.swift
//  MetalPay
//
//  Created by Yves Songolo on 6/25/19.
//  Copyright © 2019 Metallicus Inc. All rights reserved.
//

import Foundation

import UIKit

class AngleGradientBorderLayer: AngleGradientLayer {
  
  // Properties
  var gradientBorderWidth: CGFloat = 1
  
  var gradientCornerRadius: CGFloat = 0
  
  // Override to add a border shape to AngleGradientLayer.
  override func draw(in ctx: CGContext) {
    // Draw a shape that fills the view minus the width of your final border.
    // This can be any shape you want to make a border out of.
    // This example draws a circle.
    let shapePath = UIBezierPath(roundedRect: bounds.insetBy(dx: gradientBorderWidth, dy: gradientBorderWidth), cornerRadius: gradientCornerRadius)
    
    // Copy the path of th e shape and turn it into a stroke.
    let shapeCopyPath = CGPath(__byStroking: shapePath.cgPath, transform: nil, lineWidth: gradientBorderWidth, lineCap: CGLineCap.butt, lineJoin: CGLineJoin.bevel, miterLimit: 0)
    
    ctx.saveGState()
    
    // Add the stroked path to the context and clip to it.
    ctx.addPath(shapeCopyPath!)
    ctx.clip()
    
    // Call our super class's (AngleGradientLayer) #drawInContext
    // which will do the work to create the gradient.
    super.draw(in: ctx)
    
    ctx.restoreGState()
  }
}
