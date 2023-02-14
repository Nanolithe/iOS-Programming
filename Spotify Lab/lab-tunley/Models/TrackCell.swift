//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Kevin Nguyen on 2/14/23.
//

import UIKit
import Nuke

class TrackCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var collectionNameLabel: UILabel!
    
    /// Configures the cell's UI for the given track.
    func configure(with track: Track) {
        trackNameLabel.text = track.trackName
        artistNameLabel.text = track.artistName
        collectionNameLabel.text =
        track.collectionName

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: track.artworkURL100, into: trackImageView)
    }
    
}
