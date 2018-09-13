//
//  PostsViewModel.swift
//  MVVMDemo
//
//  Created by Nikesh Jha on 9/13/18.
//  Copyright © 2018 Nikesh Jha. All rights reserved.
//

import UIKit

class PostsViewModel: NSObject {
    var postsArr:[Post]?
    
    func fetchPostsData(completion: @escaping () -> Void){
        _ = ApiHandler.fetchPosts { (postsArr, success) in
                DispatchQueue.main.async {
                    self.postsArr = postsArr
                    completion()
                }
        }
    }
    
    func getPostAtIndex(index: Int) -> Post?{
        if let post = postsArr?[index]{
            return post
        }else{
            return nil
        }
        
    }
    
    func getPostsCount() -> Int{
        return postsArr?.count ?? 0
    }
    
    func getPostTitle(indexPath: IndexPath) -> String {
        return (postsArr?[indexPath.row].title!)!
    }
    
    func getPostBody(indexPath: IndexPath) -> String {
        return (postsArr?[indexPath.row].body!)!
    }
}
