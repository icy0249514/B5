//
//  ActivityTableViewController.swift
//  Demo
//
//  Created by USER on 2015/8/14.
//  Copyright (c) 2015年 USER. All rights reserved.
//

import UIKit

class UniversityTableViewController: UITableViewController, UICollectionViewDataSource, UIScrollViewDelegate {

    //ID Tag
    let nearbyTag = 101
    let activityTag = 102
    let brotherTag = 103
    let videoTag = 104
    
    @IBOutlet weak var metroImageView: UIImageView!
    
    @IBOutlet weak var imagesPageControl: UIPageControl!
    
    @IBOutlet weak var imageViewCollectionView: UICollectionView!
    
    
    @IBOutlet weak var circleCollectionView: UICollectionView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
       // backgroundColor
       // let tempView = UIView()
       // tempView.backgroundColor = UIColor.yellowColor()
       // self.tableView.backgroundView = tempView
        
         let tempView = UIImageView()
         tempView.image = UIImage(named: "BlurBackground")
         self.tableView.backgroundView = tempView
        
        
        
        let layout = self.imageViewCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSizeMake(UIScreen.mainScreen().bounds.size.width, 160)
        
        self.imagesPageControl.numberOfPages = 4
        
        self.metroImageView.image = UIImage(named: "metro")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.imageViewCollectionView {
            return 4
        }
        else {
            return 4;

        }
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if collectionView == self.imageViewCollectionView {
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ImageCollectionViewCell", forIndexPath: indexPath) as! ImageCollectionViewCell
            
            
            cell.photoView.image = UIImage(named: "photo\(indexPath.item)")
            
            return cell
            

        }
        else {
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CircleCollectionViewCell", forIndexPath: indexPath) as! CircleCollectionViewCell
            
            
            let imageView = cell.viewWithTag(200)
            imageView?.layer.borderColor = UIColor.grayColor().CGColor
            imageView?.layer.borderWidth = 1
            
            //imageView?.layer.borderColor = UIColor.blackColor().CGColor
            
            switch collectionView.tag {
            case nearbyTag:
                
                
                var number1 = indexPath.item % 4
                
                switch number1 {
                case 0:
                     cell.photoView.image = UIImage(named: "circle0")
                    cell.photolabel.text = "Wreck Beach"
                case 1:
                    cell.photoView.image = UIImage(named: "circle1")
                    cell.photolabel.text = "Pacific Soirit Regional Park"
                case 2:
                    cell.photoView.image = UIImage(named: "circle2")
                    cell.photolabel.text = "University Golf Club"
                case 3:
                    cell.photoView.image = UIImage(named: "circle3")
                    cell.photolabel.text = "Doug Mitchelle Thunderbird"
                default:
                    cell.photoView.image = UIImage(named: "circle0")
                    cell.photolabel.text = "Wreck Beach"
                }
                
                
                
                
            case activityTag:
                
                var number2 = indexPath.item % 4
                
                switch number2 {
                case 0:
                    cell.photoView.image = UIImage(named: "circle0")
                    cell.photolabel.text = "UBC Undie Run"
                case 1:
                    cell.photoView.image = UIImage(named: "circle1")
                    cell.photolabel.text = "UBC Polar Bear Swim"
                case 2:
                    cell.photoView.image = UIImage(named: "circle2")
                    cell.photolabel.text = "UBC Engineer Pranks"

                default:
                    cell.photoView.image = UIImage(named: "circle0")
                    cell.photolabel.text = "cambridge park sky"
                }
              
                
            case brotherTag:
                var number3 = indexPath.item % 4
                
                switch number3 {
                case 0:
                    cell.photoView.image = UIImage(named: "circle0")
                    cell.photolabel.text = "Alpha Delta Phi"
                case 1:
                    cell.photoView.image = UIImage(named: "circle1")
                    cell.photolabel.text = "Alpha Epsilon Phi"
                case 2:
                    cell.photoView.image = UIImage(named: "circle2")
                    cell.photolabel.text = "Beta Theta Pi"
                case 3:
                    cell.photoView.image = UIImage(named: "circle3")
                    cell.photolabel.text = "Psi Upsilon"
                default:
                    cell.photoView.image = UIImage(named: "circle0")
                    cell.photolabel.text = "Alpha Delta Phi"
                }
               
            case videoTag:
                var number4 = indexPath.item % 4
                
                switch number4 {
                case 0:
                    cell.photoView.image = UIImage(named: "circle0")
                    cell.photolabel.text = "UBC LipDub"
                case 1:
                    cell.photoView.image = UIImage(named: "circle1")
                    cell.photolabel.text = "Pacific Spirit Regional Park"
                case 2:
                    cell.photoView.image = UIImage(named: "circle2")
                    cell.photolabel.text = "UBC LipDub"
                case 3:
                    cell.photoView.image = UIImage(named: "circle3")
                    cell.photolabel.text = "Pacific Spirit Regional Park"
                default:
                    cell.photoView.image = UIImage(named: "circle0")
                    cell.photolabel.text = "UBC LipDub"
                }
                
            default:
                break
            }
            
           
            return cell
            

            
        }
        
        
        
    }
    
    override func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        if scrollView == self.imageViewCollectionView {
            let page = scrollView.contentOffset.x / scrollView.frame.width
            
            self.imagesPageControl.currentPage = Int(page)

        }
        
    }


}
