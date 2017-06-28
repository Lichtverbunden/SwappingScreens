//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Ken Krippeler on 28.06.17.
//  Copyright © 2017 Lichtverbunden. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()

    
    }

    @IBAction func backButtonPressed(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func load3rdScreenPressed(_ sender: UIButton)
    {
        let songTitle = "You'll Be In My Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let destination = segue.destination as? PlaySongVC
        {
            if let song = sender as? String
            {
                destination.selectedSong = song
            }
        }
    }
    
    
}
