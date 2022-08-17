//
//  DetailViewController.swift
//  TableList
//
//  Created by iMac on 2022-08-10.
//

import UIKit

class DetailViewController: UIViewController
{

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    var song: Song?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if song != nil
        {
            trackImageView.image = UIImage(named: song?.cover ?? "Rammstein - rammstein")
            trackNameLabel.text = song?.track ?? "Rammstein - rammstein" + "\(song?.album ?? "Rammstein - rammstein")"
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
