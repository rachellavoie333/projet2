//
//  Intro.swift
//  projet2
//
//  Created by Etudiant(e) Tim on 2015-10-21.
//  Copyright (c) 2015 etudiant. All rights reserved.
//

import UIKit

class Intro: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("tournerLaPage"), userInfo: nil, repeats: false)
        // Do any additional setup after loading the view.
    }
    func tournerLaPage() {
        performSegueWithIdentifier("listeAffiches", sender:self)
    } // tournerLaPage

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
