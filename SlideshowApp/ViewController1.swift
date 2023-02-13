

import UIKit



class ViewController1: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    
    var imageIndex = 0
    
    var timer: Timer!
    
    let images = [UIImage(named: "スクリーンショット 2023-02-02 16.30.43"), UIImage(named: "スクリーンショット 2023-02-02 16.31.12"), UIImage(named: "スクリーンショット 2023-02-02 16.31.23")]
    
    @IBOutlet weak var susumu: UIButton!
    @IBOutlet weak var modoru: UIButton!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "再生"
        let imageView = images[0]
        
        imageView1.image = imageView
    }
    
    
    @IBAction func button(_ sender: Any) {
        label.text = "停止"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        susumu.isEnabled = true
        modoru.isEnabled = true
       
        if self.timer == nil {
            
        } else {
            self.timer.invalidate()   // タイマーを停止する
            self.timer = nil
            label.text = "再生"
        }
        
           let viewController2:ViewController2 = segue.destination as! ViewController2
           
        viewController2.image = imageView1.image!
       }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backImage(_ sender: Any) {
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        imageView1.image = images[imageIndex]
    }
    
    @IBAction func nextImage(_ sender: Any) {
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        imageView1.image = images[imageIndex]
    }
    
    @IBAction func startStop(_ sender: Any) {

        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
            susumu.isEnabled = false
            modoru.isEnabled = false
            
        } else {
            self.timer.invalidate()   // タイマーを停止する
            self.timer = nil
            
            susumu.isEnabled = true
            modoru.isEnabled = true
            label.text = "再生"
            
            
        }
        
    }
    //        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
    //
    
    @objc func onTimer(_ timer: Timer) {
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        
        
        imageView1.image = images[imageIndex]
        
    }
}

