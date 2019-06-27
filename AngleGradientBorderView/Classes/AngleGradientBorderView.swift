//
//  AngleGradientBorderView.swift
//  AngleGradientBorderTutorial
//
//  Created by Ian Hirschfeld on 9/29/14.
//  Copyright (c) 2014 Ian Hirschfeld. All rights reserved.
//

import UIKit

public class AngleGradientBorderView: UIView {
  
  // Constants
  public static let defaultGradientBorderColors: [UIColor] =  [.red, .green, .blue]
  public static let defaultGradientBorderWidth: CGFloat = 4
  public static let defaultGradientCornerRadius: CGFloat = 0
  
  // Set the UIView's layer class to be our AngleGradientBorderLayer
  override public class var layerClass: AnyClass {
    return AngleGradientBorderLayer.self
  }
  
  // Initializer
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupGradientLayer(borderColors: AngleGradientBorderView.defaultGradientBorderColors, borderWidth: AngleGradientBorderView.defaultGradientBorderWidth, gradientCornerRadius: AngleGradientBorderView.defaultGradientCornerRadius)
  }
  
  // Custom initializer
  public init(frame: CGRect, borderColors gradientBorderColors: [UIColor] = AngleGradientBorderView.defaultGradientBorderColors, borderWidth gradientBorderWidth: CGFloat = AngleGradientBorderView.defaultGradientBorderWidth, cornerRadius gradientCornerRadius: CGFloat = AngleGradientBorderView.defaultGradientCornerRadius) {
    
    super.init(frame: frame)
    
    setupGradientLayer(borderColors: gradientBorderColors, borderWidth: gradientBorderWidth, gradientCornerRadius: gradientCornerRadius)
  }
  
  // Setup the attributes of this view's layer
  private func setupGradientLayer(borderColors gradientBorderColors: [UIColor], borderWidth gradientBorderWidth: CGFloat, gradientCornerRadius: CGFloat) {
    
    // Set the background color to white.
    backgroundColor = .white
    
    // Grab this UIView's layer and cast it as AngleGradientBorderLayer
    let layer: AngleGradientBorderLayer = self.layer as! AngleGradientBorderLayer
    
    // NOTE: Since our gradient layer is built as an image,
    // we need to scale it to match the display of the device.
    layer.contentsScale = UIScreen.main.scale
    
    // Set the gradient colors
    layer.colors = gradientBorderColors.map { $0.cgColor }
    
    // Set the border width of the gradient
    layer.gradientBorderWidth = gradientBorderWidth
    
    // Set the corner radius of the gradient
    layer.gradientCornerRadius = gradientCornerRadius
  }
}
