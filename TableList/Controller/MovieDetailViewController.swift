//
//  MovieDetailViewController.swift
//  TableList
//
//  Created by iMac on 2022-08-16.
//

import UIKit
import WebKit

class MovieDetailViewController: UIViewController
{
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var movieGenreLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    @IBOutlet weak var movieCoverImage: UIImageView!
    @IBOutlet weak var movieTrailerButton: UIButton!
    @IBOutlet weak var movieWebView: WKWebView!
    
    var movie: Movie?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if(movie != nil)
        {
            movieTitleLabel.text = movie?.title ?? "The Shawshank Redemption"
            movieYearLabel.text = "\(movie?.year ?? 1994)"
            movieGenreLabel.text = movie?.genre ?? "Drama"
            movieDescriptionLabel.text = movie?.description ?? "Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron's forces. Meanwhile, Frodo and Sam take the ring closer to the heart of Mordor, the dark lord's realm."
            movieCoverImage.image = UIImage(named: movie?.cover ?? "The Shawshank Redemption (1994) - Drama")
            
            
        }
    }
    
    @IBAction func movieTrailerButtonTapped(_ sender: Any)
    {
        if let videoURL:URL = URL(string: movie?.trailerURL ?? "https://www.youtube.com/embed/_13J_9B5jEk")
        {
            movieDescriptionLabel.isHidden = true
            movieTrailerButton.isHidden = true
            
            /*
            let webConfiguration = WKWebViewConfiguration()
            
            webConfiguration.allowsInlineMediaPlayback = true
            webConfiguration.mediaTypesRequiringUserActionForPlayback = []
            
            movieWebView = WKWebView(frame: CGRect(x: 0, y: 0, width: 375, height: 300), configuration: webConfiguration)
            self.view.addSubview(movieWebView)
            */
            
            let request:URLRequest = URLRequest(url: videoURL)
            self.movieWebView.load(request)
            
        }
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
