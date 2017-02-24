//
//  ViewController.swift
//  Memory Game
//
//  Created by Niwat Kaewkert on 2/18/2560 BE.
//  Copyright © 2560 Niwat Kaewkert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bg = UIImage(named: "bg-card.jpg")!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var timeDisplay: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var time : Timer!
    var myTime: Float = 30
    var checkReset = 0
    var count = 0

    var imageArr : [UIImage] = [
        UIImage(named: "1.png")!,
        UIImage(named: "2.png")!,
        UIImage(named: "3.png")!,
        UIImage(named: "4.png")!,
        UIImage(named: "5.png")!,
        UIImage(named: "6.png")!,
        UIImage(named: "7.png")!,
        UIImage(named: "8.png")!
    ]
    
    var randomPic = [0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7]
    var keepMatchinng : [Int] = []
    var keepBtn : [UIButton] = []
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    @IBOutlet weak var btn16: UIButton!
    
    var btnArr : [UIButton] = []
    
    func addBtn(){
        btnArr.append(btn1)
        btnArr.append(btn2)
        btnArr.append(btn3)
        btnArr.append(btn4)
        btnArr.append(btn5)
        btnArr.append(btn6)
        btnArr.append(btn7)
        btnArr.append(btn8)
        btnArr.append(btn9)
        btnArr.append(btn10)
        btnArr.append(btn11)
        btnArr.append(btn12)
        btnArr.append(btn13)
        btnArr.append(btn14)
        btnArr.append(btn15)
        btnArr.append(btn16)
    }
    
    func checkMacthing() {
        if keepMatchinng[0] == keepMatchinng[1] {
            //print(keepBtn[0])
            keepBtn[0].isEnabled = false
            keepBtn[1].isEnabled = false
            keepBtn[0].isHidden = true
            keepBtn[1].isHidden = true
            keepMatchinng.removeAll()
            keepBtn.removeAll()
            
            count = 0
            
            score.text = String(Int(score.text!)! + 10)
            if score.text == "80" {
                score.textColor = UIColor.red
                let alertController = UIAlertController(title: "Cheer! love. You done!", message: "Your score : " + score.text!, preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: nil))
                present(alertController, animated: true, completion: nil)
                time.invalidate()
                myTime = 30
            }
        }
    }
    
    func hidePic() {
        keepBtn[0].setImage(bg, for: .normal)
        keepBtn[1].setImage(bg, for: .normal)
        
        keepBtn[0].isEnabled = true
        keepBtn[1].isEnabled = true
        
        keepBtn.remove(at: 0)
        keepBtn.remove(at: 0)
        
        keepMatchinng.remove(at: 0)
        keepMatchinng.remove(at: 0)
        
        count = 1
    }
    

    @IBAction func btnTapped1(_ sender: UIButton) {
            sender.setImage(imageArr[randomPic[0]], for: .normal)
            keepMatchinng.append(randomPic[0])
            keepBtn.append(sender)
            count += 1
        
            if count == 2 {
                checkMacthing()
            } else if count == 3 {
                hidePic()
            }
            sender.isEnabled = false
    }
    
    @IBAction func btnTapped2(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[1]], for: .normal)
        keepMatchinng.append(randomPic[1])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped3(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[2]], for: .normal)
        keepMatchinng.append(randomPic[2])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped4(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[3]], for: .normal)
        keepMatchinng.append(randomPic[3])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped5(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[4]], for: .normal)
        keepMatchinng.append(randomPic[4])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped6(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[5]], for: .normal)
        keepMatchinng.append(randomPic[5])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped7(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[6]], for: .normal)
        keepMatchinng.append(randomPic[6])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped8(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[7]], for: .normal)
        keepMatchinng.append(randomPic[7])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }

    @IBAction func btnTapped9(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[8]], for: .normal)
        keepMatchinng.append(randomPic[8])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped10(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[9]], for: .normal)
        keepMatchinng.append(randomPic[9])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped11(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[10]], for: .normal)
        keepMatchinng.append(randomPic[10])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped12(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[11]], for: .normal)
        keepMatchinng.append(randomPic[11])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped13(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[12]], for: .normal)
        keepMatchinng.append(randomPic[12])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped14(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[13]], for: .normal)
        keepMatchinng.append(randomPic[13])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped15(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[14]], for: .normal)
        keepMatchinng.append(randomPic[14])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }
    
    @IBAction func btnTapped16(_ sender: UIButton) {
        sender.setImage(imageArr[randomPic[15]], for: .normal)
        keepMatchinng.append(randomPic[15])
        keepBtn.append(sender)
        count += 1
        
        if count == 2 {
            checkMacthing()
        } else if count == 3 {
            hidePic()
        }
        sender.isEnabled = false
    }

    @IBOutlet weak var playpauseBtn: UIButton!
    
    @IBAction func playpauseBtnClick(_ sender: UIButton) {
        if playpauseBtn.currentTitle == "PLAY" {
            playpauseBtn.setTitle("PAUSE", for: .normal)
            checkReset += 1
            print("if")
            for _ in 0..<randomPic.count {
                randomPic.sort { (_,_) in arc4random() < arc4random() }
            }
            
            for index in 0...15 {
                btnArr[index].isEnabled = true
                
            }
            
            time = Timer.scheduledTimer(timeInterval: 1.0,target : self, selector : #selector(updateTime),userInfo: nil , repeats: true)
            //progressBar.setProgress(1.0, animated: true)
            
        } else {
            playpauseBtn.setTitle("PLAY", for: .normal)
            
            for index in 0...15 {
                btnArr[index].isEnabled = false
                
            }
            
            time.invalidate();
            
            print("else")
        }
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
        if checkReset == 0 {
            
        } else {
            playpauseBtn.setTitle("PLAY", for: .normal)
            progressBar.setProgress(1.0, animated: true)
            progressBar.progressTintColor = UIColor.blue
            timeDisplay.textColor = UIColor.black
            count = 0
            keepBtn = []
            keepMatchinng = []
            score.text = "0"
            score.textColor = UIColor.black
            myTime = 30
            
            time.invalidate();
            
            timeDisplay.text = "30"
            
            for index in 0...15 {
                btnArr[index].isHidden = false
                
            }
            
            for index in 0...15 {
                btnArr[index].isEnabled = false
                
            }
            
            for index in 0...15 {
                btnArr[index].setImage(bg, for: .normal)
                
            }
        }
    }
    
    func updateTime(){
        if myTime <= 10 {
            timeDisplay.textColor = UIColor.red
            progressBar.progressTintColor = UIColor.red
        }
        else {
            progressBar.progressTintColor = UIColor.blue
        }
        if myTime == 0 {
            
            for index in 0...15 {
                btnArr[index].isEnabled = false
                
            }
            
            time.invalidate();
            let alertController = UIAlertController(title: "Time out!!", message: "Your score : " + score.text! , preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        
        progressBar.setProgress(myTime/30 ,animated: true)
        timeDisplay.text = String(Int(myTime))
        myTime -= 1;


    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.setProgress(1.0, animated: true)
        
        addBtn()

        for index in 0...15 {
            btnArr[index].isEnabled = false

        }

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

