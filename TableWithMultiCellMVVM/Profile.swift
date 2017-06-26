//
//  Profile.swift
//  TableWithMultiCellMVVM
//
//  Created by Le Ngoc Hoan on 6/24/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import Foundation

class Profile {
    var fullName: String?
    var pictureUrl: String?
    var email: String?
    var about: String?
    var friends = [Friend]()
    var profileAttributes = [Attribute]()
    
    init?(data: Data) {
        do {
            if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any], let body = json["data"] as? [String: Any] {
                self.fullName = body["fullName"] as? String
                self.pictureUrl = body["pictureUrl"] as? String
                self.about = body["about"] as? String
                self.email = body["email"] as? String
                
                if let friends = body["friends"] as? [[String: Any]] {
                    self.friends = friends.map { Friend(json: $0) }
                }
                
                if let profileAttributes = body["profileAttributes"] as? [[String: Any]] {
                    self.profileAttributes = profileAttributes.map { Attribute(json: $0) }
                }
            }
        } catch {
            print("Error deserializing JSON: \(error)")
            return nil
        }
    }
}
