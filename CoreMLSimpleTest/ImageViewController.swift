//
//  ImageViewController.swift
//  CoreMLSimpleTest
//
//  Created by TokyoYoshida on 2020/10/23.
//  Copyright © 2020 TokyoYoshida. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let model = MobileNetV2()
        let image = UIImage(named: "neco")
        
        
//        let input = MobileNetV2Input(input_1:
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
