//
//  Preview.swift
//  MyNetflix
//
//  Created by joonwon lee on 2020/04/03.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

// https://developer.apple.com/documentation/avfoundation/avplayerlayer

import UIKit
import AVFoundation

class PlayerView: UIView {
    
    var player: AVPlayer? {
        get {
            return playerLayer.player
        }
        set {
            playerLayer.player = newValue
        }
    }
    
    var playerLayer: AVPlayerLayer {
        return layer as! AVPlayerLayer
    }
    
    // Override UIView property
    
    override static var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}


// 뷰 아래에 layer 즉 레이어보다 더 활용된게 uikit의 view 인거임
// 일단 이 뷰의 layerclass 를 AVPlayerLayer로 설정해
//avplayer는 avplayerlayer안에 있음
