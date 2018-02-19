//
//  ViewController.swift
//  Earhythmics
//
//  Created by Elizabeth Fineberg 2019 on 2/17/18.
//  Copyright © 2018 Elizabeth Fineberg 2019. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    
    //shows instructions and tells user if their answer is correct
    @IBOutlet weak var messageArea: UILabel!
    
    //creates round buttons for user to pick notes
    @IBOutlet var roundButtons: [UIButton]!
    @IBOutlet var roundButtons2: [UIButton]!
    @IBOutlet var roundButtons3: [UIButton]!
    @IBOutlet var roundButtons4: [UIButton]!
    //names of all mp3 files of piano notes
    let allNotes = ["Piano.C4.mp3", "Piano.Db4.mp3", "Piano.D4.mp3", "Piano.Eb4.mp3", "Piano.E4.mp3", "Piano.F4.mp3", "Piano.Gb4.mp3", "Piano.G4.mp3", "Piano.Ab4.mp3", "Piano.A4.mp3", "Piano.Bb4.mp3"]

    //randomly picks index of which not to play
    var n = Int(arc4random_uniform(11))
    
    //allows for notes to be played
    var note: AVAudioPlayer?
    
    //holds value of which note user picked
    var whichButtonPressed = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // defines round buttons and how they look
        for button in roundButtons {
            button.layer.cornerRadius = 25.0
            button.layer.backgroundColor = UIColor(red:0.77, green:0.77, blue:0.77, alpha:1.0).cgColor
            button.layer.borderWidth = 1
        }
        for button in roundButtons2 {
            button.layer.cornerRadius = 7.0
            button.layer.backgroundColor = UIColor(red:0.77, green:0.77, blue:0.77, alpha:1.0).cgColor
            button.layer.borderWidth = 1
        }
        for button in roundButtons3 {
            button.layer.cornerRadius = 55.0
            button.layer.backgroundColor = UIColor(red:0.63, green:0.15, blue:0.95, alpha:1.0).cgColor
            button.layer.borderWidth = 1
        }
        for button in roundButtons4 {
            button.layer.cornerRadius = 20.0
            button.layer.backgroundColor = UIColor(red:0.77, green:0.77, blue:0.77, alpha:1.0).cgColor
            button.layer.borderWidth = 1
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    @IBAction func playButtonPressed(_ sender: UIButton)
    {
        //allows for sound to be played
        let path = Bundle.main.path(forResource: allNotes[n], ofType: nil)
        let url = URL(fileURLWithPath: path!)
        
        do
        {
            note = try AVAudioPlayer(contentsOf: url)
            note?.play()
        }catch
        {
            //hopefully no errors...
        }
    }
    
    @IBAction func cButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.C4.mp3"
    }
    
    @IBAction func dbButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.Db4.mp3"
    }
    
    @IBAction func dButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.D4.mp3"
    }
    
    
    @IBAction func ebButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.Eb4.mp3"
    }
    
    @IBAction func eButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.E4.mp3"
    }
    
    @IBAction func fButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.F4.mp3"
    }
    
    @IBAction func gbButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.Gb4.mp3"
    }
    
    @IBAction func gButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.G4.mp3"
    }
    
    @IBAction func abButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.Ab4.mp3"
    }
    
    @IBAction func aButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.A4.mp3"
    }
    
    @IBAction func bbButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.Bb4.mp3"
    }
    
    @IBAction func bButtonPressed(_ sender: UIButton)
    {
        whichButtonPressed = "Piano.B4.mp3"
    }
    
    
    //tells user if guess is correct or to try again, chooses new note if correct
    @IBAction func submitButtonPressed(_ sender: UIButton)
    {
        if (whichButtonPressed == allNotes[n])
        {
            messageArea.text = "Correct! Press play for a new note."
            n = Int(arc4random_uniform(11))
        }
        else
        {
            messageArea.text = "Incorrect! Please try again."
        }
    }
    
    @IBAction func playScaleButtonPressed(_ sender: UIButton)
    {
        let scalePath = Bundle.main.path(forResource: "scale.mp3", ofType: nil)
        let url = URL(fileURLWithPath: scalePath!)
        
        do
        {
            note = try AVAudioPlayer(contentsOf: url)
            note?.play()
        }catch
        {
            //hopefully no errors...
        }
    }
    
}
    
    


