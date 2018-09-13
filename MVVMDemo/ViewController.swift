//
//  ViewController.swift
//  MVVMDemo
//
//  Created by Nikesh Jha on 9/13/18.
//  Copyright © 2018 Nikesh Jha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var postTblView: UITableView!
    
    let postsVM: PostsViewModel = PostsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.postTblView.delegate = self
        self.postTblView.dataSource = self
        let alert = LoadingView.newLoadingAlert()
        present(alert, animated: true)
        postsVM.fetchPostsData {
            self.postTblView.reloadData()
            alert.dismiss(animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "PostsTableViewCell", for: indexPath) as! PostsTableViewCell
        cell.setData(post: postsVM.getPostAtIndex(index: indexPath.row)!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postsVM.getPostsCount()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

