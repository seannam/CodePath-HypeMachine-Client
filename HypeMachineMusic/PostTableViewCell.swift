//
//  PostTableViewCell.swift
//  HypeMachineMusic
//
//  Created by Sean Nam on 2/20/17.
//  Copyright © 2017 Nick McDonald. All rights reserved.
//

import UIKit
import AFNetworking

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    var postData: Posting? {
        // will run didSet when postData changes
        didSet {
            
            if let thumbnailURL = postData?.thumbnailLink {
                self.postImageView.setImageWith(thumbnailURL)
            }
            
            self.artistLabel.text = postData?.artistName
            self.titleLabel.text = postData?.titleName
            self.rankLabel.text = "\(postData?.rank ?? 0)"
           
            /* above same as below
            if let rank = self.postData?.rank {
                self.rankLabel.text = String(describing rank)
            }
 
            self.rankLabel.text = String(describing: self.postData?.rank ?? 0)
 
            */
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
