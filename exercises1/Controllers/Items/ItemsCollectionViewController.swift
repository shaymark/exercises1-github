//
//  ItemsCollectionViewController.swift
//  exercises1
//
//  Created by shay markovich on 14/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ItemsCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{

    let values = ItemsModel.items

    override func viewDidLoad() {
        initLayout()
        
    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        initLayout()
        collectionView?.reloadData()
    }
    
    func initLayout(){
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        layout.itemSize = CGSize(width: self.view.frame.width/3 - 20, height: self.view.frame.width/3 + 30)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 0
        
        self.collectionView?.collectionViewLayout = layout
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.values.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        //Q: is there a libary that makes resize of photos according to the image size on screen?
        
        if let itemCell = cell as? ItemsCollectionViewCell ,
            let layout = self.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            
            itemCell.thumbnailSize = layout.itemSize.width
            itemCell.item = self.values[indexPath.row]
        }
    
        return cell
    }

}




