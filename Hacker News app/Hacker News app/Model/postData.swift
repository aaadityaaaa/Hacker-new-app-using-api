 //
//  postData.swift
//  Hacker News app
//
//  Created by Aaditya Singh on 02/09/20.
//  Copyright © 2020 Aaditya Singh. All rights reserved.
//

import Foundation

 
 
 struct Results: Decodable {
    
    let hits: [post]
    
 }
 
 struct post: Decodable, Identifiable {
    
    
    var id: String {
        return objectID
    }
    let objectID: String
    let points:  Int
    let title: String
    let url: String?
 }
 
