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
    
    @IBOutlet weak var CVAffiche: UICollectionView!
    
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
        
        celluleCourante.Nom.text = tableauDonnees[indexPath.row][0]
        
        celluleCourante.Image.image = UIImage(named: tableauDonnees[indexPath.row][1])
        
        
        
        println(tableauDonnees[indexPath.row][0])
        println(tableauDonnees[indexPath.row][1])
        
        return celluleCourante
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selection = CVAffiche.indexPathForCell(sender as! UICollectionViewCell)!.row
        println("Exécution de la méthode: prepareForSegue pour la cellule numéro: \(selection)")
        // 2 - Créer un objet pointant sur l'instance de classe de la destination
        var destination = segue.destinationViewController as! Details
        
        // 3 - Passer les informations au controleur de destination
        destination.informationsDeLAfficheCourant = tableauDonnees[selection]
    }

  
}

