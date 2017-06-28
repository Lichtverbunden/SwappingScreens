//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Ken Krippeler on 28.06.17.
//  Copyright © 2017 Lichtverbunden. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController
{
    @IBOutlet weak var songTitleLabel: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String
    {
        get
        {
            return _selectedSong
        }
        
        set
        {
            _selectedSong = newValue
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        songTitleLabel.text = _selectedSong
    }

   

}
