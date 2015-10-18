//
//  CreateOutfitController.swift
//  Dapper
//
//  Created by Andy Yu on 4/4/15.
//  Copyright (c) 2015 rakshitgarg. All rights reserved.
//

import Foundation
import UIKit

class CreateOutfitController : UIViewController , UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    /**
    let collectionViewA = UICollectionView()
    let collectionViewB = UICollectionView()
    let collectionViewAIdentifier = "CollectionViewACell"
    let collectionViewBIdentifier = "CollectionViewBCell"
    
    override func viewDidLoad() {
    // Initialize the collection views, set the desired frames
    collectionViewA.delegate = self
    collectionViewB.delegate = self
    
    collectionViewA.dataSource = self
    collectionViewB.dataSource = self
    
    self.view.addSubview(collectionViewA)
    self.view.addSubview(collectionViewB)
    }
    **/
    
    
    
    @IBOutlet var collectionView1: UICollectionView?
    @IBOutlet var collectionView2: UICollectionView?
    @IBOutlet var collectionView3: UICollectionView?
    
    var tableData1: [String] = ["1", "2", "3", "4", "5"]
    var tableImages1: [String] = ["chambraybuttonup.jpg", "bluecardigan.jpg", "henleypullover.jpg", "cashmerepullover.jpg", "vnecksweater.jpg"]
    
    var tableData2: [String] = ["1", "2", "3", "4", "5"]
    var tableImages2: [String] = ["khakijoggers.jpg", "navyjeans.jpg", "bluejeans.jpg", "whitejeans.jpg", "blackjeans.jpg"]
    
    var tableData3: [String] = ["1", "2", "3", "4", "5", "6", "7"]
    var tableImages3: [String] = ["outfit1.png", "outfit2.png", "outfit3.png", "outfit4.png", "outfit5.png", "outfit6.png", "outfit7.png"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgColor = UIColor(red: 196/255, green: 195/255, blue: 191/255, alpha: 1)
        self.view.backgroundColor = bgColor
        
        let layout1: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout1.scrollDirection = UICollectionViewScrollDirection.Horizontal
        let layout2: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout2.scrollDirection = UICollectionViewScrollDirection.Horizontal
        let layout3: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout3.scrollDirection = UICollectionViewScrollDirection.Horizontal
        // Do any additional setup after loading the view, typically from a nib.
        
        layout1.minimumLineSpacing = 200
        layout1.sectionInset = UIEdgeInsets(top: 150, left: 65, bottom: 10, right: 65)
        layout1.itemSize = CGSize(width: 250, height: 300)
        collectionView1 = UICollectionView(frame: self.view.frame, collectionViewLayout: layout1)
        collectionView1!.dataSource = self
        collectionView1!.delegate = self
        collectionView1!.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell1")
        collectionView1!.backgroundColor = bgColor
        self.view.addSubview(collectionView1!)
        
        layout2.minimumLineSpacing = 200
        layout2.sectionInset = UIEdgeInsets(top: 200, left: 65, bottom: 10, right: 65)
        layout2.itemSize = CGSize(width: 250, height: 300)
        collectionView2 = UICollectionView(frame: self.view.frame, collectionViewLayout: layout2)
        collectionView2!.dataSource = self
        collectionView2!.delegate = self
        collectionView2!.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell2")
        collectionView1!.backgroundColor = bgColor
        self.view.addSubview(collectionView2!)
        
        layout3.minimumLineSpacing = -150
        layout3.sectionInset = UIEdgeInsets(top: 265, left: -60, bottom: 10, right: 5)
        layout3.itemSize = CGSize(width: 500, height: 800)
        collectionView3 = UICollectionView(frame: self.view.frame, collectionViewLayout: layout3)
        collectionView3!.dataSource = self
        collectionView3!.delegate = self
        collectionView3!.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell3")
        collectionView1!.backgroundColor = bgColor
        self.view.addSubview(collectionView3!)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == self.collectionView1)
        {
            return tableData1.count
        }
        if (collectionView == self.collectionView2)
        {
            return tableData2.count
        }
        if (collectionView == self.collectionView3)
        {
            return tableData3.count
        }
        return -1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let bgColor = UIColor(red: 196/255, green: 195/255, blue: 191/255, alpha: 1)
        if (collectionView == self.collectionView1)
        {
            let cell1: CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCell1", forIndexPath: indexPath) as CollectionViewCell
            cell1.imageView?.image = UIImage(named: tableImages1[indexPath.row])
            cell1.backgroundColor = bgColor
            return cell1
        }
        if (collectionView == self.collectionView2)
        {
            let cell2: CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCell2", forIndexPath: indexPath) as CollectionViewCell
            cell2.imageView?.image = UIImage(named: tableImages2[indexPath.row])
            cell2.backgroundColor = bgColor
            return cell2
        }
        let cell3: CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCell3", forIndexPath: indexPath) as CollectionViewCell
        cell3.imageView?.image = UIImage(named: tableImages3[indexPath.row])
        cell3.backgroundColor = bgColor
        return cell3
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("Cell \(indexPath.row) selected")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //@IBOutlet var collectionView: UICollectionView?
    
    /**
    // 1
    let image = UIImage(named: "init.png")!
    imageView = UIImageView(image: image)
    imageView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size:image.size)
    scrollView.addSubview(imageView)
    
    // 2
    scrollView.contentSize = image.size
    
    // 3
    var doubleTapRecognizer = UITapGestureRecognizer(target: self, action: "scrollViewDoubleTapped:")
    doubleTapRecognizer.numberOfTapsRequired = 2
    doubleTapRecognizer.numberOfTouchesRequired = 1
    scrollView.addGestureRecognizer(doubleTapRecognizer)
    
    // 4
    let scrollViewFrame = scrollView.frame
    let scaleWidth = scrollViewFrame.size.width / scrollView.contentSize.width
    let scaleHeight = scrollViewFrame.size.height / scrollView.contentSize.height
    let minScale = min(scaleWidth, scaleHeight);
    scrollView.minimumZoomScale = minScale;
    
    // 5
    scrollView.maximumZoomScale = 1.0
    scrollView.zoomScale = minScale;
    
    // 6
    centerScrollViewContents()
    }
    
    func centerScrollViewContents() {
    let boundsSize = scrollView.bounds.size
    var contentsFrame = imageView.frame
    
    if contentsFrame.size.width < boundsSize.width {
    contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0
    } else {
    contentsFrame.origin.x = 0.0
    }
    
    if contentsFrame.size.height < boundsSize.height {
    contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0
    } else {
    contentsFrame.origin.y = 0.0
    }
    
    imageView.frame = contentsFrame
    }
    
    func scrollViewDoubleTapped(recognizer: UITapGestureRecognizer) {
    // 1
    let pointInView = recognizer.locationInView(imageView)
    
    // 2
    var newZoomScale = scrollView.zoomScale * 1.5
    newZoomScale = min(newZoomScale, scrollView.maximumZoomScale)
    
    // 3
    let scrollViewSize = scrollView.bounds.size
    let w = scrollViewSize.width / newZoomScale
    let h = scrollViewSize.height / newZoomScale
    let x = pointInView.x - (w / 2.0)
    let y = pointInView.y - (h / 2.0)
    
    let rectToZoomTo = CGRectMake(x, y, w, h);
    
    // 4
    scrollView.zoomToRect(rectToZoomTo, animated: true)
    }
    **/
}