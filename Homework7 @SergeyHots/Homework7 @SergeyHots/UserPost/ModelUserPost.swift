//
//  ModelUserPost.swift
//  Homework7 @SergeyHots
//
//  Created by Macbook on 13.11.2022.
//

import Foundation

class ModelUserPost {
    var arrayPost = [User]()
    
    init() {
        setupPostUser()
    }
    
    func setupPostUser() {
        
        let post1 = User(avatarImageName: "imageRobert", postImageName: "image5",userName: "tony_StarK",viewsCount: 345, description: "The basis of modern architecture in New York is skyscrapers, that is, buildings over 150 m high. Although the first skyscrapers appeared in Chicago and are now widespread throughout the world, the architectural appearance of New York is rightfully associated with super-high-rise construction.", countOfComments: 55, postedAt: 2)
        
        let post2 = User(avatarImageName: "imageElizabeth", postImageName: "imagebeach", userName: "elizabeth_official", viewsCount: 679, description: "Since the Maldives has the lowest altitude of any country in the world, temperatures are constantly hot and humid. This causes differential heating of the earth and water.", countOfComments: 121, postedAt: 5)
        
        let post3 = User(avatarImageName: "imageChris", postImageName: "imageGolden Gate Bridge", userName: "TOR_", viewsCount: 235, description: "The Frommer's travel guide describes the Golden Gate Bridge as possibly the most beautiful, certainly the most photographed, bridge in the world.", countOfComments: 44, postedAt: 9)
        
        let post4 = User(avatarImageName: "imageElizabeth", postImageName: "imageDisney", userName: "elizabeth_official", viewsCount: 800, description: "The Sleeping Beauty Castle is the hallmark of Disneyland, the most pretentious and decorative detail of the park. Its spiers and turrets bring everyone back to their childhood dreams of princes and princesses. And here these dreams come true! The height of the castle is 46 meters.", countOfComments: 200, postedAt: 20)
        
        arrayPost.append(post1)
        arrayPost.append(post2)
        arrayPost.append(post3)
        arrayPost.append(post4)
    }
}


