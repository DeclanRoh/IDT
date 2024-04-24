//
//  MainTableViewController.swift
//  CinemaKid
//
//  Created by Abraham JongYoung Park on 4/19/24.
//
import UIKit
import Foundation

class MainTableViewController: UITableViewController {
    let modelMovie = MovieModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modelMovie.updateUI = {
            self.tableView.reloadData()
        }
        
        modelMovie.requestToServer()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelMovie.arrayResult.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = modelMovie.arrayResult[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        
        cell.textLabel?.text = info.title //+ "[\(info.director)]"
        cell.detailTextLabel?.text = info.director
        
        self.performSelector(inBackground: #selector(self.procImageDownload(posterCode:)), with: info.posterCode)
        
        return cell
    }
    
    @objc func procImageDownload(posterCode: String) {
        //http://z.ebadaq.com:45070/c/movie/stillcut/
        
        let urlPoster = "http://z.ebadaq.com:45070/c/movie/stillcut/" + posterCode
        let urltoLoad = URL(string: urlPoster)!
        
        if let dataImage = try? Data(contentsOf: urltoLoad){
            print("이미지 다운 완료!!! \(dataImage)")
//            cell.imageView?.image = UIImage(data: dataImage)
        }
    }
    
}
