//
//  AmazonTableViewCell.swift
//  AmazonMusicDemoApp
//
//  Created by UTTAM on 25/01/21.
//  Copyright © 2021 UTTAM. All rights reserved.
//

import UIKit

class AmazonTableViewCell: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var seeMoreButton: UIButton!
    @IBOutlet weak var amazonCollectionView: UICollectionView!
    
    @IBOutlet weak var categoryLabel: UILabel!
    var categoryModel: AmazonMusicCategory?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        amazonCollectionView.dataSource = self
        amazonCollectionView.delegate = self
        seeMoreButton.backgroundColor = .darkGray
        
    }
    func setCategoryTitle(title: String){
        categoryLabel.text = title
    }

    @IBAction func seeMoreButtonPressed(_ sender: UIButton) {
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryModel?.songArray.count ?? 0
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AmazonCollectionViewCell", for: indexPath) as! AmazonCollectionViewCell
        let item = categoryModel?.songArray[indexPath.row]
        
        cell.img.image = UIImage(named: item!.image)
        cell.songTitleLabel.text = item?.title
        cell.songSingerLabel.text = item?.description
        
        cell.img.layer.cornerRadius = 8
        return cell
       }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
       return CGSize(width: 170.0, height: 210.0)
    }
    
}
