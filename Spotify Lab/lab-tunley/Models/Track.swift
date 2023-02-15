//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track{
    let trackName: String
    let artistName: String
    let artworkURL100: URL
    
}


// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {
    
    // An array of mock tracks
    static var mockTracks: [Track] = [
        Track(trackName: "Let the Flames Begin", artistName: "Paramore", artworkURL100: URL(string:"https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/9a/3a/26/9a3a2608-29a7-5585-f990-cdfeb10b7394/075679955005.jpg/100x100bb.jpg")!),
        Track(trackName: "That's What You Get", artistName: "Paramore", artworkURL100: URL(string:"https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/9a/3a/26/9a3a2608-29a7-5585-f990-cdfeb10b7394/075679955005.jpg/100x100bb.jpg")!),
        Track(trackName: "Ain't It Fun", artistName: "Paramore", artworkURL100: URL(string:"https://is4-ssl.mzstatic.com/image/thumb/Music112/v4/32/cb/9d/32cb9d04-ef0f-93bb-fd2f-19b395785025/075679956187.jpg/100x100bb.jpg")!)
    ]
}
// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
