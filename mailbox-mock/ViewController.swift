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
    @IBOutlet weak var imagesView: UIView!
    @IBOutlet weak var mailView: UIView!
    @IBOutlet weak var mailImage: UIImageView!
    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var myScrollView: UIScrollView!
    
    var imageCenter: CGPoint!

    var grey = UIColor(red:0.89, green:0.89, blue: 0.89, alpha: 1.0)
    var yellow = UIColor(red:0.97, green:0.82, blue: 0.27, alpha: 1.0)
    var brown = UIColor(red: 0.84, green: 0.64, blue: 0.47, alpha: 1.0)
    var green = UIColor(red: 0.45, green: 0.84, blue: 0.40, alpha: 1.0)
    var red = UIColor(red: 0.91, green: 0.33, blue: 0.23, alpha: 1.0)
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var navHeight = navBarImage.image!.size.height
        var helpHeight = helpImage.image!.size.height
        var searchHeight = searchImage.image!.size.height
        var mailHeight = mailView.frame.size.height
        var feedHeight = feedImage.image!.size.height

        
        myScrollView.contentSize = CGSizeMake(320, navHeight + helpHeight + searchHeight + mailHeight + feedHeight)
        
        // Do any additional setup after loading the view, typically from a nib.
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
            println("\(position)")
            
            if position < -240 {
                
                /*----------------ADD TO LIST------------------*/
                mailView.backgroundColor = brown
                
            } else if position < -50 {
                
                /*----------------READ LATER------------------*/
                mailView.backgroundColor = yellow
                
            } else if position > -50 && position < 0 {
                
                /*----------------ADD TO LIST grey'd out------------------*/
                mailView.backgroundColor = grey
                
            } else if position > 240 {
            
                /*----------------DELETE------------------*/
                mailView.backgroundColor = red
                
            } else if position > 50 {
                
                /*----------------ARCHIVE------------------*/
                mailView.backgroundColor = green
                
            } else if position < 50 && position > 0 {
                
                /*----------------ARCHIVE grey'd out------------------*/
                mailView.backgroundColor = grey
                
            }
            
            
            
        } else if gestureRecognizer.state == UIGestureRecognizerState.Ended {
            
            var position = mailImage.frame.origin.x
            println("\(position)")
            
            if position < -240 {
                
                /*----------------ADD TO LIST------------------*/
                mailImage.frame.origin.x = 0
                
            } else if position < -50 {
                
                /*----------------READ LATER------------------*/
                mailImage.frame.origin.x = 0
                
            } else if position > -50 && position < 0 {
                
                /*----------------ADD TO LIST grey'd out------------------*/
                mailImage.frame.origin.x = 0
                
            } else if position > 240 {
                
                /*----------------DELETE------------------*/
                mailImage.frame.origin.x = 0
                
            } else if position > 50 {
                
                /*----------------ARCHIVE------------------*/
                mailImage.frame.origin.x = 0
                
            } else if position < 50 && position > 0 {
                
                /*----------------ARCHIVE grey'd out------------------*/
                mailImage.frame.origin.x = 0
                
            }

            
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    

}

