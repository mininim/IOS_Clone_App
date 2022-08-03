//
//  ViewController.swift
//  MyAlbum
//
//  Created by 이민섭 on 2022/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refresh()
            
    }

    
    
    
    @IBAction func showAlert(_ sender: Any) {
        //버튼에 대한 액션
        
        let message = "가격은 \(currentValue) 입니다"
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
       //alert애 message 추가
        
        let action = UIAlertAction(title: "옦카이", style: .default, handler: { action in
            self.refresh() })
        
        // action 생성 - 메세지 창에 대한 액션 메세지창 아래에 버튼 추가 하는 느낌
        
        alert.addAction(action)
        //alert controller에 action 추가
        
        self.present(alert, animated: true, completion: nil)
        // 여기서 self 는 viewcontroller
        // 그 뷰에서 이 alert을 띄우기
        // aler은 uialertcontroller 타입
        
        
        
    }
    
    
    func refresh(){
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = (Int)(randomPrice)
        priceLabel.text = "$ \(currentValue)"
    }
    
    
}

