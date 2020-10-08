//
//  GradientView.swift
//  Lysten Rewards
//
//  Created by samosys on 4/18/19.
//  Copyright © 2019 Lysten. All rights reserved.
//

import UIKit

@IBDesignable class GradientView: UIView {
  
  private var gradientLayer: CAGradientLayer!
  
  @IBInspectable var topColor: UIColor = .red {
    didSet {
      setNeedsLayout()
    }
  }
  
  @IBInspectable var bottomColor: UIColor = .yellow {
    didSet {
      setNeedsLayout()
    }
  }
  
  @IBInspectable var shadowColor1: UIColor = .clear {
    didSet {
      setNeedsLayout()
    }
  }
  
  @IBInspectable var shadowX: CGFloat = 0 {
    didSet {
      setNeedsLayout()
    }
  }
  
  @IBInspectable var shadowY: CGFloat = -3 {
    didSet {
      setNeedsLayout()
    }
  }
  
  @IBInspectable var shadowBlur: CGFloat = 3 {
    didSet {
      setNeedsLayout()
    }
  }
  
  @IBInspectable var startPointX: CGFloat = 0 {
    didSet {
      setNeedsLayout()
    }
  }
  
  @IBInspectable var startPointY: CGFloat = 0.5 {
    didSet {
      setNeedsLayout()
    }
  }
  
  @IBInspectable var endPointX: CGFloat = 1 {
    didSet {
      setNeedsLayout()
    }
  }
  
  @IBInspectable var endPointY: CGFloat = 0.5 {
    didSet {
      setNeedsLayout()
    }
  }
  
  @IBInspectable var cornerRadius: CGFloat = 0 {
    didSet {
      setNeedsLayout()
    }
  }
  
  override class var layerClass: AnyClass {
    return CAGradientLayer.self
  }
  
  override func layoutSubviews() {
    self.gradientLayer = self.layer as? CAGradientLayer
    self.gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
    self.gradientLayer.startPoint = CGPoint(x: startPointX, y: startPointY)
    self.gradientLayer.endPoint = CGPoint(x: endPointX, y: endPointY)
    self.layer.cornerRadius = cornerRadius
    self.layer.shadowColor = shadowColor1.cgColor
    self.layer.shadowOffset = CGSize(width: shadowX, height: shadowY)
    self.layer.shadowRadius = shadowBlur
    self.layer.shadowOpacity = 1
    
  }
  
  func animate(duration: TimeInterval, newTopColor: UIColor, newBottomColor: UIColor) {
    
    let fromColors = self.gradientLayer?.colors
    let toColors: [AnyObject] = [ newTopColor.cgColor, newBottomColor.cgColor]
    self.gradientLayer?.colors = toColors
    let animation : CABasicAnimation = CABasicAnimation(keyPath: "colors")
    animation.fromValue = fromColors
    animation.toValue = toColors
    animation.duration = duration
    animation.isRemovedOnCompletion = true
//    animation.fillMode = .forwards
//    animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunction.linear)
    self.gradientLayer?.add(animation, forKey:"animateGradient")
  }
}
extension UIColor {
  convenience init(rgb: UInt) {
    self.init(
      red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
      green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
      blue: CGFloat(rgb & 0x0000FF) / 255.0,
      alpha: CGFloat(1.0)
    )
  }
}
@IBDesignable
class RoundedCornerView: UIView {
    
    var cornerRadiusValue : CGFloat = 0
    var corners : UIRectCorner = []
    
    @IBInspectable public var cornerRadius : CGFloat {
        get {
            return cornerRadiusValue
        }
        set {
            cornerRadiusValue = newValue
        }
    }
    
    @IBInspectable public var topLeft : Bool {
        get {
            return corners.contains(.topLeft)
        }
        set {
            if newValue {
                corners.insert(.topLeft)
                updateCorners()
            } else {
                if corners.contains(.topLeft) {
                    corners.remove(.topLeft)
                    updateCorners()
                }
            }
        }
    }
    
    @IBInspectable public var topRight : Bool {
        get {
            return corners.contains(.topRight)
        }
        set {
            if newValue {
                corners.insert(.topRight)
                updateCorners()
            } else {
                if corners.contains(.topRight) {
                    corners.remove(.topRight)
                    updateCorners()
                }
            }
            
        }
    }
    
    @IBInspectable public var bottomLeft : Bool {
        get {
            return corners.contains(.bottomLeft)
        }
        set {
            if newValue {
                corners.insert(.bottomLeft)
                updateCorners()
            } else {
                if corners.contains(.bottomLeft) {
                    corners.remove(.bottomLeft)
                    updateCorners()
                }
            }
            
        }
    }
    
    @IBInspectable public var bottomRight : Bool {
        get {
            return corners.contains(.bottomRight)
        }
        set {
            if newValue {
                corners.insert(.bottomRight)
                updateCorners()
            } else {
                
                if corners.contains(.bottomRight) {
                    corners.remove(.bottomRight)
                    updateCorners()
                }
            }
            
        }
    }
    
    func updateCorners() {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadiusValue, height: cornerRadiusValue))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
