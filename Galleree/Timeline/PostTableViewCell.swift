//
//  PostTableViewCell.swift
//  Galleree
//
//  Created by Diana Lim on 7/25/16.
//  Copyright © 2016 Natalie Lim. All rights reserved.
//

import UIKit
import Bond
import Parse

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var postImageView: UIView!
    @IBOutlet weak var postTitleLabel: UILabel!
    @IBOutlet weak var postDateLabel: UILabel!
    @IBOutlet weak var viewPostButton: UIButton!
    @IBOutlet weak var dashImageView: UIImageView!
    
    var postDisposable: DisposableType?
    
  /*  var post: Post? {
        didSet {
        
            postDisposable?.dispose()
            // free memory of image stored with post that is no longer displayed
            // 1
            if let oldValue = oldValue where oldValue != post {
                // 2
                oldValue.image.value = nil
            }
            
            if let post = post {
                postDisposable = post.image.bindTo(postImageView.bnd_image)
                
                }
            }
        }*/
    }
    
    // Generates a comma separated list of usernames from an array (e.g. "User1, User2")
 /*   func stringFromUserList(userList: [PFUser]) -> String {
        // 1
        let usernameList = userList.map { user in user.username! }
        // 2
        let commaSeparatedUserList = usernameList.joinWithSeparator(", ")
        
        return commaSeparatedUserList
    }
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBAction func likeButtonTapped(sender: AnyObject) {
        post?.toggleLikePost(PFUser.currentUser()!)
    }
    @IBAction func moreButtonTapped(sender: AnyObject) {
        
    }
}
*/

