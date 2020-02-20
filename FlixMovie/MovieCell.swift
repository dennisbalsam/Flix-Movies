//
//  MovieCell.swift
//  FlixMovie
//
//  Created by user165734 on 2/19/20.
//  Copyright © 2020 user165734. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    //UI components
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
