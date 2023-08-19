//
//  ViewController.swift
//  CollectionView
//
//  Created by Ananth on 26/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var iphoneModel : [String] = ["8","11","12","14Pro","Iphone5s","Iphone6s","iphone7","Iphone13","x"]
    
    var iphoneModelName : [String] =  ["8","11","12","14Pro","Iphone5s","Iphone6s","iphone7","Iphone13","x"]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }


}

extension ViewController : UICollectionViewDelegate ,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iphoneModelName.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ONE" , for: indexPath) as! CollectionViewCell
//        cell.layer.borderWidth = 1
//        cell.layer.cornerRadius = 23
        cell.imageView.image = UIImage(named: iphoneModel[indexPath.row ])
        cell.label.text = iphoneModelName[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 10) / 2
        return CGSize(width: size, height: size)
    }
    
  
    
    
}

