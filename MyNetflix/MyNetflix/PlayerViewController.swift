//
//  PlayerViewController.swift
//  MyNetflix
//
//  Created by joonwon lee on 2020/04/01.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit
import AVFoundation

class PlayerViewController: UIViewController {
    

    @IBOutlet weak var playerView: PlayerView!
    @IBOutlet weak var controlView: UIView!
    
    @IBOutlet weak var playButton: UIButton!
    
    let player = AVPlayer()
    
    @IBAction func togglePlaybutton(_ sender: Any) {
        
        if player.isPlaying{
            pause()
        }else{
            play()
        }
    }
    func play(){
        player.play()
        playButton.isSelected = true
    }
        
    func pause(){
        player.pause()
        playButton.isSelected = false
    }
        
    func reset(){
        pause()
        player.replaceCurrentItem(with: nil)
    }
     
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return .landscapeRight
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.player = player
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        play()
    }
    

    @IBAction func closeButtonTapped(_ sender: Any) {
        
        reset() 
        dismiss(animated: false, completion: nil)
        
    }
}

extension AVPlayer {
    var isPlaying: Bool {
        
        guard self.currentItem != nil else { return false }
        //currentitem이 없으면 false 반환
        
        //current 아이템이 있어!
        return self.rate != 0
        // 재생속도 rate 가 0 일 경우 false 0 이 아닌 경우 true
    }
}
