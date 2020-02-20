//
//  ViewController.swift
//  FlixMovie
//
//  Created by user165734 on 2/19/20.
//  Copyright © 2020 user165734. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    

    //some variables/properties
    
    //table view storyboard property
    @IBOutlet weak var TableView: UITableView!
    //array of dictionaries
    var movies = [[String:Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.dataSource = self
        TableView.delegate = self
        // Do any additional setup after loading the view.
        // api call url
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        // parse data
        let task = session.dataTask(with: request) { (data, response, error) in
           // This will run when the network request returns
           if let error = error {
              print(error.localizedDescription)
           } else if let data = data {
              let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
              
            self.movies = dataDictionary["results"] as! [[String:Any]]
            
            self.TableView.reloadData()
              // TODO: Get the array of movies
              // TODO: Store the movies in a property to use elsewhere
              // TODO: Reload your table view data

           }
        }
        task.resume()
    }

    //table view functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create table view cell
        let cell = UITableViewCell()
        
        // get each movie
        let movie = movies[indexPath.row]
        let title = movie["title"] as! String
        
        //add movie title
        cell.textLabel?.text = title
        
        return cell
    }
    

}

