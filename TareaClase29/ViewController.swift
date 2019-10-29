//
//  ViewController.swift
//  TareaClase29
//
//  Created by Paola Latino on 10/29/19.
//  Copyright © 2019 Paola Latino. All rights reserved.
//

import UIKit
import YoutubePlayer_in_WKWebView

class ViewController: UIViewController {

    @IBOutlet weak var videoYoutube: WKYTPlayerView!
    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        videoYoutube.load(withVideoId: "EzKkl64rRbM")
        let url1 = URL(string: "https://uniandes.edu.co/caribe/sites/default/files/logo_negro.png")!
        utilityThread(url: url1)
    }
    
    func utilityThread(url: URL){

            DispatchQueue.global().async { [weak self] in
                if let data = try? Data(contentsOf: url) {
                    if let image = UIImage(data: data) {
                        DispatchQueue.main.async {
                            self?.imagen.image = image
                            self?.loadYoutube()
                        }
                    }
                }
            }
        
    }

    func loadYoutube(){
        //ID Video: EzKkl64rRbM
        videoYoutube.load(withVideoId: "SaTgeUIyi0w")
    }
    
    
}

