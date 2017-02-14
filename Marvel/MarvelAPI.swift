//
//  MarvelAPI.swift
//  Marvel
//
//  Created by Ticia Chance on 2/7/17.
//  Copyright © 2017 Ticia Chance. All rights reserved.
//

import UIKit

typealias MarvelCompletion = (MarvelResponse) -> Void

enum MarvelResponse {
    case success(response: MarvelResponseData)
    case failure(error: Error)
}

struct MarvelResponseData {
    //let result: [Heros]
}

class MarvelAPI: NSObject {

    let publicKey = "96eb066a0d318c376983a1187087d928"
    let privateKey = "b082cc7f9ac67292ae0aab05d99ceadbf1a959f6"
    let baseURLString = "developer.marvel.com"
    
    func MarvelAPI(completion: MarvelCompletion) {
        
        guard let baseURL = URL(string: baseURLString) else {return}
        let configuration = URLSessionConfiguration.default
        let request = URLRequest(url: baseURL)
        let session = URLSession(configuration: configuration)
        
        session.dataTask(with: request, completionHandler: { (data, response, error) in
            
            
        })
    }
    
    
    
}
