//
//  UIViewBorder.swift
//
//  Originally created by Aaron Ng on 12/28/13.
//  Migrated to Swift by Edouard Kaiser 12/03/14.
//  Copyright (c) 2013 Delve. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

extension UIView {
  
  //////////
  // Top
  //////////
  func createTopBorderWithHeight(height: CGFloat, color: UIColor) -> CALayer {
    return getOneSidedBorderWithFrame(CGRectMake(0, 0, self.frame.size.width, height), color:color)
  }
  
  func createViewBackedTopBorderWithHeight(height: CGFloat, color:UIColor) -> UIView {
    return getViewBackedOneSidedBorderWithFrame(CGRectMake(0, 0, self.frame.size.width, height), color:color)
  }
  
  func addTopBorderWithHeight(height: CGFloat, color:UIColor) {
    addOneSidedBorderWithFrame(CGRectMake(0, 0, self.frame.size.width, height), color:color)
  }
  
  func addViewBackedTopBorderWithHeight(height: CGFloat, color:UIColor) {
    addViewBackedOneSidedBorderWithFrame(CGRectMake(0, 0, self.frame.size.width, height), color:color)
  }
  
  
  //////////
  // Top + Offset
  //////////
  
  func createTopBorderWithHeight(height:CGFloat, color:UIColor, leftOffset:CGFloat, rightOffset:CGFloat, topOffset:CGFloat) -> CALayer {
    // Subtract the bottomOffset from the height and the thickness to get our final y position.
    // Add a left offset to our x to get our x position.
    // Minus our rightOffset and negate the leftOffset from the width to get our endpoint for the border.
    return getOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, 0 + topOffset, self.frame.size.width - leftOffset - rightOffset, height), color:color)
  }
  
  func createViewBackedTopBorderWithHeight(height:CGFloat, color:UIColor, leftOffset:CGFloat, rightOffset:CGFloat, topOffset:CGFloat) -> UIView {
  return getViewBackedOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, 0 + topOffset, self.frame.size.width - leftOffset - rightOffset, height), color:color)
  }
  
  func addTopBorderWithHeight(height:CGFloat, color:UIColor, leftOffset:CGFloat, rightOffset:CGFloat, topOffset:CGFloat) {
    // Add leftOffset to our X to get start X position.
    // Add topOffset to Y to get start Y position
    // Subtract left offset from width to negate shifting from leftOffset.
    // Subtract rightoffset from width to set end X and Width.
    addOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, 0 + topOffset, self.frame.size.width - leftOffset - rightOffset, height), color:color)
  }
  
  func addViewBackedTopBorderWithHeight(height:CGFloat, color:UIColor, leftOffset:CGFloat, rightOffset:CGFloat, topOffset:CGFloat) {
    addViewBackedOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, 0 + topOffset, self.frame.size.width - leftOffset - rightOffset, height), color:color)
  }
  
  
  //////////
  // Right
  //////////
  
  func createRightBorderWithWidth(width:CGFloat, color:UIColor) -> CALayer {
    return getOneSidedBorderWithFrame(CGRectMake(self.frame.size.width-width, 0, width, self.frame.size.height), color:color)
  }
  
  func createViewBackedRightBorderWithWidth(width:CGFloat, color:UIColor) -> UIView {
    return getViewBackedOneSidedBorderWithFrame(CGRectMake(self.frame.size.width-width, 0, width, self.frame.size.height), color:color)
  }
  
  func addRightBorderWithWidth(width:CGFloat, color:UIColor){
    addOneSidedBorderWithFrame(CGRectMake(self.frame.size.width-width, 0, width, self.frame.size.height), color:color)
  }
  
  func addViewBackedRightBorderWithWidth(width:CGFloat, color:UIColor) {
    addViewBackedOneSidedBorderWithFrame(CGRectMake(self.frame.size.width-width, 0, width, self.frame.size.height), color:color)
  }
  
  
  //////////
  // Right + Offset
  //////////
  
  func createRightBorderWithWidth(width: CGFloat, color:UIColor, rightOffset:CGFloat, topOffset:CGFloat, bottomOffset:CGFloat) -> CALayer {
    // Subtract bottomOffset from the height to get our end.
    return getOneSidedBorderWithFrame(CGRectMake(self.frame.size.width-width-rightOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset), color:color)
  }
  
  func createViewBackedRightBorderWithWidth(width: CGFloat, color:UIColor, rightOffset:CGFloat, topOffset:CGFloat, bottomOffset:CGFloat) -> UIView {
    return getViewBackedOneSidedBorderWithFrame(CGRectMake(self.frame.size.width-width-rightOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset), color:color)
  }
  
  func addRightBorderWithWidth(width: CGFloat, color:UIColor, rightOffset:CGFloat, topOffset:CGFloat, bottomOffset:CGFloat) {
    // Subtract the rightOffset from our width + thickness to get our final x position.
    // Add topOffset to our y to get our start y position.
    // Subtract topOffset from our height, so our border doesn't extend past teh view.
    // Subtract bottomOffset from the height to get our end.
    addOneSidedBorderWithFrame(CGRectMake(self.frame.size.width-width-rightOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset), color:color)
  }
  
  func addViewBackedRightBorderWithWidth(width: CGFloat, color:UIColor, rightOffset:CGFloat, topOffset:CGFloat, bottomOffset:CGFloat) {
    addViewBackedOneSidedBorderWithFrame(CGRectMake(self.frame.size.width-width-rightOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset), color:color)
  }
  
  
  //////////
  // Bottom
  //////////
  
  func createBottomBorderWithHeight(height: CGFloat, color:UIColor) -> CALayer {
    return getOneSidedBorderWithFrame(CGRectMake(0, self.frame.size.height-height, self.frame.size.width, height), color:color)
  }
  
  func createViewBackedBottomBorderWithHeight(height: CGFloat, color:UIColor) -> UIView {
    return getViewBackedOneSidedBorderWithFrame(CGRectMake(0, self.frame.size.height-height, self.frame.size.width, height), color:color)
  }
  
  func addBottomBorderWithHeight(height: CGFloat, color:UIColor) {
    return addOneSidedBorderWithFrame(CGRectMake(0, self.frame.size.height-height, self.frame.size.width, height), color:color)
  }
  
  func addViewBackedBottomBorderWithHeight(height: CGFloat, color:UIColor) {
    addViewBackedOneSidedBorderWithFrame(CGRectMake(0, self.frame.size.height-height, self.frame.size.width, height), color:color)
  }
  
  
  //////////
  // Bottom + Offset
  //////////
  
  func createBottomBorderWithHeight(height: CGFloat, color:UIColor, leftOffset:CGFloat, rightOffset:CGFloat, bottomOffset:CGFloat) -> CALayer {
    // Subtract the bottomOffset from the height and the thickness to get our final y position.
    // Add a left offset to our x to get our x position.
    // Minus our rightOffset and negate the leftOffset from the width to get our endpoint for the border.
    return getOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, self.frame.size.height-height-bottomOffset, self.frame.size.width - leftOffset - rightOffset, height), color:color)
  }
  
  func createViewBackedBottomBorderWithHeight(height: CGFloat, color:UIColor, leftOffset:CGFloat, rightOffset:CGFloat, bottomOffset:CGFloat) -> UIView {
    return getViewBackedOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, self.frame.size.height-height-bottomOffset, self.frame.size.width - leftOffset - rightOffset, height), color:color)
  }
  
  func addBottomBorderWithHeight(height: CGFloat, color:UIColor, leftOffset:CGFloat, rightOffset:CGFloat, bottomOffset:CGFloat) {
    // Subtract the bottomOffset from the height and the thickness to get our final y position.
    // Add a left offset to our x to get our x position.
    // Minus our rightOffset and negate the leftOffset from the width to get our endpoint for the border.
    addOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, self.frame.size.height-height-bottomOffset, self.frame.size.width - leftOffset - rightOffset, height), color:color)
  }
  
  func addViewBackedBottomBorderWithHeight(height: CGFloat, color:UIColor, leftOffset:CGFloat, rightOffset:CGFloat, bottomOffset:CGFloat) {
    addViewBackedOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, self.frame.size.height-height-bottomOffset, self.frame.size.width - leftOffset - rightOffset, height), color:color)
  }
  
  
  
  //////////
  // Left
  //////////
  
  func createLeftBorderWithWidth(width: CGFloat, color:UIColor) -> CALayer {
    return getOneSidedBorderWithFrame(CGRectMake(0, 0, width, self.frame.size.height), color:color)
  }
  
  func createViewBackedLeftBorderWithWidth(width: CGFloat, color:UIColor) -> UIView {
    return getViewBackedOneSidedBorderWithFrame(CGRectMake(0, 0, width, self.frame.size.height), color:color)
  }
  
  func addLeftBorderWithWidth(width: CGFloat, color:UIColor) {
    addOneSidedBorderWithFrame(CGRectMake(0, 0, width, self.frame.size.height), color:color)
  }
  
  func addViewBackedLeftBorderWithWidth(width: CGFloat, color:UIColor) {
    addViewBackedOneSidedBorderWithFrame(CGRectMake(0, 0, width, self.frame.size.height), color:color)
  }
  
  
  
  //////////
  // Left + Offset
  //////////
  
  func createLeftBorderWithWidth(width:CGFloat, color:UIColor, leftOffset:CGFloat, topOffset:CGFloat, bottomOffset:CGFloat) -> CALayer {
    return getOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset), color:color)
  }
  
  func createViewBackedLeftBorderWithWidth(width:CGFloat, color:UIColor, leftOffset:CGFloat, topOffset:CGFloat, bottomOffset:CGFloat) -> UIView {
  return getViewBackedOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset), color:color)
  }
  
  
  func addLeftBorderWithWidth(width:CGFloat, color:UIColor, leftOffset:CGFloat, topOffset:CGFloat, bottomOffset:CGFloat) {
    addOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset), color:color)
  }
  
  func addViewBackedLeftBorderWithWidth(width:CGFloat, color:UIColor, leftOffset:CGFloat, topOffset:CGFloat, bottomOffset:CGFloat) {
    addViewBackedOneSidedBorderWithFrame(CGRectMake(0 + leftOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset), color:color)
  }
  
  
  
  //////////
  // Private: Our methods call these to add their borders.
  //////////
  
  private func addOneSidedBorderWithFrame(frame: CGRect, color:UIColor) {
    let border = CALayer()
    border.frame = frame
    border.backgroundColor = color.CGColor
    self.layer.addSublayer(border)
  }
  
  private func getOneSidedBorderWithFrame(frame: CGRect, color:UIColor) -> CALayer {
    let border = CALayer()
    border.frame = frame
    border.backgroundColor = color.CGColor
    return border
  }
  
  private func addViewBackedOneSidedBorderWithFrame(frame: CGRect, color: UIColor) {
    let border = UIView(frame: frame)
    border.backgroundColor = color
    self.addSubview(border)
  }
  
  private func getViewBackedOneSidedBorderWithFrame(frame: CGRect, color: UIColor) -> UIView {
    let border = UIView(frame: frame)
    border.backgroundColor = color
    return border
  }

}