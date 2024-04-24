//
//  MovieModel.swift
//  CinemaKid
//
//  Created by Abraham JongYoung Park on 4/19/24.
//

import Foundation

typealias ClosureUpdateUI = (() -> Void)

struct MovieList: Decodable {
    var error: Result
    var data: [Info]
    
    struct Result: Decodable {
        var code: Int
        var desc: String
    }
    
    struct Info: Decodable {
        var posterCode: String
        var title : String
        var director: String
        var description: String
    }
}

class MovieModel: NSObject {
    var updateUI: ClosureUpdateUI?
    var arrayResult: [MovieList.Info] = []
    
    
    func requestToServer(closureUpdateUI: @escaping ClosureUpdateUI) {
        self.updateUI = closureUpdateUI
        
        let url = "http://z.ebadaq.com:45070/c/movie/list"
        
        let realURL = URL(string: url)!
        
        
        if let result = try? Data(contentsOf: realURL) {
            if let r2 = try? JSONDecoder().decode(MovieList.self, from: result) {
                self.arrayResult = r2.data
            }
//            print(r2!)
        }
        
    }
}























