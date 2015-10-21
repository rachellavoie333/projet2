//
//  Details.swift
//  projet2
//
//  Created by Etudiant(e) Tim on 2015-10-21.
//  Copyright (c) 2015 etudiant. All rights reserved.
//

import UIKit

class Details: UIViewController {
    var informationsDeLAfficheCourant =  Array <String> ()
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var ImageFond: UIImageView!
    @IBOutlet weak var Texte: UITextView!
    @IBOutlet weak var Nom: UILabel!
    
    @IBAction func retourAffiches(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion:nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Nom.text = informationsDeLAfficheCourant[0]
        Texte.text = informationsDeLAfficheCourant[2]
        Image.image = UIImage(named: informationsDeLAfficheCourant[1])
        ImageFond.image = UIImage(named: informationsDeLAfficheCourant[1])
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
