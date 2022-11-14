//
//  SecondViewController.swift
//  Homework7 @SergeyHots
//
//  Created by Macbook on 13.11.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var postTableView: UITableView!
    
    var modelUserPost = ModelUserPost()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        postTableView.delegate = self
        postTableView.dataSource = self
        
        let nib = UINib(nibName: "PostTableViewCell", bundle: nil)
        self.postTableView.register(nib, forCellReuseIdentifier: "PostTableViewCell")
        
    }
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelUserPost.arrayPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = postTableView.dequeueReusableCell(withIdentifier: "PostTableViewCell") as! PostTableViewCell
        
        let post = modelUserPost.arrayPost[indexPath.row]
        
        cell.avatarImageView.image = post.avatarImageName
        cell.userPostImageView.image = post.postImageName
        cell.userNameLabel.text = post.userName
        cell.usersCountLabel.text = "\(post.viewsCount) views"
        cell.descriptionLabel.text = post.descriptionPost
        cell.countOfCommentLabel.text = "View all \(post.countOfComments) comments"
        cell.postedLabel.text = "\(post.postedAt) minutes ago"
        
        return cell
    }

}
