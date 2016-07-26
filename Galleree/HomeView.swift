//
//  HomeView.swift
//  Galleree
//
//  Created by Natalie Lim on 7/18/16.
//  Copyright © 2016 Natalie Lim. All rights reserved.
//

import UIKit

import ConvenienceKit
import Parse

class HomeViewController: UIViewController { //TimelineComponentTarget {
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func unwindToListNotesViewController(segue: UIStoryboardSegue) {
    }
    
    var photoTakingHelper: PhotoTakingHelper?
 //   var timelineComponent: TimelineComponent<Post, HomeViewController>!
    
    let defaultRange = 0...4
    let additionalRangeSize = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
        
 /*       timelineComponent = TimelineComponent(target: self)
        self.tabBarController?.delegate = self
    }
    
    func loadInRange(range: Range<Int>, completionBlock: ([Post]?) -> Void) {
        ParseHelper.timelineRequestForCurrentUser(range) {
            (result: [PFObject]?, error: NSError?) -> Void in
            if let error = error {
                ErrorHandling.defaultErrorHandler(error)
            }
            
            let posts = result as? [Post] ?? []
            completionBlock(posts)
        }
        
    }
}*/

// MARK: Tab Bar Delegate

/*extension HomeViewController: UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.timelineComponent.content.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as! PostTableViewCell
        
        let post = timelineComponent.content[indexPath.section]
        post.downloadImage()
        cell.post = post
        cell.timeline = self
        
        return cell
    }
}
*/

/*extension HomeViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        timelineComponent.targetWillDisplayEntry(indexPath.section)
    }
    
   /* func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCellWithIdentifier("PostHeader") as! PostSectionHeaderView
        
        let post = self.timelineComponent.content[section]
        headerCell.post = post
        
        return headerCell
    }
    */
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}*/