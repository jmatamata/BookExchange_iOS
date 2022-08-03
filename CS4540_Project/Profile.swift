//
//  Profile.swift
//  CS4540_Project
//
//  Created by Jorge Mata Jr on 8/3/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var updateDate = Date()
    
    static let `default` = Profile(username: "David")
    
    enum Season: String, Identifiable, CaseIterable {
        case spring = "🍎"
        case summer = "🍔"
        case autumn = "🥦"
        case winter = "🍕"
        
        var id: String { rawValue }
    }
}
