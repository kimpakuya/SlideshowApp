//
//  SecondViewController.swift
//  SlideshowApp
//
//  Created by 小幡達也 on 2023/02/02.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var imageView2: UIImageView!
    
    var image: UIImage?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView2.image = image
        
        //    }
        
        
        
    }
    
    @IBAction func ssss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
   
        
    }


