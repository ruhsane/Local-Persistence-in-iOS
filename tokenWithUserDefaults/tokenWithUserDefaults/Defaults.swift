//
//  Defaults.swift
//  tokenWithUserDefaults
//
//  Created by Ruhsane Sawut on 4/8/19.
//  Copyright © 2019 ruhsane. All rights reserved.
//

import Foundation

/*
  We will be accessing token in several parts within the app. We can make the process of requesting data much easier if we have the UserDefault request in one place only, in a way that we can reuse that piece of code. So I am making a helper struct.
 */

struct Defaults {
    
    static let token = "token"
    static let tokenKey = "tokenKey"
    
    struct Model {
        var token: String?
        
        init(token: String) {
            //complete the initializer
            self.token = token
        }
    }
    
    static var saveToken = { (token: String) in
        UserDefaults.standard.set(token, forKey: tokenKey)
        //complete the method
    }
    
    static var getToken = { () -> Model in
        //complete the method
        let token = UserDefaults.standard.string(forKey: tokenKey) ?? ""
        return Model(token: token)
    }
    
    static func clearUserData(){
        //complete the method using removeObject
        UserDefaults.standard.removeObject(forKey: tokenKey)
    }
}
