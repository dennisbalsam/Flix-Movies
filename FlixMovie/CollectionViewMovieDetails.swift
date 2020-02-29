//
//  CollectionViewMovieDetails.swift
//  FlixMovie
//
//  Created by user165734 on 2/28/20.
//  Copyright © 2020 user165734. All rights reserved.
//

import UIKit

class CollectionViewMovieDetails: UIViewController {

    @IBOutlet weak var backDrop: UIImageView!
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var synopsis: UILabel!
     var movie: [String:Any]!

       override func viewDidLoad() {
           super.viewDidLoad()

           // Do any additional setup after loading the view.
           
           //set data in components
           
           movieTitle.text = movie["title"] as? String

           
           synopsis.text = movie["overview"] as? String
           synopsis.sizeToFit()
           //get movie poster
           let baseUrl = "https://image.tmdb.org/t/p/w185"
           let posterPath = movie["poster_path"] as! String
           let posterUrl = URL(string: baseUrl + posterPath)
           
           //display movie poster using alamo fire
           poster.af_setImage(withURL: posterUrl!)
           
           //get backdrop poster
           let backdropPath = movie["backdrop_path"] as! String
           let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
                  
           //display movie poster using alamo fire
           backDrop.af_setImage(withURL: backdropUrl!)
           
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
