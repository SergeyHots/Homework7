//
//  User.swift
//  Homework7 @SergeyHots
//
//  Created by Macbook on 13.11.2022.
//

import Foundation
import UIKit

class User: NSObject {
    
    var avatarImageName: UIImage
    var postImageName: UIImage
    var userName: String
    var viewsCount: Int
    var descriptionPost: String
    var countOfComments: Int
    var postedAt: Int
    
    init(avatarImageName: String,postImageName: String,userName: String, viewsCount: Int,description: String,countOfComments: Int,postedAt: Int) {
        self.avatarImageName = UIImage(named: avatarImageName)!
        self.postImageName = UIImage(named: postImageName)!
        self.userName = userName
        self.viewsCount = viewsCount
        self.descriptionPost = description
        self.countOfComments = countOfComments
        self.postedAt = postedAt
    }
}
