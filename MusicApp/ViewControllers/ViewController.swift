//
//  ViewController.swift
//  AmazonMusicDemoApp
//
//  Created by UTTAM on 25/01/21.
//  Copyright © 2021 UTTAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    @IBOutlet weak var amazonTableView: UITableView!
    
    var categoryArray = [AmazonMusicCategory]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      customizedNavigationBar()
        
        categoryArray = AmazonMusicCategory.getCategoryArray()
        
        amazonTableView.dataSource = self
        amazonTableView.delegate = self
    }
    
    func customizedNavigationBar(){
        self.navigationController?.navigationBar.tintColor = UIColor.black
              
              let imageView = UIImageView(image: UIImage(named: "setting123"))
              imageView.sizeToFit()
              let buttonItem = UIBarButtonItem(customView: imageView)
              self.navigationItem.rightBarButtonItem = buttonItem
              
              let profileImageView = UIImageView(image: UIImage(named: "raju_rounded_image"))
              profileImageView.sizeToFit()
              profileImageView.layer.cornerRadius = 15.0
              profileImageView.layer.masksToBounds = true
              let profileButtonItem = UIBarButtonItem(customView: profileImageView)
              self.navigationItem.leftBarButtonItem = profileButtonItem
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AmazonTableViewCell", for: indexPath) as! AmazonTableViewCell
        let category = categoryArray[indexPath.row]
        cell.categoryModel  = category
        cell.setCategoryTitle(title: category.categoryTitle)
        
        cell.seeMoreButton.layer.cornerRadius = 8
        
        
        return cell
       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }
}

