//
//  MovieTableViewCell.swift
//  TableList
//
//  Created by iMac on 2022-08-16.
//

import UIKit

class MovieTableViewCell: UITableViewCell
{

    @IBOutlet weak var movieImageViewCell: UIImageView!
    @IBOutlet weak var movieTitleLabelCell: UILabel!
    @IBOutlet weak var movieYearLabelCell: UILabel!
    @IBOutlet weak var movieGenreLabelCell: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
