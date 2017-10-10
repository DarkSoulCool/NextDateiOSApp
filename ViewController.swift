//
//  ViewController.swift
//  NextDate
//
//  Created by user on 10/10/2560 BE.
//  Copyright © 2560 PP_N. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // input field
    @IBOutlet weak var monthNumber: UITextField!
    @IBOutlet weak var dayNumber: UITextField!
    @IBOutlet weak var yearNumber: UITextField!
    
    // output
    @IBOutlet weak var showNextDate: UITextView!
    
    @IBAction func checkNextDate(_ sender: Any) {
        var month = Int(monthNumber.text!)!
        var day = Int(dayNumber.text!)!
        var year = Int(yearNumber.text!)!
        
        var tomorrowMonth = month
        var tomorrowDay = day
        var tomorrowYear = year
        
        if (month >= 1 && month <= 12) && (day >= 1 && day <= 31) && (year >= 1812 && year <= 2012) {
            if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10) {
                if day <= 30 {
                    tomorrowDay += 1
                    printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                } else {
                    tomorrowMonth += 1
                    tomorrowDay = 1
                    printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                }
            } else if (month == 4 || month == 6 || month == 9 || month == 11) {
                if day <= 29 {
                    tomorrowDay += 1
                    printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                } else {
                    tomorrowMonth += 1
                    tomorrowDay = 1
                    printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                }
            } else if (month == 12) {
                if day <= 30 {
                    tomorrowDay += 1
                    printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                } else {
                    tomorrowMonth = 1
                    tomorrowDay = 1
                    tomorrowYear += 1
                    printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                }
            } else if (month == 2) {
                if (year % 4 == 0) {
                    if (year == 1900) {
                        if day <= 27 {
                            tomorrowDay += 1
                            printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                        } else if day == 28 {
                            tomorrowMonth += 1
                            tomorrowDay = 1
                            printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                        } else {
                            showNextDate.text = "Invalid input date"
                        }
                    } else if day <= 28 {
                        tomorrowDay += 1
                        printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                    } else {
                        tomorrowMonth += 1
                        tomorrowDay = 1
                        printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                    }
                } else {
                    if day <= 27 {
                        tomorrowDay += 1
                        printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                    } else if day > 28 {
                        showNextDate.text = "Invalid input date"
                    } else {
                        tomorrowMonth += 1
                        tomorrowDay = 1
                        printDate(month: tomorrowMonth, day: tomorrowDay, year: tomorrowYear)
                    }
                }
            }
        } else {
            showNextDate.text = "Invalid input date"
        }
        
        //showNextDate.text = "\(tomorrowMonth), \(tomorrowDay), \(tomorrowYear)"
        
    }
    
    func printDate(month: Int, day: Int, year: Int) {
        showNextDate.text = "\(month), \(day), \(year)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

