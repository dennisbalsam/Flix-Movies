//
//  MovieDetailsViewController.swift
//  FlixMovie
//
//  Created by user165734 on 2/28/20.
//  Copyright © 2020 user165734. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    
    //storyboard components
    @IBOutlet weak var backDropView: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //set data in components
        
        titleView.text = movie["title"] as? String

        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        //get movie poster
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        //display movie poster using alamo fire
        posterView.af_setImage(withURL: posterUrl!)
        
        //get backdrop poster
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
               
        //display movie poster using alamo fire
        backDropView.af_setImage(withURL: backdropUrl!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
