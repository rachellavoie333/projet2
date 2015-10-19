//
//  ViewController.swift
//  projet2
//
//  Created by etudiant on 2015-10-19.
//  Copyright (c) 2015 etudiant. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource{
    
    var tableauDonnees = [Array<String>]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Créer un tableau à partir d'un fichier de type 'plist'
        let pathFichierPlist = NSBundle.mainBundle().pathForResource("lesDonnees", ofType: "plist")!
        tableauDonnees = NSArray(contentsOfFile: pathFichierPlist) as! Array<Array<String>>
        println(tableauDonnees)
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableauDonnees.count
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let celluleCourante = collectionView.dequeueReusableCellWithReuseIdentifier("celluleAffiche", forIndexPath: indexPath) as! Affiche
        
        println(tableauDonnees[indexPath.row][0])
        println(tableauDonnees[indexPath.row][1])
        
        return celluleCourante
    }

  
}

