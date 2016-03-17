//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Michael Castleman on 17/03/2016.
//  Copyright © 2016 glidaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    @IBAction func onCoinTapped(sender: UIButton!) {
            currentTaps++
            updateTapsLbl()
    }
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
                if howManyTapsTxt != nil && howManyTapsTxt.text != "" {
                    logoImg.hidden = true
                    playBtn.hidden = true
                    howManyTapsTxt.hidden = true
                    
                    tapBtn.hidden = false
                    tapsLbl.hidden = false
                    maxTaps = Int(howManyTapsTxt.text!)!
                    currentTaps = 0
                    updateTapsLbl()

        }
    }
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }
    
    func updateTapsLbl() {
            tapsLbl.text = "\(currentTaps) Taps"
    }
}

