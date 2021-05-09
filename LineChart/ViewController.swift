//
//  ViewController.swift
//  LineChart
//
//  Created by Nguyen Vu Nhat Minh on 25/8/17.
//  Copyright © 2017 Nguyen Vu Nhat Minh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lineChart: LineChart!
    @IBOutlet weak var curvedlineChart: LineChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        // Sample dataset
//        let dataEntries = [PointEntry(value: 0, title: ""), PointEntry(value: 100, title: ""), PointEntry(value: 100, title: ""), PointEntry(value: 100, title: ""), PointEntry(value: 20, title: ""), PointEntry(value: 30, title: ""), PointEntry(value: 120, title: "")]
        
        let dataEntries = generateRandomEntries()
        
        lineChart.dataEntries = dataEntries
        lineChart.dataEntries2 = generateRandomEntries2()
        lineChart.isCurved = true
//        lineChart.showDots = true
        
//        curvedlineChart.dataEntries = dataEntries
//        curvedlineChart.isCurved = true
    }
    
    private func generateRandomEntries() -> [PointEntry] {
        var result: [PointEntry] = []
        for i in 0..<5 {
            var value = 0
            
            if i == 0 {
                value = 250
            } else if i == 1 {
                value = 230
            } else if i == 2 {
                value = 270
            } else if i == 3 {
                value = 290
            } else {
                value = 240
            }
            
            let formatter = DateFormatter()
            formatter.dateFormat = "d MMM"
            var date = Date()
            date.addTimeInterval(TimeInterval(24*60*60*i))
            
            result.append(PointEntry(value: value, label: formatter.string(from: date)))
        }
        return result
    }
    
    private func generateRandomEntries2() -> [PointEntry] {
        var result: [PointEntry] = []
        for i in 0..<5 {
            var value = 0
            
            if i == 0 {
                value = 160
            } else if i == 1 {
                value = 170
            } else if i == 2 {
                value = 130
            } else if i == 3 {
                value = 180
            } else {
                value = 150
            }
            
            let formatter = DateFormatter()
            formatter.dateFormat = "d MMM"
            var date = Date()
            date.addTimeInterval(TimeInterval(24*60*60*i))
            
            result.append(PointEntry(value: value, label: formatter.string(from: date)))
        }
        return result
    }
}

