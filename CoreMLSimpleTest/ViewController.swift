//
//  ViewController.swift
//  CoreMLSimpleTest
//
//  Created by TokyoYoshida on 2020/10/17.
//  Copyright © 2020 TokyoYoshida. All rights reserved.
//

import UIKit
import CoreML

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let model = my_model()
        let inputArray = try! MLMultiArray([2,3])
        let inputToModel: my_modelInput = my_modelInput(input1: inputArray)
        if let prediction = try? model.prediction(input: inputToModel) {
            print(prediction.digit)
        }
    }
}

