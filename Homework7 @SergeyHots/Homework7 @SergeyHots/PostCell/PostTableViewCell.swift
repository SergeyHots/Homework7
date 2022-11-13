//
//  PostTableViewCell.swift
//  Homework7 @SergeyHots
//
//  Created by Macbook on 13.11.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var userPostImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var usersCountLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var countOfCommentLabel: UILabel!
    @IBOutlet weak var postedLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        avatarImageView.layer.cornerRadius = 20
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.lightGray.cgColor
    }

}

