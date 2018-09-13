//
//  ApiHandler.swift
//  MVVMDemo
//
//  Created by Nikesh Jha on 9/13/18.
//  Copyright © 2018 Nikesh Jha. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

public class ApiHandler {
    
    static func fetchPosts(completion: @escaping ([Post], _ success: Bool) -> Void){
        let postsURL = URL(string: Constants.WebApiConstants.baseURL + Constants.WebApiConstants.postsList)  
        
        Alamofire.request(postsURL!).responseArray { (response: DataResponse<[Post]>) in
            switch(response.result){
            case .success:
                let forecastArray = response.result.value
                
                if let forecastArray = forecastArray {
                    debugPrint(forecastArray)
                    completion(forecastArray,true)
                }
            case .failure:
                completion([],false)
            }
        }
    }
}
