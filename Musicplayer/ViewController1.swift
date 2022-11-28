//
//  ViewController1.swift
//  Musicplayer
//
//  Created by ddukk17 on 01.11.22.
//

import UIKit
import AVFoundation

class ViewController1: UIViewController {
    var AVPlayer: AVAudioPlayer?
    
   public var  simg = " ",stitle = " ", sname = ""
  

      public var music = " "
    @IBOutlet weak var pause: UIButton!
    @IBOutlet weak var imgsong: UIImageView!
    
    @IBOutlet weak var songname: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        imgsong.image = UIImage(named: simg)
        songname.text = stitle
        imgsong.image = UIImage(named: simg)
        
        

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func Play(_ sender: UIButton) {
    
        pause.setImage(UIImage(named: "pause"), for: .normal)
        if AVPlayer?.isPlaying == true{
            AVPlayer?.pause()
            pause.setImage(UIImage(named: "Vector"), for: .normal)
        }else
        {
            guard let url = Bundle.main.url(forResource: music, withExtension: "mp3")
            else{
                return
            }
            do{
                AVPlayer = try AVAudioPlayer(contentsOf: url)
                AVPlayer?.play()
            }catch{
            }
            }
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

