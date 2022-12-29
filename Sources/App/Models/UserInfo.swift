//
//  File.swift
//  
//
//  Created by Basistyi, Yevhen on 26/10/2022.
//

import Fluent
import Vapor

extension FieldKey {
    static let imageURL: FieldKey = "image_url"
}

final class UserInfo: Model, Content {
    
    static var schema: String = "userinfo"

    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "userID")
    var userID: UUID
    @Field(key: "userName")
    var userName: String
    @Field(key: "postsIDs")
    var postsIDs: [String]
    @Field(key: "folowingsIDs")
    var folowingsIDs: [String]
    @Field(key: "folowersIDs")
    var folowersIDs: [String]
    
    @Field(key: .imageURL)
    var imageURL: String?
    
    // folowersCount
    // folowingsCount
    
    init() {}
    
    init(id: UUID? = nil,
         userID: UUID,
         
         userName: String = "",
         postsIDs: [String] = [],
         folowingsIDs: [String] = [],
         folowersIDs: [String] = []
    ){
        self.id = id
        self.userID = userID
        self.userName = userName
        self.postsIDs = postsIDs
        self.folowingsIDs = folowingsIDs
        self.folowersIDs = folowersIDs
    }
    
}
