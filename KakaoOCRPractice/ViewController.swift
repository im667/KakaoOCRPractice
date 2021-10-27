//
//  ViewController.swift
//  KakaoOCRPractice
//
//  Created by mac on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {
    
    var imgText: String = ""
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func IsClickedBtn(_ sender: Any) {
        KakaoAPIManager.shared.fetchFaceData(image: imageView.image!) { code, json in
            
            for item in json["result"].arrayValue {
         
                self.imgText += item["recognition_words"][0].stringValue + " "
                
                        }
                        
            self.textLabel.text = self.imgText
            
        }
        
    }
}

