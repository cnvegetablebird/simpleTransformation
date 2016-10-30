//
//  ViewController.swift
//  simpleTransformation
//
//  Created by chennan on 16/10/30.
//  Copyright © 2016年 CN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCollectionCell", for: indexPath) as! ListCollectionCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        let cell = collectionView.cellForItem(at: indexPath) as! ListCollectionCell
        let listTransitions = ListTransitions(fromImageView: cell.picImageView)
        self.navigationController?.delegate = listTransitions
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
        let width: CGFloat = UIScreen.main.bounds.size.width
        return CGSize(width: width / 5, height: width / 5)
    }
    
    func setupCollectionView() {
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        collectionView.collectionViewLayout = layout
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        
        collectionView.register(UINib(nibName: "ListCollectionCell", bundle: Bundle.main), forCellWithReuseIdentifier: "ListCollectionCell")
    }
    

}

