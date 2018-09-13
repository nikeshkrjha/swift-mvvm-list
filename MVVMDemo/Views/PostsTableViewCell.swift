//
//  PostsTableViewCell.swift
//  MVVMDemo
//
//  Created by Nikesh Jha on 9/13/18.
//  Copyright © 2018 Nikesh Jha. All rights reserved.
//

import UIKit

class PostsTableViewCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postBody: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setData(post: Post){
        postTitle.text = post.title?.localizedUppercase ?? "Default Title"
        postBody.text = post.body ?? "This is test!!!"
    }

}
