//
//  ViewController.swift
//  CustomCollectionViewCellXIB
//
//  Created by MD Tanvir Alam on 22/2/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let vegetablesImages = ["vegetables1","vegetables2","vegetables1","vegetables2","vegetables1","vegetables2"]
    let vegetablesName = ["Carrot", "Vegetables","Carrot", "Vegetables","Carrot", "Vegetables"]
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "MyCollectionViewCell", bundle: nil)
        myCollectionView.register(nib, forCellWithReuseIdentifier: "cell")
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vegetablesImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.vegetablesImage.image = UIImage(named: vegetablesImages[indexPath.row])
        cell.vegetablesName.text = vegetablesName[indexPath.row]
        print(cell.vegetablesName.text!)
        return cell
    }

}

