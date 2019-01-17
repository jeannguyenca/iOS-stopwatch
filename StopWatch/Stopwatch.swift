//
//  Stopwatch.swift
//  StopWatch
//
//  Created by Jean Nguyen on 1/14/19.
//  Copyright © 2019 Jean Nguyen. All rights reserved.
//

import Foundation

class Stopwatch {
    
    private var startTime: Date?
    private var isStopped = false
    
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }
    
    var isRunning: Bool {
        return startTime != nil
    }
    
    func start() {
        if (startTime != nil){
            

            if isRunning {
                if !isStopped {
                    print("isStopped ? \(isStopped)")
                    startTime = Date().addingTimeInterval(-elapsedTime)
                }
            }
        }else{
            startTime = Date()
            print("Start")
        }

    }
    
    func stop(){
        isStopped = true
    }
    
    func restart() {
        startTime = nil
    }
    
}
