//
//  ViewController.swift
//  minority3
//
//  Created by teacher on 11/14/16.
//  Copyright © 2016 Mathien. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var theFutureLabel: UILabel!
    @IBOutlet weak var preCogsLabel: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        theFutureLabel.center = view.center
    }


    @IBAction func onDrag(_ sender: UIPanGestureRecognizer)
    {
        print("drag")

        let point = sender.location(in: view)
        theFutureLabel.center = point

        if sender.state == .ended
        {
            print("ended")

            UIView.animate(withDuration: 0.75, animations: { 
                self.theFutureLabel.center = self.view.center
            })
        }
        else
        {
            if preCogsLabel.frame.contains(point)
            {
                theFutureLabel.backgroundColor = UIColor.red
                theFutureLabel.text = "An incriminating future"
            }
        }
    }


}

