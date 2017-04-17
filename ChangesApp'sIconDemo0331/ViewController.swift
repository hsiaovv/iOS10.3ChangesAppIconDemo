//
//  ViewController.swift
//  ChangesApp'sIconDemo0331
//
//  Created by xiaovv on 2017/3/31.
//  Copyright © 2017年 xiaovv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeIcon1(_ sender: UIButton) {
        
        changeIcon(iconName: "ChangeIcon1")
    }
    
    @IBAction func changeIcon2(_ sender: UIButton) {
        changeIcon(iconName: "ChangeIcon2")
    }
    
    @IBAction func restoreIcon(_ sender: UIButton) {
        
        changeIcon(iconName: nil)
    }
    
    func changeIcon(iconName:String?) {
        
        if UIApplication.shared.supportsAlternateIcons {//判断设备是否支持更换图标
            
            UIApplication.shared.setAlternateIconName(iconName, completionHandler: { (error) in
                
                if error != nil {
                     print("替换icon失败\(String(describing: error?.localizedDescription))")
                }
            })
            
        }else {
            
            print("设备不支持更换图标")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

