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
    }

    @IBAction func buttonSimpleMLTapped(_ sender: Any) {
        let model = my_model()
        let inputArray = try! MLMultiArray([2,3])
        let inputToModel: my_modelInput = my_modelInput(input1: inputArray)
        if let prediction = try? model.prediction(input: inputToModel) {
            print(prediction.digit)
            print(prediction.digitProbabilities)
        }
    }

    @IBAction func buttonSimpleMLWithImageTapped(_ sender: Any) {
        let model = MobileNetV2()
        let image = UIImage(named: "neco")
        guard let buffer = image?.pixelBuffer(width: 224, height: 224) else {fatalError()}
        let input = MobileNetV2Input(input_1: buffer)
        
        let output = try! model.prediction(input: input)
        print(output)
        
        print(output.classLabel)
        print(output.Identity)
    }

    @IBAction func buttonSimpleMLWithBuilderTapped(_ sender: Any) {
    }
}

