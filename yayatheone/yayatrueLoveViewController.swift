//
//  yayatrueLoveViewController.swift
//  yayatheone
//
//  Created by yaya on 2016/11/10.
//  Copyright © 2016年 yaya. All rights reserved.
//

import UIKit

class yayatrueLoveViewController: UIViewController {

    @IBOutlet weak var zodiac: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var lovebaseball: UISwitch!
    @IBOutlet weak var yayabirthday: UILabel!
    @IBOutlet weak var answerimgyes: UIImageView!
    @IBOutlet weak var answerimgno: UIImageView!
    
    //yaya生日的slider
    
    var yayabdayvalue:Int = 1
    
    @IBAction func birthday(_ sender: UISlider) {
        
        yayabirthday.isHidden = false
        yayabdayvalue = Int(sender.value)
        yayabirthday.text = "12/\(yayabdayvalue)"
        
    }
    
    //送出button
    
    @IBAction func sendbtn(_ sender: AnyObject) {
        
        let zodiacsign:String = zodiac.text!
        
        if zodiacsign == "Gemini" && gender.selectedSegmentIndex == 0 && lovebaseball.isOn == true && yayabdayvalue == 26 {
            answerimgyes.isHidden = false
            answerimgno.isHidden = true
        }else {
            answerimgyes.isHidden = true
            answerimgno.isHidden = false
        }
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
