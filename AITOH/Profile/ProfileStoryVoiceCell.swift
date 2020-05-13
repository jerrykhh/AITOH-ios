//
//  ProfileStoryVoiceCell.swift
//  AITOH
//
//  Created by Jerry Kwok on 10/4/2020.
//  Copyright © 2020 AITOH. All rights reserved.
//

import UIKit
import AVFoundation

class ProfileStoryVoiceCell: UITableViewCell {

    var audioPlayer = AVAudioPlayer()
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var subtitile: UILabel!
    @IBOutlet weak var desc: UITextView!
    @IBOutlet weak var img: UIImageView!
    
    func setup(story: Story){
        icon.round()
        icon.layer.borderWidth = 3
        self.icon.image = story.icon
        self.username.text = story.username
        if(story.location == ""){
            subtitile.text = story.time
            
        }else{
            subtitile.text = story.time + " in " + story.location
        }
        desc.text = story.desc
        img.image = story.img
    }
    
    @IBAction func btnPlayClick(_ sender: Any) {
    }
    
    

}
