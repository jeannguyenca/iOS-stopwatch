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
    private var stopTime: Date?
    
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
            //if the stop watch is running (not restart yet)
            if isRunning {
                //if the start button is press when not stopped
                if stopTime == nil {
                    print("isStopped ? false")
                    startTime = Date().addingTimeInterval(-elapsedTime)
                } else { //if the start button is press when stopped
                    print("isStopped ? true")
                    //get time interval between stopped time and resume time to adjust the right Date()
                    let stopInterval = Date().timeIntervalSince(stopTime!)
                    startTime = Date().addingTimeInterval(stopInterval).addingTimeInterval(-elapsedTime)
                    stopTime = nil
                }
            }
        } else {
            startTime = Date()
            print("Start")
        }

    }
    
    func stop(){
        stopTime = Date()
    }
    
    func restart() {
        startTime = nil
    }
    
}
