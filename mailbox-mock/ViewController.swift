//
//  ViewController.swift
//  mailbox-mock
//
//  Created by Henry Freel on 9/26/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var navBarImage: UIImageView!
    @IBOutlet weak var helpImage: UIImageView!
    @IBOutlet weak var searchImage: UIImageView!
    @IBOutlet weak var mailView: UIView!
    @IBOutlet weak var mailImage: UIImageView!
    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var laterIconImage: UIImageView!
    @IBOutlet weak var listIconImage: UIImageView!
    @IBOutlet weak var archiveIconImage: UIImageView!
    @IBOutlet weak var deleteIconImage: UIImageView!
    @IBOutlet weak var rescheduleImage: UIImageView!
    @IBOutlet weak var listImage: UIImageView!
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var didPanContent: UIPanGestureRecognizer!
    
    var imageCenter: CGPoint!
    var viewCenter: CGPoint!

    var grey = UIColor(red:0.89, green:0.89, blue: 0.89, alpha: 1.0)
    var yellow = UIColor(red:0.97, green:0.82, blue: 0.27, alpha: 1.0)
    var brown = UIColor(red: 0.84, green: 0.64, blue: 0.47, alpha: 1.0)
    var green = UIColor(red: 0.45, green: 0.84, blue: 0.40, alpha: 1.0)
    var red = UIColor(red: 0.91, green: 0.33, blue: 0.23, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        didPanContent.enabled = false
        
        var navHeight = navBarImage.image!.size.height
        var helpHeight = helpImage.image!.size.height
        var searchHeight = searchImage.image!.size.height
        var mailHeight = mailView.frame.size.height
        var feedHeight = feedImage.image!.size.height
        
        rescheduleImage.alpha = 0
        rescheduleImage.hidden = false
        
        listImage.alpha = 0
        listImage.hidden = false

        
        var edgeGesture = UIScreenEdgePanGestureRecognizer(target: self, action: "onEdgePan:")
        edgeGesture.edges = UIRectEdge.Left
        contentView.addGestureRecognizer(edgeGesture)
        
        
        myScrollView.contentSize = CGSizeMake(320, helpHeight + searchHeight + mailHeight + feedHeight)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    /*----------------EDGE PAN GESTURE------------------*/
    
    func onEdgePan(gestureRecognizer: UIScreenEdgePanGestureRecognizer) {
        //println("Hey thanks Kyle")
        //contentView.frame.origin.x = 280
        var position = contentView.frame.origin.x
        
        var location = gestureRecognizer.locationInView(view)
        var translation = gestureRecognizer.translationInView(view)
        var velocity = gestureRecognizer.velocityInView(view)
        
        var viewPosition = contentView.frame.origin.x
        println("\(viewPosition)")
        
        
        if gestureRecognizer.state == UIGestureRecognizerState.Began {
            
            
                self.didPanContent.enabled = true
                
            
        } else if gestureRecognizer.state == UIGestureRecognizerState.Changed  {
            
            
            if position >= 0 && position <= 260 {
                
                contentView.frame.origin.x = location.x
                
            }
            
            
        } else if gestureRecognizer.state == UIGestureRecognizerState.Ended {
            
            self.didPanContent.enabled = false
            
            if velocity.x > 0 {
                
                UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
                    
                    self.contentView.frame.origin.x = 260
                    self.didPanContent.enabled = true

                }, completion: nil)
                
                
            } else {
                
                UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
                    
                    self.contentView.frame.origin.x = 0
                    self.didPanContent.enabled = false
                    println("This is not working \(viewPosition)")
                    }, completion: nil)
                
                
            }
            
            
            
        }
        
        
        
        
    }
    
    
    @IBAction func didPanCloseMenu(gestureRecognizer: UIPanGestureRecognizer) {
        
        var position = contentView.frame.origin.x
        
        var location = gestureRecognizer.locationInView(view)
        var translation = gestureRecognizer.translationInView(view)
        var velocity = gestureRecognizer.velocityInView(view)
        
        if gestureRecognizer.state == UIGestureRecognizerState.Began {
            
            println("Pan Began")
            
        } else if gestureRecognizer.state == UIGestureRecognizerState.Changed {
            
            if position > 0 {
                
                self.contentView.frame.origin.x = location.x
                println("Pan Changing")
                
            }
            
        } else if gestureRecognizer.state == UIGestureRecognizerState.Ended {
            
            
            println("Pan Ended")

            
            if velocity.x > 0 {
                
                UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
                    
                    self.contentView.frame.origin.x = 260
                    
                    }, completion: nil)
                
                
            } else {
                
                UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
                    
                    self.contentView.frame.origin.x = 0
                    self.didPanContent.enabled = false
                    println("nooooo")

                    
                    }, completion: nil)
                
                
            }
            
            
            
            
        }
        
        
        
        
    }
    
    
    @IBAction func onPanMail(gestureRecognizer: UIPanGestureRecognizer) {
        
        var location = gestureRecognizer.locationInView(view)
        var translation = gestureRecognizer.translationInView(view)
        var velocity = gestureRecognizer.velocityInView(view)
        
        
        if gestureRecognizer.state == UIGestureRecognizerState.Began {
            
            imageCenter = mailImage.center
            
            
        } else if gestureRecognizer.state == UIGestureRecognizerState.Changed {
            
            
            mailImage.center.x = translation.x + imageCenter.x
            var position = mailImage.frame.origin.x
            println("The position is \(position)")
            
            hideAllIcons()
            
            if position < -260 {
                
                /*----------------ADD TO LIST------------------*/
                mailView.backgroundColor = brown
                listIconImage.alpha = 1
                listIconImage.frame.origin.x = position + 340
                
            } else if position < -60 {
                
                /*----------------READ LATER------------------*/
                mailView.backgroundColor = yellow
                listIconImage.alpha = 0
                laterIconImage.alpha = 1
                laterIconImage.frame.origin.x = position + 340
                
            } else if position > -60 && position < 0 {
                
                /*----------------READ LATER grey'd out------------------*/
                mailView.backgroundColor = grey
                laterIconImage.frame.origin.x = 276
                var laterAlpha = convertValue(Float(position), r1Min: -60, r1Max: -30, r2Min: 1, r2Max: 0)
                laterIconImage.alpha = CGFloat(laterAlpha)
                
                
            } else if position > 260 {
            
                /*----------------DELETE------------------*/
                mailView.backgroundColor = red
                deleteIconImage.alpha = 1
                deleteIconImage.frame.origin.x = position - 40
                
            } else if position > 60 {
                
                /*----------------ARCHIVE------------------*/
                mailView.backgroundColor = green
                archiveIconImage.alpha = 1
                archiveIconImage.frame.origin.x = position - 40
                
            } else if position < 60 && position > 0 {
                
                /*----------------ARCHIVE grey'd out------------------*/
                mailView.backgroundColor = grey
                archiveIconImage.frame.origin.x = 20
                var laterArchive = convertValue(Float(position), r1Min: 30, r1Max: 60, r2Min: 0, r2Max: 1)
                archiveIconImage.alpha = CGFloat(laterArchive)
                println("the archive's alpha is \(laterArchive)")
                
            }
            
            
            
        } else if gestureRecognizer.state == UIGestureRecognizerState.Ended {
            
            var position = mailImage.frame.origin.x
            println("\(position)")
            
            if position < -260 {
                
                /*----------------ADD TO LIST------------------*/
                UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                    self.finishOffLeft()
                    }, { (finshed: Bool) -> Void in
                        
                        UIView.animateWithDuration(0.5, delay: 0, options: nil, animations: { () -> Void in
                            self.listImage.alpha = 1
                        }, completion: nil)
                        
                    })
                
            } else if position < -60 {
                
                /*----------------READ LATER------------------*/
                
                UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                    self.finishOffLeft()
                    }, { (finshed: Bool) -> Void in
                        
                        UIView.animateWithDuration(0.5, delay: 0.3, options: nil, animations: { () -> Void in
                            self.rescheduleImage.alpha = 1
                            
                        }, completion: nil)
                        
                })
                
                
            } else if position > -60 && position < 0 {
                
                /*----------------READ LATER grey'd out------------------*/
                
                UIView.animateWithDuration(0.3, animations: { () -> Void in
                    self.mailImage.frame.origin.x = 0
                })
                
            } else if position > 260 {
                
                /*----------------DELETE------------------*/
                UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                    self.finishOffRight()
                    }, completion: nil)
                
            } else if position > 60 {
                
                /*----------------ARCHIVE------------------*/
                UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                    self.finishOffRight()
                    }, completion: nil)
                
            } else if position < 60 && position > 0 {
                
                /*----------------ARCHIVE grey'd out------------------*/
                UIView.animateWithDuration(0.3, animations: { () -> Void in
                    self.mailImage.frame.origin.x = 0
                })
            }

            
        }
        
        
    }
    
    @IBAction func didTapList(sender: UITapGestureRecognizer) {
        
        UIView.animateWithDuration(0.3, delay: 0, options: nil, animations: { () -> Void in
            
            UIView.animateWithDuration(0.3, delay: 0, options: nil, animations: { () -> Void in
                self.listImage.alpha = 0
                self.mailView.backgroundColor = self.grey
                }, completion: { (finished: Bool) -> Void in
                    self.resizeScrollView()
            })
            
        }, completion: nil)
    }
    
    @IBAction func didTapReschedule(sender: UITapGestureRecognizer) {
        
        
        UIView.animateWithDuration(0.3, delay: 0, options: nil, animations: { () -> Void in
            
            
            UIView.animateWithDuration(0.3, delay: 0, options: nil, animations: { () -> Void in
                self.rescheduleImage.alpha = 0
                self.mailView.backgroundColor = self.grey
                }, completion: { (finished: Bool) -> Void in
                self.resizeScrollView()
            })
            
        }, completion: nil)
        
    }
    
    
    
    func finishOffLeft() {
        var position = mailImage.frame.origin.x
        
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.mailImage.frame.origin.x -= 320
            self.listIconImage.frame.origin.x -= 320
            self.laterIconImage.frame.origin.x -= 320
            }) { (finshed: Bool) -> Void in
                
                //self.resizeScrollView()
                
        }
        
        
        
    }
    
    
    func finishOffRight() {
        var position = mailImage.frame.origin.x
        
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.mailImage.frame.origin.x += 320
            self.archiveIconImage.frame.origin.x += 320
            self.deleteIconImage.frame.origin.x += 320
            }) { (finshed: Bool) -> Void in
                
                self.resizeScrollView()
                
        }
        
        
        
    }
    
    
    func resizeScrollView() {
        
        var navHeight = navBarImage.image!.size.height
        var helpHeight = helpImage.image!.size.height
        var searchHeight = searchImage.image!.size.height
        var mailHeight = mailView.frame.size.height
        var feedHeight = feedImage.image!.size.height
        
        UIView.animateWithDuration(1, delay: 0.01, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: nil, animations: { () -> Void in
            self.feedImage.frame.origin.y -= 86
            self.myScrollView.contentSize = CGSizeMake(320, helpHeight + searchHeight + feedHeight)
            self.mailView.backgroundColor = self.grey

            println("finshed")
            }, completion: nil)
    }
    
    func hideAllIcons() {
        laterIconImage.alpha = 0
        listIconImage.alpha = 0
        archiveIconImage.alpha = 0
        deleteIconImage.alpha = 0
    }
    
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    
    
    
    
    
    

}

