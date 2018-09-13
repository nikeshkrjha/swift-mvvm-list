//
//  Post.swift
//  MVVMDemo
//
//  Created by Nikesh Jha on 9/13/18.
//  Copyright © 2018 Nikesh Jha. All rights reserved.
//

import Foundation
import ObjectMapper

class Post: Mappable{
    // MARK: Declaration for string constants to be used to decode and also serialize.
    internal let kBaseClassTitleKey: String = "title"
    internal let kBaseClassUserIdKey: String = "userId"
    internal let kBaseClassBodyKey: String = "body"
    internal let kBaseClassInternalIdentifierKey: String = "id"
    
    
    // MARK: Properties
    public var title: String?
    public var userId: Int?
    public var body: String?
    public var internalIdentifier: Int?
    
    /**
     Map a JSON object to this class using ObjectMapper
     - parameter map: A mapping from ObjectMapper
     */
    required init?(map: Map){
        debugPrint(map)
    }
    
    /**
     Map a JSON object to this class using ObjectMapper
     - parameter map: A mapping from ObjectMapper
     */
    func mapping(map: Map) {
        title = map.JSON[kBaseClassTitleKey] as? String
        userId = map.JSON[kBaseClassUserIdKey] as? Int
        body = map.JSON[kBaseClassBodyKey] as? String
        //        internalIdentifier = map.JSON[kBaseClassInternalIdentifierKey] as! Int
    }
}
