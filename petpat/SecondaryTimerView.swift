//
//  SecondaryTimerView.swift
//  PETPAT
//
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit

// MARK: Global Variables

// total time
var secTotalTime1  = 0,
    secTotalTime2  = 0,
    secTotalTime3  = 0,
    secTotalTime4  = 0,
    secTotalTime5  = 0,
    secTotalTime6  = 0,
    secTotalTime7  = 0,
    secTotalTime8  = 0,
    secTotalTime9  = 0,
    secTotalTime10 = 0,
    secTotalTime11 = 0,
    secTotalTime12 = 0

// total time as a string
var secTotalTime1String = "",
    secTotalTime2String = "",
    secTotalTime3String = "",
    secTotalTime4String = "",
    secTotalTime5String = "",
    secTotalTime6String = "",
    secTotalTime7String = "",
    secTotalTime8String = "",
    secTotalTime9String = "",
    secTotalTime10String = "",
    secTotalTime11String = "",
    secTotalTime12String = ""

// total count
var secTotalCount1  = 0,
    secTotalCount2  = 0,
    secTotalCount3  = 0,
    secTotalCount4  = 0,
    secTotalCount5  = 0,
    secTotalCount6  = 0,
    secTotalCount7  = 0,
    secTotalCount8  = 0,
    secTotalCount9  = 0,
    secTotalCount10 = 0,
    secTotalCount11 = 0,
    secTotalCount12 = 0

// total count as a string
var secTotalCount1String = "",
    secTotalCount2String = "",
    secTotalCount3String = "",
    secTotalCount4String = "",
    secTotalCount5String = "",
    secTotalCount6String = "",
    secTotalCount7String = "",
    secTotalCount8String = "",
    secTotalCount9String = "",
    secTotalCount10String = "",
    secTotalCount11String = "",
    secTotalCount12String = ""

// timed behavior labels
var secTimeBehaviorLabel1String = "",
    secTimeBehaviorLabel2String = "",
    secTimeBehaviorLabel3String = "",
    secTimeBehaviorLabel4String = "",
    secTimeBehaviorLabel5String = "",
    secTimeBehaviorLabel6String = "",
    secTimeBehaviorLabel7String = "",
    secTimeBehaviorLabel8String = "",
    secTimeBehaviorLabel9String = "",
    secTimeBehaviorLabel10String = "",
    secTimeBehaviorLabel11String = "",
    secTimeBehaviorLabel12String = ""

// counted behavior labels
var secCountBehaviorLabel1String = "",
    secCountBehaviorLabel2String = "",
    secCountBehaviorLabel3String = "",
    secCountBehaviorLabel4String = "",
    secCountBehaviorLabel5String = "",
    secCountBehaviorLabel6String = "",
    secCountBehaviorLabel7String = "",
    secCountBehaviorLabel8String = "",
    secCountBehaviorLabel9String = "",
    secCountBehaviorLabel10String = "",
    secCountBehaviorLabel11String = "",
    secCountBehaviorLabel12String = ""



class SecondaryTimerView: UIViewController {
    
    
    
    // Timer Objects
    var timer1  = Timer(),
        timer2  = Timer(),
        timer3  = Timer(),
        timer4  = Timer(),
        timer5  = Timer(),
        timer6  = Timer(),
        timer7  = Timer(),
        timer8  = Timer(),
        timer9  = Timer(),
        timer10 = Timer(),
        timer11 = Timer(),
        timer12 = Timer()
    
    // Button Label Placeholders for Switch Cases
    var timerButtonLabels = "",
    stopButtonLabels  = "",
    incrementButtonLabels = "",
    decrementButtonLabels = ""
    
    
    // Outlet: text field for editing respective label names
    @IBOutlet weak var secondaryEditLabelTextField: UITextField!
    

    // Timer Buttons
    @IBOutlet weak var secondaryTimerButton1: UIButton!
    @IBOutlet weak var secondaryTimerButton2: UIButton!
    @IBOutlet weak var secondaryTimerButton3: UIButton!
    @IBOutlet weak var secondaryTimerButton4: UIButton!
    @IBOutlet weak var secondaryTimerButton5: UIButton!
    @IBOutlet weak var secondaryTimerButton6: UIButton!
    @IBOutlet weak var secondaryTimerButton7: UIButton!
    @IBOutlet weak var secondaryTimerButton8: UIButton!
    @IBOutlet weak var secondaryTimerButton9: UIButton!
    @IBOutlet weak var secondaryTimerButton10: UIButton!
    @IBOutlet weak var secondaryTimerButton11: UIButton!
    @IBOutlet weak var secondaryTimerButton12: UIButton!
    
    
    // Counter Buttons
    @IBOutlet weak var secondaryCounterButton1: UIButton!
    @IBOutlet weak var secondaryCounterButton2: UIButton!
    @IBOutlet weak var secondaryCounterButton3: UIButton!
    @IBOutlet weak var secondaryCounterButton4: UIButton!
    @IBOutlet weak var secondaryCounterButton5: UIButton!
    @IBOutlet weak var secondaryCounterButton6: UIButton!
    @IBOutlet weak var secondaryCounterButton7: UIButton!
    @IBOutlet weak var secondaryCounterButton8: UIButton!
    @IBOutlet weak var secondaryCounterButton9: UIButton!
    @IBOutlet weak var secondaryCounterButton10: UIButton!
    @IBOutlet weak var secondaryCounterButton11: UIButton!
    @IBOutlet weak var secondaryCounterButton12: UIButton!
    
    
    // Timed Behvior Labels
    @IBOutlet weak var secTimedBehaviorLabel1: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel2: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel3: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel4: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel5: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel6: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel7: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel8: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel9: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel10: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel11: UILabel!
    @IBOutlet weak var secTimedBehaviorLabel12: UILabel!
    
    
    // Counted Behavior Labels
    @IBOutlet weak var secCountBehaviorLabel1: UILabel!
    @IBOutlet weak var secCountBehaviorLabel2: UILabel!
    @IBOutlet weak var secCountBehaviorLabel3: UILabel!
    @IBOutlet weak var secCountBehaviorLabel4: UILabel!
    @IBOutlet weak var secCountBehaviorLabel5: UILabel!
    @IBOutlet weak var secCountBehaviorLabel6: UILabel!
    @IBOutlet weak var secCountBehaviorLabel7: UILabel!
    @IBOutlet weak var secCountBehaviorLabel8: UILabel!
    @IBOutlet weak var secCountBehaviorLabel9: UILabel!
    @IBOutlet weak var secCountBehaviorLabel10: UILabel!
    @IBOutlet weak var secCountBehaviorLabel11: UILabel!
    @IBOutlet weak var secCountBehaviorLabel12: UILabel!
    
    
    // Timer Labels
    @IBOutlet weak var secTimerLabel1: UILabel!
    @IBOutlet weak var secTimerLabel2: UILabel!
    @IBOutlet weak var secTimerLabel3: UILabel!
    @IBOutlet weak var secTimerLabel4: UILabel!
    @IBOutlet weak var secTimerLabel5: UILabel!
    @IBOutlet weak var secTimerLabel6: UILabel!
    @IBOutlet weak var secTimerLabel7: UILabel!
    @IBOutlet weak var secTimerLabel8: UILabel!
    @IBOutlet weak var secTimerLabel9: UILabel!
    @IBOutlet weak var secTimerLabel10: UILabel!
    @IBOutlet weak var secTimerLabel11: UILabel!
    @IBOutlet weak var secTimerLabel12: UILabel!
    
    // Counter Labels
    @IBOutlet weak var secCountLabel1: UILabel!
    @IBOutlet weak var secCountLabel2: UILabel!
    @IBOutlet weak var secCountLabel3: UILabel!
    @IBOutlet weak var secCountLabel4: UILabel!
    @IBOutlet weak var secCountLabel5: UILabel!
    @IBOutlet weak var secCountLabel6: UILabel!
    @IBOutlet weak var secCountLabel7: UILabel!
    @IBOutlet weak var secCountLabel8: UILabel!
    @IBOutlet weak var secCountLabel9: UILabel!
    @IBOutlet weak var secCountLabel10: UILabel!
    @IBOutlet weak var secCountLabel11: UILabel!
    @IBOutlet weak var secCountLabel12: UILabel!
    
    
    
    // MARK: Start Timer functions, initializes each timer object and sets their respective action functions ( e.g. action1() )
    
    func startTimer1(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel1.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupOneTimers()
            secondaryTimerButton1.isEnabled = false
            invalidateGroupOneTimers()
            timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action1), userInfo: nil, repeats: true)
        }

    }
    
    func startTimer2(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel2.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupOneTimers()
            secondaryTimerButton2.isEnabled = false
            invalidateGroupOneTimers()
            timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action2), userInfo: nil, repeats: true)
        }
 
    }
    
    func startTimer3(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel3.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupOneTimers()
            secondaryTimerButton3.isEnabled = false
            invalidateGroupOneTimers()
            timer3 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action3), userInfo: nil, repeats: true)
        }

    }
    
    func startTimer4(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel4.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupOneTimers()
            secondaryTimerButton4.isEnabled = false
            invalidateGroupOneTimers()
            timer4 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action4), userInfo: nil, repeats: true)
        }

    }
    
    func startTimer5(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel5.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupTwoTimers()
            secondaryTimerButton5.isEnabled = false
            invalidateGroupTwoTimers()
            timer5 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action5), userInfo: nil, repeats: true)
        }

    }
    
    func startTimer6(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel6.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupTwoTimers()
            secondaryTimerButton6.isEnabled = false
            invalidateGroupTwoTimers()
            timer6 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action6), userInfo: nil, repeats: true)
        }

    }
    
    func startTimer7(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel7.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupTwoTimers()
            secondaryTimerButton7.isEnabled = false
            invalidateGroupTwoTimers()
            timer7 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action7), userInfo: nil, repeats: true)
        }

    }
    
    func startTimer8(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel8.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupTwoTimers()
            secondaryTimerButton8.isEnabled = false
            invalidateGroupTwoTimers()
            timer8 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action8), userInfo: nil, repeats: true)
        }

    }
    
    func startTimer9(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel9.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupThreeTimers()
            secondaryTimerButton9.isEnabled = false
            invalidateGroupThreeTimers()
            timer9 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action9), userInfo: nil, repeats: true)
        }

    }
    
    func startTimer10(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel10.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupThreeTimers()
            secondaryTimerButton10.isEnabled = false
            invalidateGroupThreeTimers()
            timer10 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action10), userInfo: nil, repeats: true)
        }

    }
    
    func startTimer11(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel11.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupThreeTimers()
            secondaryTimerButton11.isEnabled = false
            invalidateGroupThreeTimers()
            timer11 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action11), userInfo: nil, repeats: true)
        }

    }
    
    func startTimer12(_ sender: UITapGestureRecognizer) {
        
        // if the respective time behavior label has not been edited
        if secTimedBehaviorLabel12.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            enableGroupThreeTimers()
            secondaryTimerButton12.isEnabled = false
            invalidateGroupThreeTimers()
            timer12 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondaryTimerView.action12), userInfo: nil, repeats: true)
        }

    }
    
    
    // MARK: Timer Action Functions - invoked on initialization of each respective timer object and increments the total time by one second, updates each respective timer label
    
    func action1 ()
    {
        secTotalTime1 += 1
        secTimerLabel1.text = convertToTimestamp(time: secTotalTime1)
    }
    
    func action2 ()
    {
        secTotalTime2 += 1
        secTimerLabel2.text = convertToTimestamp(time: secTotalTime2)
    }
    
    func action3 ()
    {
        secTotalTime3 += 1
        secTimerLabel3.text = convertToTimestamp(time: secTotalTime3)
    }
    
    func action4 ()
    {
        secTotalTime4 += 1
        secTimerLabel4.text = convertToTimestamp(time: secTotalTime4)
    }
    
    func action5 ()
    {
        secTotalTime5 += 1
        secTimerLabel5.text = convertToTimestamp(time: secTotalTime5)
    }
    
    func action6 ()
    {
        secTotalTime6 += 1
        secTimerLabel6.text = convertToTimestamp(time: secTotalTime6)
    }
    
    func action7 ()
    {
        secTotalTime7 += 1
        secTimerLabel7.text = convertToTimestamp(time: secTotalTime7)
    }
    
    func action8 ()
    {
        secTotalTime8 += 1
        secTimerLabel8.text = convertToTimestamp(time: secTotalTime8)
    }
    
    func action9 ()
    {
        secTotalTime9 += 1
        secTimerLabel9.text = convertToTimestamp(time: secTotalTime9)
    }
    
    func action10 ()
    {
        secTotalTime10 += 1
        secTimerLabel10.text = convertToTimestamp(time: secTotalTime10)
    }
    
    func action11 ()
    {
        secTotalTime11 += 1
        secTimerLabel11.text = convertToTimestamp(time: secTotalTime11)
    }
    
    func action12 ()
    {
        secTotalTime12 += 1
        secTimerLabel12.text = convertToTimestamp(time: secTotalTime12)
    }
    
    
    
    
    // MARK: Stop Timer functions - invalidates each respective timer object ( e.g. timer1.invalidate() ) and enables each timer button
    
    @IBAction func stopTimer(_ sender: UIButton)
    {
        stopButtonLabels = sender.currentTitle!
        
        switch stopButtonLabels {
            
        case "secInvalidateButton1":
            timer1.invalidate()
            secondaryTimerButton1.isEnabled = true
        case "secInvalidateButton2":
            timer2.invalidate()
            secondaryTimerButton2.isEnabled = true
        case "secInvalidateButton3":
            timer3.invalidate()
            secondaryTimerButton3.isEnabled = true
        case "secInvalidateButton4":
            timer4.invalidate()
            secondaryTimerButton4.isEnabled = true
        case "secInvalidateButton5":
            timer5.invalidate()
            secondaryTimerButton5.isEnabled = true
        case "secInvalidateButton6":
            timer6.invalidate()
            secondaryTimerButton6.isEnabled = true
        case "secInvalidateButton7":
            timer7.invalidate()
            secondaryTimerButton7.isEnabled = true
        case "secInvalidateButton8":
            timer8.invalidate()
            secondaryTimerButton8.isEnabled = true
        case "secInvalidateButton9":
            timer9.invalidate()
            secondaryTimerButton9.isEnabled = true
        case "secInvalidateButton10":
            timer10.invalidate()
            secondaryTimerButton10.isEnabled = true
        case "secInvalidateButton11":
            timer11.invalidate()
            secondaryTimerButton11.isEnabled = true
        case "secInvalidateButton12":
            timer12.invalidate()
            secondaryTimerButton12.isEnabled = true

        default:
            print("Error In Stop Timer Function")
            
            
        }
    }
    
    
    // MARK: Increment Count Function - increments total count by one per button press, updates the respetive counter labels; if a label has not been reinitialized (is equal to "Edit...", performs no action.
    
    func incrementCount1(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel1.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount1 += 1
            secCountLabel1.text = String(secTotalCount1)
        }

    }
    
    func incrementCount2(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel2.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount2 += 1
            secCountLabel2.text = String(secTotalCount2)
        }

    }
    
    func incrementCount3(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel3.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount3 += 1
            secCountLabel3.text = String(secTotalCount3)
        }

    }
    
    func incrementCount4(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel4.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount4 += 1
            secCountLabel4.text = String(secTotalCount4)
        }

    }
    
    func incrementCount5(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel5.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount5 += 1
            secCountLabel5.text = String(secTotalCount5)
        }

    }
    
    func incrementCount6(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel6.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount6 += 1
            secCountLabel6.text = String(secTotalCount6)
        }

    }
    
    func incrementCount7(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel7.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount7 += 1
            secCountLabel7.text = String(secTotalCount7)
        }

    }
    
    func incrementCount8(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel8.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount8 += 1
            secCountLabel8.text = String(secTotalCount8)
        }

    }
    
    func incrementCount9(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel9.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount9 += 1
            secCountLabel9.text = String(secTotalCount9)
        }

    }
    
    func incrementCount10(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel10.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount10 += 1
            secCountLabel10.text = String(secTotalCount10)
        }

    }
    
    func incrementCount11(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel11.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount11 += 1
            secCountLabel11.text = String(secTotalCount11)
        }

    }
    
    func incrementCount12(_ sender: UITapGestureRecognizer) {
        
        // if the respective count behavior label has not been edited
        if secCountBehaviorLabel12.text == "Edit..." {
            // perform no action
            
        } else { // perform normal action
            secTotalCount12 += 1
            secCountLabel12.text = String(secTotalCount12)
        }

    }
    
    // MARK: Decrement Count Functions - decrements total count by one per button press, updates respective counter labels; if a label has not been reinitialized (is equal to "Edit...", performs no action.
    
    @IBAction func decrementCount(_ sender: UIButton)
    {
        decrementButtonLabels = sender.currentTitle!
        
        switch decrementButtonLabels {
            
        case "secDecrementButton1":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel1.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount1 -= 1
                secCountLabel1.text = String(secTotalCount1)
            }

            
        case "secDecrementButton2":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel2.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount2 -= 1
                secCountLabel2.text = String(secTotalCount2)
            }

            
        case "secDecrementButton3":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel3.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount3 -= 1
                secCountLabel3.text = String(secTotalCount3)
            }

            
        case "secDecrementButton4":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel4.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount4 -= 1
                secCountLabel4.text = String(secTotalCount4)
            }

            
        case "secDecrementButton5":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel5.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount5 -= 1
                secCountLabel5.text = String(secTotalCount5)
            }

            
        case "secDecrementButton6":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel6.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount6 -= 1
                secCountLabel6.text = String(secTotalCount6)
            }

            
        case "secDecrementButton7":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel7.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount7 -= 1
                secCountLabel7.text = String(secTotalCount7)
            }

            
        case "secDecrementButton8":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel8.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount8 -= 1
                secCountLabel8.text = String(secTotalCount8)
            }

            
        case "secDecrementButton9":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel9.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount9 -= 1
                secCountLabel9.text = String(secTotalCount9)
            }

            
        case "secDecrementButton10":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel10.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount10 -= 1
                secCountLabel10.text = String(secTotalCount10)
            }

            
        case "secDecrementButton11":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel11.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount11 -= 1
                secCountLabel11.text = String(secTotalCount11)
            }

            
        case "secDecrementButton12":
            
            // if the respective count behavior label has not been edited
            if secCountBehaviorLabel12.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                secTotalCount12 -= 1
                secCountLabel12.text = String(secTotalCount12)
            }

            
        default:
            print("Error in Decrement Button Func")
        }
    }
    
    
    // MARK: Long Press Edit Action Functions
    
    // On long pressing the edit timer label butons, will switch the timer label to match the 'secondaryEditLabelTextField'
    
    func longPressEditTimer1(_ sender: UILongPressGestureRecognizer) {
        
        secTimedBehaviorLabel1.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer2(_ sender: UILongPressGestureRecognizer) {

        secTimedBehaviorLabel2.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer3(_ sender: UILongPressGestureRecognizer) {

        secTimedBehaviorLabel3.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer4(_ sender: UILongPressGestureRecognizer) {

        secTimedBehaviorLabel4.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer5(_ sender: UILongPressGestureRecognizer) {
        secTimedBehaviorLabel5.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer6(_ sender: UILongPressGestureRecognizer) {

        secTimedBehaviorLabel6.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer7(_ sender: UILongPressGestureRecognizer) {

        secTimedBehaviorLabel7.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer8(_ sender: UILongPressGestureRecognizer) {

        secTimedBehaviorLabel8.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer9(_ sender: UILongPressGestureRecognizer) {

        secTimedBehaviorLabel9.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer10(_ sender: UILongPressGestureRecognizer) {

        secTimedBehaviorLabel10.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer11(_ sender: UILongPressGestureRecognizer) {

        secTimedBehaviorLabel11.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditTimer12(_ sender: UILongPressGestureRecognizer) {

        secTimedBehaviorLabel12.text = secondaryEditLabelTextField.text
    }
    
    
    // On long pressing the edit counter label butons, will switch the counter label to match the 'secondaryEditLabelTextField'
    
    func longPressEditCounter1(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel1.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter2(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel2.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter3(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel3.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter4(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel4.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter5(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel5.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter6(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel6.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter7(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel7.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter8(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel8.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter9(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel9.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter10(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel10.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter11(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel11.text = secondaryEditLabelTextField.text
    }
    
    func longPressEditCounter12(_ sender: UILongPressGestureRecognizer) {

        secCountBehaviorLabel12.text = secondaryEditLabelTextField.text
    }
    
    
    // Save all timed and counted behavior labels to user defaults (i.e. locally on the device) in key/value pairs
    
    @IBAction func saveSecTimerLabelsToUserDefaults(_ sender: UIButton)
    {
        
        UserDefaults.standard.set(secTimedBehaviorLabel1.text, forKey:  "secondaryTimedBehaviorLabel1")
        UserDefaults.standard.set(secTimedBehaviorLabel2.text, forKey:  "secondaryTimedBehaviorLabel2")
        UserDefaults.standard.set(secTimedBehaviorLabel3.text, forKey:  "secondaryTimedBehaviorLabel3")
        UserDefaults.standard.set(secTimedBehaviorLabel4.text, forKey:  "secondaryTimedBehaviorLabel4")
        UserDefaults.standard.set(secTimedBehaviorLabel5.text, forKey:  "secondaryTimedBehaviorLabel5")
        UserDefaults.standard.set(secTimedBehaviorLabel6.text, forKey:  "secondaryTimedBehaviorLabel6")
        UserDefaults.standard.set(secTimedBehaviorLabel7.text, forKey:  "secondaryTimedBehaviorLabel7")
        UserDefaults.standard.set(secTimedBehaviorLabel8.text, forKey:  "secondaryTimedBehaviorLabel8")
        UserDefaults.standard.set(secTimedBehaviorLabel9.text, forKey:  "secondaryTimedBehaviorLabel9")
        UserDefaults.standard.set(secTimedBehaviorLabel10.text, forKey: "secondaryTimedBehaviorLabel10")
        UserDefaults.standard.set(secTimedBehaviorLabel11.text, forKey: "secondaryTimedBehaviorLabel11")
        UserDefaults.standard.set(secTimedBehaviorLabel12.text, forKey: "secondaryTimedBehaviorLabel12")
        UserDefaults.standard.set(secCountBehaviorLabel1.text, forKey:  "secondaryCountBehaviorLabel1")
        UserDefaults.standard.set(secCountBehaviorLabel2.text, forKey:  "secondaryCountBehaviorLabel2")
        UserDefaults.standard.set(secCountBehaviorLabel3.text, forKey:  "secondaryCountBehaviorLabel3")
        UserDefaults.standard.set(secCountBehaviorLabel4.text, forKey:  "secondaryCountBehaviorLabel4")
        UserDefaults.standard.set(secCountBehaviorLabel5.text, forKey:  "secondaryCountBehaviorLabel5")
        UserDefaults.standard.set(secCountBehaviorLabel6.text, forKey:  "secondaryCountBehaviorLabel6")
        UserDefaults.standard.set(secCountBehaviorLabel7.text, forKey:  "secondaryCountBehaviorLabel7")
        UserDefaults.standard.set(secCountBehaviorLabel8.text, forKey:  "secondaryCountBehaviorLabel8")
        UserDefaults.standard.set(secCountBehaviorLabel9.text, forKey:  "secondaryCountBehaviorLabel9")
        UserDefaults.standard.set(secCountBehaviorLabel10.text, forKey: "secondaryCountBehaviorLabel10")
        UserDefaults.standard.set(secCountBehaviorLabel11.text, forKey: "secondaryCountBehaviorLabel11")
        UserDefaults.standard.set(secCountBehaviorLabel12.text, forKey: "secondaryCountBehaviorLabel12")
    }

    
    
    // Allow user to reset labels to their default values
    @IBAction func resetUserDefaults(_ sender: UIButton)
    {
        
        // remove all key/value pairs from user defaults
        let appDomain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
        
        
        // Invalidate All Timers
        
        timer1.invalidate()
        timer2.invalidate()
        timer3.invalidate()
        timer4.invalidate()
        timer5.invalidate()
        timer6.invalidate()
        timer7.invalidate()
        timer8.invalidate()
        timer9.invalidate()
        timer10.invalidate()
        timer11.invalidate()
        timer12.invalidate()
        
        // Reset All Label Values
        
        secTimedBehaviorLabel1.text  = "Edit..."
        secTimedBehaviorLabel2.text  = "Edit..."
        secTimedBehaviorLabel3.text  = "Edit..."
        secTimedBehaviorLabel4.text  = "Edit..."
        secTimedBehaviorLabel5.text  = "Edit..."
        secTimedBehaviorLabel6.text  = "Edit..."
        secTimedBehaviorLabel7.text  = "Edit..."
        secTimedBehaviorLabel8.text  = "Edit..."
        secTimedBehaviorLabel9.text  = "Edit..."
        secTimedBehaviorLabel10.text = "Edit..."
        secTimedBehaviorLabel11.text = "Edit..."
        secTimedBehaviorLabel12.text = "Edit..."
        
        secCountBehaviorLabel1.text   = "Edit..."
        secCountBehaviorLabel2.text   = "Edit..."
        secCountBehaviorLabel3.text   = "Edit..."
        secCountBehaviorLabel4.text   = "Edit..."
        secCountBehaviorLabel5.text   = "Edit..."
        secCountBehaviorLabel6.text   = "Edit..."
        secCountBehaviorLabel7.text   = "Edit..."
        secCountBehaviorLabel8.text   = "Edit..."
        secCountBehaviorLabel9.text   = "Edit..."
        secCountBehaviorLabel10.text  = "Edit..."
        secCountBehaviorLabel11.text  = "Edit..."
        secCountBehaviorLabel12.text  = "Edit..."
        
        
        
        // Reset All Timer/Counter Values
        
        secTimerLabel1.text  = "00:00:00"
        secTotalTime1  = 0
        secTimerLabel2.text  = "00:00:00"
        secTotalTime2  = 0
        secTimerLabel3.text  = "00:00:00"
        secTotalTime3  = 0
        secTimerLabel4.text  = "00:00:00"
        secTotalTime4  = 0
        secTimerLabel5.text  = "00:00:00"
        secTotalTime5  = 0
        secTimerLabel6.text  = "00:00:00"
        secTotalTime6  = 0
        secTimerLabel7.text  = "00:00:00"
        secTotalTime7  = 0
        secTimerLabel8.text  = "00:00:00"
        secTotalTime8  = 0
        secTimerLabel9.text  = "00:00:00"
        secTotalTime9  = 0
        secTimerLabel10.text = "00:00:00"
        secTotalTime10 = 0
        secTimerLabel11.text = "00:00:00"
        secTotalTime11 = 0
        secTimerLabel12.text = "00:00:00"
        secTotalTime12 = 0
        
        secCountLabel1.text  = "0"
        secTotalCount1  = 0
        secCountLabel2.text  = "0"
        secTotalCount2  = 0
        secCountLabel3.text  = "0"
        secTotalCount3  = 0
        secCountLabel4.text  = "0"
        secTotalCount4  = 0
        secCountLabel5.text  = "0"
        secTotalCount5  = 0
        secCountLabel6.text  = "0"
        secTotalCount6  = 0
        secCountLabel7.text  = "0"
        secTotalCount7  = 0
        secCountLabel8.text  = "0"
        secTotalCount8  = 0
        secCountLabel9.text  = "0"
        secTotalCount9  = 0
        secCountLabel10.text = "0"
        secTotalCount10 = 0
        secCountLabel11.text = "0"
        secTotalCount11 = 0
        secCountLabel12.text = "0"
        secTotalCount12 = 0
    }
    
    
    
    // MARK: Helper Functions
    
    
    // Convert integer seconds to HH:MM:SS
    func convertToTimestamp (time : Int) -> (String)
    {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    
    // Enable All Timers in Section 1
    func enableGroupOneTimers ()
    {
        secondaryTimerButton1.isEnabled = true
        secondaryTimerButton2.isEnabled = true
        secondaryTimerButton3.isEnabled = true
        secondaryTimerButton4.isEnabled = true
    }
    
    // Enable All Timers in Section 2
    func enableGroupTwoTimers ()
    {
        secondaryTimerButton5.isEnabled = true
        secondaryTimerButton6.isEnabled = true
        secondaryTimerButton7.isEnabled = true
        secondaryTimerButton8.isEnabled = true
    }
    
    // Enable All Timers in Section 3
    func enableGroupThreeTimers ()
    {
        secondaryTimerButton9.isEnabled = true
        secondaryTimerButton10.isEnabled = true
        secondaryTimerButton11.isEnabled = true
        secondaryTimerButton12.isEnabled = true
    }
    
    
    // Invalidate All Timers in Section 1
    
    func invalidateGroupOneTimers ()
    {
        timer1.invalidate()
        timer2.invalidate()
        timer3.invalidate()
        timer4.invalidate()
    }
    
    
    // Invalidate All Timers in Section 2
    
    func invalidateGroupTwoTimers ()
    {
        timer5.invalidate()
        timer6.invalidate()
        timer7.invalidate()
        timer8.invalidate()

    }
    
    // Invalidate All Timers in Section 3
    
    func invalidateGroupThreeTimers ()
    {
        timer9.invalidate()
        timer10.invalidate()
        timer11.invalidate()
        timer12.invalidate()

    }
    
    // Standard iOS function - invoked when all elements of the view have successfully loaded
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Timer Tap Gestures
        let secTapGestureTimer1  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer1(_:)))
        let secTapGestureTimer2  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer2(_:)))
        let secTapGestureTimer3  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer3(_:)))
        let secTapGestureTimer4  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer4(_:)))
        let secTapGestureTimer5  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer5(_:)))
        let secTapGestureTimer6  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer6(_:)))
        let secTapGestureTimer7  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer7(_:)))
        let secTapGestureTimer8  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer8(_:)))
        let secTapGestureTimer9  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer9(_:)))
        let secTapGestureTimer10 = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer10(_:)))
        let secTapGestureTimer11 = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer11(_:)))
        let secTapGestureTimer12 = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.startTimer12(_:)))
        
        
        // Timer Long Press Gestures
        let secLongPressGestureTimer1  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer1(_:)))
        let secLongPressGestureTimer2  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer2(_:)))
        let secLongPressGestureTimer3  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer3(_:)))
        let secLongPressGestureTimer4  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer4(_:)))
        let secLongPressGestureTimer5  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer5(_:)))
        let secLongPressGestureTimer6  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer6(_:)))
        let secLongPressGestureTimer7  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer7(_:)))
        let secLongPressGestureTimer8  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer8(_:)))
        let secLongPressGestureTimer9  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer9(_:)))
        let secLongPressGestureTimer10 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer10(_:)))
        let secLongPressGestureTimer11 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer11(_:)))
        let secLongPressGestureTimer12 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditTimer12(_:)))

        
        // Counter Tap Gestures
        let secTapGestureCounter1  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount1(_:)))
        let secTapGestureCounter2  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount2(_:)))
        let secTapGestureCounter3  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount3(_:)))
        let secTapGestureCounter4  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount4(_:)))
        let secTapGestureCounter5  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount5(_:)))
        let secTapGestureCounter6  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount6(_:)))
        let secTapGestureCounter7  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount7(_:)))
        let secTapGestureCounter8  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount8(_:)))
        let secTapGestureCounter9  = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount9(_:)))
        let secTapGestureCounter10 = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount10(_:)))
        let secTapGestureCounter11 = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount11(_:)))
        let secTapGestureCounter12 = UITapGestureRecognizer(target: self, action: #selector(SecondaryTimerView.incrementCount12(_:)))

        
        
        // Counter Long Press Gestures
        let secLongPressGestureCounter1  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter1(_:)))
        let secLongPressGestureCounter2  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter2(_:)))
        let secLongPressGestureCounter3  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter3(_:)))
        let secLongPressGestureCounter4  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter4(_:)))
        let secLongPressGestureCounter5  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter5(_:)))
        let secLongPressGestureCounter6  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter6(_:)))
        let secLongPressGestureCounter7  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter7(_:)))
        let secLongPressGestureCounter8  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter8(_:)))
        let secLongPressGestureCounter9  = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter9(_:)))
        let secLongPressGestureCounter10 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter10(_:)))
        let secLongPressGestureCounter11 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter11(_:)))
        let secLongPressGestureCounter12 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryTimerView.longPressEditCounter12(_:)))


        // add tap gestures to timer buttons
        self.secondaryTimerButton1.addGestureRecognizer(secTapGestureTimer1)
        self.secondaryTimerButton2.addGestureRecognizer(secTapGestureTimer2)
        self.secondaryTimerButton3.addGestureRecognizer(secTapGestureTimer3)
        self.secondaryTimerButton4.addGestureRecognizer(secTapGestureTimer4)
        self.secondaryTimerButton5.addGestureRecognizer(secTapGestureTimer5)
        self.secondaryTimerButton6.addGestureRecognizer(secTapGestureTimer6)
        self.secondaryTimerButton7.addGestureRecognizer(secTapGestureTimer7)
        self.secondaryTimerButton8.addGestureRecognizer(secTapGestureTimer8)
        self.secondaryTimerButton9.addGestureRecognizer(secTapGestureTimer9)
        self.secondaryTimerButton10.addGestureRecognizer(secTapGestureTimer10)
        self.secondaryTimerButton11.addGestureRecognizer(secTapGestureTimer11)
        self.secondaryTimerButton12.addGestureRecognizer(secTapGestureTimer12)

        // add long press gestures to timer buttons
        self.secondaryTimerButton1.addGestureRecognizer(secLongPressGestureTimer1)
        self.secondaryTimerButton2.addGestureRecognizer(secLongPressGestureTimer2)
        self.secondaryTimerButton3.addGestureRecognizer(secLongPressGestureTimer3)
        self.secondaryTimerButton4.addGestureRecognizer(secLongPressGestureTimer4)
        self.secondaryTimerButton5.addGestureRecognizer(secLongPressGestureTimer5)
        self.secondaryTimerButton6.addGestureRecognizer(secLongPressGestureTimer6)
        self.secondaryTimerButton7.addGestureRecognizer(secLongPressGestureTimer7)
        self.secondaryTimerButton8.addGestureRecognizer(secLongPressGestureTimer8)
        self.secondaryTimerButton9.addGestureRecognizer(secLongPressGestureTimer9)
        self.secondaryTimerButton10.addGestureRecognizer(secLongPressGestureTimer10)
        self.secondaryTimerButton11.addGestureRecognizer(secLongPressGestureTimer11)
        self.secondaryTimerButton12.addGestureRecognizer(secLongPressGestureTimer12)

        // add tap gestures to counter buttons
        self.secondaryCounterButton1.addGestureRecognizer(secTapGestureCounter1)
        self.secondaryCounterButton2.addGestureRecognizer(secTapGestureCounter2)
        self.secondaryCounterButton3.addGestureRecognizer(secTapGestureCounter3)
        self.secondaryCounterButton4.addGestureRecognizer(secTapGestureCounter4)
        self.secondaryCounterButton5.addGestureRecognizer(secTapGestureCounter5)
        self.secondaryCounterButton6.addGestureRecognizer(secTapGestureCounter6)
        self.secondaryCounterButton7.addGestureRecognizer(secTapGestureCounter7)
        self.secondaryCounterButton8.addGestureRecognizer(secTapGestureCounter8)
        self.secondaryCounterButton9.addGestureRecognizer(secTapGestureCounter9)
        self.secondaryCounterButton10.addGestureRecognizer(secTapGestureCounter10)
        self.secondaryCounterButton11.addGestureRecognizer(secTapGestureCounter11)
        self.secondaryCounterButton12.addGestureRecognizer(secTapGestureCounter12)

        // add long press gestures to counter buttons
        self.secondaryCounterButton1.addGestureRecognizer(secLongPressGestureCounter1)
        self.secondaryCounterButton2.addGestureRecognizer(secLongPressGestureCounter2)
        self.secondaryCounterButton3.addGestureRecognizer(secLongPressGestureCounter3)
        self.secondaryCounterButton4.addGestureRecognizer(secLongPressGestureCounter4)
        self.secondaryCounterButton5.addGestureRecognizer(secLongPressGestureCounter5)
        self.secondaryCounterButton6.addGestureRecognizer(secLongPressGestureCounter6)
        self.secondaryCounterButton7.addGestureRecognizer(secLongPressGestureCounter7)
        self.secondaryCounterButton8.addGestureRecognizer(secLongPressGestureCounter8)
        self.secondaryCounterButton9.addGestureRecognizer(secLongPressGestureCounter9)
        self.secondaryCounterButton10.addGestureRecognizer(secLongPressGestureCounter10)
        self.secondaryCounterButton11.addGestureRecognizer(secLongPressGestureCounter11)
        self.secondaryCounterButton12.addGestureRecognizer(secLongPressGestureCounter12)
    }
    
    // Standard iOS function - invoked when all elements of the view have successfully loaded
    
    override func viewDidAppear(_ animated: Bool)
    {
        
        // If the stated key exists in User Defaults, set each respective label to the stored value
        
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel1") as? String
        {
            secTimedBehaviorLabel1.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel2") as? String
        {
            secTimedBehaviorLabel2.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel3") as? String
        {
            secTimedBehaviorLabel3.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel4") as? String
        {
            secTimedBehaviorLabel4.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel5") as? String
        {
            secTimedBehaviorLabel5.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel6") as? String
        {
            secTimedBehaviorLabel6.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel7") as? String
        {
            secTimedBehaviorLabel7.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel8") as? String
        {
            secTimedBehaviorLabel8.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel9") as? String
        {
            secTimedBehaviorLabel9.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel10") as? String
        {
            secTimedBehaviorLabel10.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel11") as? String
        {
            secTimedBehaviorLabel11.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryTimedBehaviorLabel12") as? String
        {
            secTimedBehaviorLabel12.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel1") as? String
        {
            secCountBehaviorLabel1.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel2") as? String
        {
            secCountBehaviorLabel2.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel3") as? String
        {
            secCountBehaviorLabel3.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel4") as? String
        {
            secCountBehaviorLabel4.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel5") as? String
        {
            secCountBehaviorLabel5.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel6") as? String
        {
            secCountBehaviorLabel6.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel7") as? String
        {
            secCountBehaviorLabel7.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel8") as? String
        {
            secCountBehaviorLabel8.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel9") as? String
        {
            secCountBehaviorLabel9.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel10") as? String
        {
            secCountBehaviorLabel10.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel11") as? String
        {
            secCountBehaviorLabel11.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secondaryCountBehaviorLabel12") as? String
        {
            secCountBehaviorLabel12.text = val
        }
    }
    
    // Standard iOS function - invoked when the view is dismissed/switched
    
    override func viewWillDisappear(_ animated: Bool) {
        
        // save the current state of the timed behavior labels globally
        secTimeBehaviorLabel1String = secTimedBehaviorLabel1.text!
        secTimeBehaviorLabel2String = secTimedBehaviorLabel2.text!
        secTimeBehaviorLabel3String = secTimedBehaviorLabel3.text!
        secTimeBehaviorLabel4String = secTimedBehaviorLabel4.text!
        secTimeBehaviorLabel5String = secTimedBehaviorLabel5.text!
        secTimeBehaviorLabel6String = secTimedBehaviorLabel6.text!
        secTimeBehaviorLabel7String = secTimedBehaviorLabel7.text!
        secTimeBehaviorLabel8String = secTimedBehaviorLabel8.text!
        secTimeBehaviorLabel9String = secTimedBehaviorLabel9.text!
        secTimeBehaviorLabel10String = secTimedBehaviorLabel10.text!
        secTimeBehaviorLabel11String = secTimedBehaviorLabel11.text!
        secTimeBehaviorLabel12String = secTimedBehaviorLabel12.text!
        
        // save the current state of the counted behavior labels globally
        secCountBehaviorLabel1String = secCountBehaviorLabel1.text!
        secCountBehaviorLabel2String = secCountBehaviorLabel2.text!
        secCountBehaviorLabel3String = secCountBehaviorLabel3.text!
        secCountBehaviorLabel4String = secCountBehaviorLabel4.text!
        secCountBehaviorLabel5String = secCountBehaviorLabel5.text!
        secCountBehaviorLabel6String = secCountBehaviorLabel6.text!
        secCountBehaviorLabel7String = secCountBehaviorLabel7.text!
        secCountBehaviorLabel8String = secCountBehaviorLabel8.text!
        secCountBehaviorLabel9String = secCountBehaviorLabel9.text!
        secCountBehaviorLabel10String = secCountBehaviorLabel10.text!
        secCountBehaviorLabel11String = secCountBehaviorLabel11.text!
        secCountBehaviorLabel12String = secCountBehaviorLabel12.text!
        
        // save the current state of the total times globally
        secTotalTime1String = convertToTimestamp(time: secTotalTime1)
        secTotalTime2String = convertToTimestamp(time: secTotalTime2)
        secTotalTime3String = convertToTimestamp(time: secTotalTime3)
        secTotalTime4String = convertToTimestamp(time: secTotalTime4)
        secTotalTime5String = convertToTimestamp(time: secTotalTime5)
        secTotalTime6String = convertToTimestamp(time: secTotalTime6)
        secTotalTime7String = convertToTimestamp(time: secTotalTime7)
        secTotalTime8String = convertToTimestamp(time: secTotalTime8)
        secTotalTime9String = convertToTimestamp(time: secTotalTime9)
        secTotalTime10String = convertToTimestamp(time: secTotalTime10)
        secTotalTime11String = convertToTimestamp(time: secTotalTime11)
        secTotalTime12String = convertToTimestamp(time: secTotalTime12)

        // save the current state of the total counts globally
        secTotalCount1String = String(secTotalCount1)
        secTotalCount2String = String(secTotalCount2)
        secTotalCount3String = String(secTotalCount3)
        secTotalCount4String = String(secTotalCount4)
        secTotalCount5String = String(secTotalCount5)
        secTotalCount6String = String(secTotalCount6)
        secTotalCount7String = String(secTotalCount7)
        secTotalCount8String = String(secTotalCount8)
        secTotalCount9String = String(secTotalCount9)
        secTotalCount10String = String(secTotalCount10)
        secTotalCount11String = String(secTotalCount11)
        secTotalCount12String = String(secTotalCount12)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
