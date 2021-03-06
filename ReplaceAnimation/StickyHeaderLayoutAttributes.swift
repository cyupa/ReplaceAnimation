//
//  StickHeaderLayoutAttributes.swift
//  ReplaceAnimation
//
//  Created by Alexander Hüllmandel on 05/03/16.
//
//  Copyrights

import UIKit

class StickyHeaderLayoutAttributes: UICollectionViewLayoutAttributes {
  var progress: CGFloat = 1.0
  override var zIndex: Int {
    didSet {
      self.transform3D = CATransform3DMakeTranslation(0.0, 0.0, self.zIndex == 1 ? -1.0 : 0.0)
    }
  }
  
  override func copyWithZone(zone: NSZone) -> AnyObject {
    let copy = super.copyWithZone(zone) as! StickyHeaderLayoutAttributes
    copy.progress = self.progress
    return copy
  }
}
