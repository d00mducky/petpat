//
//  MainTimerView.swift
//  PETPAT
//
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit

// MARK: Global Variables


// holds the total time for each timer object globally
var totalTime1   = 0,
    totalTime2   = 0,
    totalTime3   = 0,
    totalTime4   = 0,
    totalTime5   = 0,
    totalTime6   = 0,
    totalTime7   = 0,
    totalTime8   = 0,
    totalTime9   = 0,
    totalTime10  = 0,
    totalTime11  = 0,
    totalTime12  = 0,
    totalTime13  = 0,
    totalTime14  = 0,
    totalTime15  = 0,
    totalTimeGroup1 = 0.0,
    totalTimeGroup2 = 0.0,
    timePercentage1 = 0.0,
    timePercentage2 = 0.0,
    timePercentage3 = 0.0,
    timePercentage4 = 0.0,
    timePercentage5 = 0.0,
    timePercentage6 = 0.0,
    timePercentage7 = 0.0,
    timePercentage8 = 0.0,
    timePercentage9 = 0.0,
    timePercentage10 = 0.0,
    timePercentage11 = 0.0,
    timePercentage12 = 0.0,
    timePercentage13 = 0.0,
    timePercentage14 = 0.0,
    timePercentage15 = 0.0


var totalTime1String  = convertToTimestamp(time: totalTime1),
    totalTime2String  = convertToTimestamp(time: totalTime2),
    totalTime3String  = convertToTimestamp(time: totalTime3),
    totalTime4String  = convertToTimestamp(time: totalTime4),
    totalTime5String  = convertToTimestamp(time: totalTime5),
    totalTime6String  = convertToTimestamp(time: totalTime6),
    totalTime7String  = convertToTimestamp(time: totalTime7),
    totalTime8String  = convertToTimestamp(time: totalTime8),
    totalTime9String  = convertToTimestamp(time: totalTime9),
    totalTime10String = convertToTimestamp(time: totalTime10),
    totalTime11String = convertToTimestamp(time: totalTime11),
    totalTime12String = convertToTimestamp(time: totalTime12),
    totalTime13String = convertToTimestamp(time: totalTime13),
    totalTime14String = convertToTimestamp(time: totalTime14),
    totalTime15String = convertToTimestamp(time: totalTime15)


// holds the total count for each counter object globally

var totalCount1  = 0,
    totalCount2  = 0,
    totalCount3  = 0,
    totalCount4  = 0,
    totalCount5  = 0,
    totalCount6  = 0,
    totalCount7  = 0,
    totalCount8  = 0,
    totalCount9  = 0,
    totalCount10 = 0

var totalCount1String  = String(totalCount1),
    totalCount2String  = String(totalCount2),
    totalCount3String  = String(totalCount3),
    totalCount4String  = String(totalCount4),
    totalCount5String  = String(totalCount5),
    totalCount6String  = String(totalCount6),
    totalCount7String  = String(totalCount7),
    totalCount8String  = String(totalCount8),
    totalCount9String  = String(totalCount9),
    totalCount10String = String(totalCount10)


// holds label values globally

var timeBehaviorLabel1String = "",
    timeBehaviorLabel2String = "",
    timeBehaviorLabel3String = "",
    timeBehaviorLabel4String = "",
    timeBehaviorLabel5String = "",
    timeBehaviorLabel6String = "",
    timeBehaviorLabel7String = "",
    timeBehaviorLabel8String = "",
    timeBehaviorLabel9String = "",
    timeBehaviorLabel10String = "",
    timeBehaviorLabel11String = "",
    timeBehaviorLabel12String = "",
    timeBehaviorLabel13String = "",
    timeBehaviorLabel14String = "",
    timeBehaviorLabel15String = ""

var countBehaviorLabel1String = "",
    countBehaviorLabel2String = "",
    countBehaviorLabel3String = "",
    countBehaviorLabel4String = "",
    countBehaviorLabel5String = "",
    countBehaviorLabel6String = "",
    countBehaviorLabel7String = "",
    countBehaviorLabel8String = "",
    countBehaviorLabel9String = "",
    countBehaviorLabel10String = ""


// Convert integer seconds to HH:MM:SS - globally available function
func convertToTimestamp (time : Int) -> (String)
{
    let hours = Int(time) / 3600
    let minutes = Int(time) / 60 % 60
    let seconds = Int(time) % 60
    return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
}

func determineTotalTimePercentages ()
{
    totalTimeGroup1 += Double(totalTime1)
    totalTimeGroup1 += Double(totalTime2)
    totalTimeGroup1 += Double(totalTime3)
    totalTimeGroup1 += Double(totalTime4)
    totalTimeGroup1 += Double(totalTime5)
    totalTimeGroup1 += Double(totalTime6)
    totalTimeGroup1 += Double(totalTime7)
    totalTimeGroup1 += Double(totalTime8)
    totalTimeGroup1 += Double(totalTime9)
    
    totalTimeGroup2 += Double(totalTime10)
    totalTimeGroup2 += Double(totalTime11)
    totalTimeGroup2 += Double(totalTime12)
    totalTimeGroup2 += Double(totalTime13)
    totalTimeGroup2 += Double(totalTime14)
    totalTimeGroup2 += Double(totalTime15)
    
    if totalTimeGroup1 != 0 {
        print("getting here1")
    let tp1 = Double(totalTime1) / totalTimeGroup1
    let tp2 = Double(totalTime2) / totalTimeGroup1
    let tp3 = Double(totalTime3) / totalTimeGroup1
    let tp4 = Double(totalTime4) / totalTimeGroup1
    let tp5 = Double(totalTime5) / totalTimeGroup1
    let tp6 = Double(totalTime6) / totalTimeGroup1
    let tp7 = Double(totalTime7) / totalTimeGroup1
    let tp8 = Double(totalTime8) / totalTimeGroup1
    let tp9 = Double(totalTime9) / totalTimeGroup1
        
    timePercentage1 = round(tp1*1000)/1000
    timePercentage2 = round(tp2*1000)/1000
    timePercentage3 = round(tp3*1000)/1000
    timePercentage4 = round(tp4*1000)/1000
    timePercentage5 = round(tp5*1000)/1000
    timePercentage6 = round(tp6*1000)/1000
    timePercentage7 = round(tp7*1000)/1000
    timePercentage8 = round(tp8*1000)/1000
    timePercentage9 = round(tp9*1000)/1000

    }
    
    if totalTimeGroup2 != 0 {
        print("getting here2")
        
    let tp10 = Double(totalTime10) / totalTimeGroup2
    let tp11 = Double(totalTime11) / totalTimeGroup2
    let tp12 = Double(totalTime12) / totalTimeGroup2
    let tp13 = Double(totalTime13) / totalTimeGroup2
    let tp14 = Double(totalTime14) / totalTimeGroup2
    let tp15 = Double(totalTime15) / totalTimeGroup2
        
    timePercentage10 = round(tp10*1000)/1000
    timePercentage11 = round(tp11*1000)/1000
    timePercentage12 = round(tp12*1000)/1000
    timePercentage13 = round(tp13*1000)/1000
    timePercentage14 = round(tp14*1000)/1000
    timePercentage15 = round(tp15*1000)/1000

    }
}

class MainTimerView: UIViewController {

    
    // Outlet: text field for editing respective label names
    @IBOutlet weak var mainEditLabelTextField: UITextField!

    
    
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
        timer12 = Timer(),
        timer13 = Timer(),
        timer14 = Timer(),
        timer15 = Timer()
    
    
    
    // Label Placeholders for Switch Cases
    var timerButtonLabels = "",
    stopButtonLabels  = "",
    incrementButtonLabels = "",
    decrementButtonLabels = ""
    
    
    
    // Outlet: timer buttons
    @IBOutlet weak var mainTimerButton1: UIButton!
    @IBOutlet weak var mainTimerButton2: UIButton!
    @IBOutlet weak var mainTimerButton3: UIButton!
    @IBOutlet weak var mainTimerButton4: UIButton!
    @IBOutlet weak var mainTimerButton5: UIButton!
    @IBOutlet weak var mainTimerButton6: UIButton!
    @IBOutlet weak var mainTimerButton7: UIButton!
    @IBOutlet weak var mainTimerButton8: UIButton!
    @IBOutlet weak var mainTimerButton9: UIButton!
    @IBOutlet weak var mainTimerButton10: UIButton!
    @IBOutlet weak var mainTimerButton11: UIButton!
    @IBOutlet weak var mainTimerButton12: UIButton!
    @IBOutlet weak var mainTimerButton13: UIButton!
    @IBOutlet weak var mainTimerButton14: UIButton!
    @IBOutlet weak var mainTimerButton15: UIButton!
   
    
    // Outlet: counter buttons
    @IBOutlet weak var mainCounterButton1: UIButton!
    @IBOutlet weak var mainCounterButton2: UIButton!
    @IBOutlet weak var mainCounterButton3: UIButton!
    @IBOutlet weak var mainCounterButton4: UIButton!
    @IBOutlet weak var mainCounterButton5: UIButton!
    @IBOutlet weak var mainCounterButton6: UIButton!
    @IBOutlet weak var mainCounterButton7: UIButton!
    @IBOutlet weak var mainCounterButton8: UIButton!
    @IBOutlet weak var mainCounterButton9: UIButton!
    @IBOutlet weak var mainCounterButton10: UIButton!
    
    
    
    // Outlet: timer behavior labels (e.g. Instruction)
    @IBOutlet weak var timeBehaviorLabel1: UILabel!
    @IBOutlet weak var timeBehaviorLabel2: UILabel!
    @IBOutlet weak var timeBehaviorLabel3: UILabel!
    @IBOutlet weak var timeBehaviorLabel4: UILabel!
    @IBOutlet weak var timeBehaviorLabel5: UILabel!
    @IBOutlet weak var timeBehaviorLabel6: UILabel!
    @IBOutlet weak var timeBehaviorLabel7: UILabel!
    @IBOutlet weak var timeBehaviorLabel8: UILabel!
    @IBOutlet weak var timeBehaviorLabel9: UILabel!
    @IBOutlet weak var timeBehaviorLabel10: UILabel!
    @IBOutlet weak var timeBehaviorLabel11: UILabel!
    @IBOutlet weak var timeBehaviorLabel12: UILabel!
    @IBOutlet weak var timeBehaviorLabel13: UILabel!
    @IBOutlet weak var timeBehaviorLabel14: UILabel!
    @IBOutlet weak var timeBehaviorLabel15: UILabel!
    
    
    // Outlet: counter behavior labels (e.g.
    @IBOutlet weak var countBehaviorLabel1: UILabel!
    @IBOutlet weak var countBehaviorLabel2: UILabel!
    @IBOutlet weak var countBehaviorLabel3: UILabel!
    @IBOutlet weak var countBehaviorLabel4: UILabel!
    @IBOutlet weak var countBehaviorLabel5: UILabel!
    @IBOutlet weak var countBehaviorLabel6: UILabel!
    @IBOutlet weak var countBehaviorLabel7: UILabel!
    @IBOutlet weak var countBehaviorLabel8: UILabel!
    @IBOutlet weak var countBehaviorLabel9: UILabel!
    @IBOutlet weak var countBehaviorLabel10: UILabel!

    
    
    // Outlet: time counted labels (e.g. 00:00:05)
    @IBOutlet weak var timerLabel1: UILabel!
    @IBOutlet weak var timerLabel2: UILabel!
    @IBOutlet weak var timerLabel3: UILabel!
    @IBOutlet weak var timerLabel4: UILabel!
    @IBOutlet weak var timerLabel5: UILabel!
    @IBOutlet weak var timerLabel6: UILabel!
    @IBOutlet weak var timerLabel7: UILabel!
    @IBOutlet weak var timerLabel8: UILabel!
    @IBOutlet weak var timerLabel9: UILabel!
    @IBOutlet weak var timerLabel10: UILabel!
    @IBOutlet weak var timerLabel11: UILabel!
    @IBOutlet weak var timerLabel12: UILabel!
    @IBOutlet weak var timerLabel13: UILabel!
    @IBOutlet weak var timerLabel14: UILabel!
    @IBOutlet weak var timerLabel15: UILabel!
    
    
    // Outlet: total count labels (e.g. 24)
    @IBOutlet weak var countLabel1: UILabel!
    @IBOutlet weak var countLabel2: UILabel!
    @IBOutlet weak var countLabel3: UILabel!
    @IBOutlet weak var countLabel4: UILabel!
    @IBOutlet weak var countLabel5: UILabel!
    @IBOutlet weak var countLabel6: UILabel!
    @IBOutlet weak var countLabel7: UILabel!
    @IBOutlet weak var countLabel8: UILabel!
    @IBOutlet weak var countLabel9: UILabel!
    @IBOutlet weak var countLabel10: UILabel!
    
    
    
    
    // MARK: Start Timer functions, initializes each timer object and sets their respective action functions ( e.g. action1() )
    
    
    func startTimer1(_ sender: UITapGestureRecognizer) {
        enableGroupOneTimers()
        mainTimerButton1.isEnabled = false
        invalidateGroupOneTimers()
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action1), userInfo: nil, repeats: true)
    }
    
    func startTimer2(_ sender: UITapGestureRecognizer) {
        enableGroupOneTimers()
        mainTimerButton2.isEnabled = false
        invalidateGroupOneTimers()
        timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action2), userInfo: nil, repeats: true)
    }
    
    func startTimer3(_ sender: UITapGestureRecognizer) {
        enableGroupOneTimers()
        mainTimerButton3.isEnabled = false
        invalidateGroupOneTimers()
        timer3 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action3), userInfo: nil, repeats: true)
    }
    
    func startTimer4(_ sender: UITapGestureRecognizer) {
        enableGroupOneTimers()
        mainTimerButton4.isEnabled = false
        invalidateGroupOneTimers()
        timer4 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action4), userInfo: nil, repeats: true)
    }
    
    func startTimer5(_ sender: UITapGestureRecognizer) {
        enableGroupOneTimers()
        mainTimerButton5.isEnabled = false
        invalidateGroupOneTimers()
        timer5 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action5), userInfo: nil, repeats: true)
    }
    
    func startTimer6(_ sender: UITapGestureRecognizer) {
        enableGroupOneTimers()
        mainTimerButton6.isEnabled = false
        invalidateGroupOneTimers()
        timer6 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action6), userInfo: nil, repeats: true)
    }
    
    func startTimer7(_ sender: UITapGestureRecognizer) {
        enableGroupOneTimers()
        mainTimerButton7.isEnabled = false
        invalidateGroupOneTimers()
        timer7 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action7), userInfo: nil, repeats: true)
    }
    
    func startTimer8(_ sender: UITapGestureRecognizer) {
        enableGroupOneTimers()
        mainTimerButton8.isEnabled = false
        invalidateGroupOneTimers()
        timer8 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action8), userInfo: nil, repeats: true)
    }
    
    func startTimer9(_ sender: UITapGestureRecognizer) {
        enableGroupOneTimers()
        mainTimerButton9.isEnabled = false
        invalidateGroupOneTimers()
        timer9 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action9), userInfo: nil, repeats: true)
    }
    
    func startTimer10(_ sender: UITapGestureRecognizer) {
        enableGroupTwoTimers()
        mainTimerButton10.isEnabled = false
        invalidateGroupTwoTimers()
        timer10 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action10), userInfo: nil, repeats: true)
    }
    
    func startTimer11(_ sender: UITapGestureRecognizer) {
        enableGroupTwoTimers()
        mainTimerButton11.isEnabled = false
        invalidateGroupTwoTimers()
        timer11 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action11), userInfo: nil, repeats: true)
    }
    
    func startTimer12(_ sender: UITapGestureRecognizer) {
        enableGroupTwoTimers()
        mainTimerButton12.isEnabled = false
        invalidateGroupTwoTimers()
        timer12 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action12), userInfo: nil, repeats: true)
    }
    
    func startTimer13(_ sender: UITapGestureRecognizer) {
        enableGroupTwoTimers()
        mainTimerButton13.isEnabled = false
        invalidateGroupTwoTimers()
        timer13 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action13), userInfo: nil, repeats: true)
    }
    
    func startTimer14(_ sender: UITapGestureRecognizer) {
        enableGroupTwoTimers()
        mainTimerButton14.isEnabled = false
        invalidateGroupTwoTimers()
        timer14 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action14), userInfo: nil, repeats: true)
    }
    
    func startTimer15(_ sender: UITapGestureRecognizer) {
        enableGroupTwoTimers()
        mainTimerButton15.isEnabled = false
        invalidateGroupTwoTimers()
        timer15 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainTimerView.action15), userInfo: nil, repeats: true)
    }
    
    
    func createImageScreenshot()
    {
        UIGraphicsBeginImageContext(view.bounds.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        CustomPhotoAlbum.sharedInstance.saveImage(image: image!)
    }
    
    
    // MARK: Stop Timer functions - invalidates each respective timer object ( e.g. timer1.invalidate() ) and enables each timer button
    
    
    @IBAction func stopTimer(_ sender: UIButton)
    {
        // holds the title of the current UIButton sender (e.g. sender.currentTitle = "mainInvalidateButton1")
        stopButtonLabels = sender.currentTitle!
        
        switch stopButtonLabels {
            
        case "mainInvalidateButton1":
            timer1.invalidate()
            mainTimerButton1.isEnabled = true
        case "mainInvalidateButton2":
            timer2.invalidate()
            mainTimerButton2.isEnabled = true
        case "mainInvalidateButton3":
            timer3.invalidate()
            mainTimerButton3.isEnabled = true
        case "mainInvalidateButton4":
            timer4.invalidate()
            mainTimerButton4.isEnabled = true
        case "mainInvalidateButton5":
            timer5.invalidate()
            mainTimerButton5.isEnabled = true
        case "mainInvalidateButton6":
            timer6.invalidate()
            mainTimerButton6.isEnabled = true
        case "mainInvalidateButton7":
            timer7.invalidate()
            mainTimerButton7.isEnabled = true
        case "mainInvalidateButton8":
            timer8.invalidate()
            mainTimerButton8.isEnabled = true
        case "mainInvalidateButton9":
            timer9.invalidate()
            mainTimerButton9.isEnabled = true
        case "mainInvalidateButton10":
            timer10.invalidate()
            mainTimerButton10.isEnabled = true
        case "mainInvalidateButton11":
            timer11.invalidate()
            mainTimerButton11.isEnabled = true
        case "mainInvalidateButton12":
            timer12.invalidate()
            mainTimerButton12.isEnabled = true
        case "mainInvalidateButton13":
            timer13.invalidate()
            mainTimerButton13.isEnabled = true
        case "mainInvalidateButton14":
            timer14.invalidate()
            mainTimerButton14.isEnabled = true
        case "mainInvalidateButton15":
            timer15.invalidate()
            mainTimerButton15.isEnabled = true
            
        default:
            print("Error In Stop Timer Function")
            
            
        }
 
    }
    
    
    // MARK: Timer Action Functions - invoked on initialization of each respective timer object and increments the total time by one second, updates each respective timer label
    
    func action1 ()
    {
        totalTime1 += 1
        timerLabel1.text = convertToTimestamp(time: totalTime1)
    }
    
    func action2 ()
    {
        totalTime2 += 1
        timerLabel2.text = convertToTimestamp(time: totalTime2)
    }
    
    func action3 ()
    {
        totalTime3 += 1
        timerLabel3.text = convertToTimestamp(time: totalTime3)
    }
    
    func action4 ()
    {
        totalTime4 += 1
        timerLabel4.text = convertToTimestamp(time: totalTime4)
    }
    
    func action5 ()
    {
        totalTime5 += 1
        timerLabel5.text = convertToTimestamp(time: totalTime5)
    }
    
    func action6 ()
    {
        totalTime6 += 1
        timerLabel6.text = convertToTimestamp(time: totalTime6)
    }
    
    func action7 ()
    {
        totalTime7 += 1
        timerLabel7.text = convertToTimestamp(time: totalTime7)
    }
    
    func action8 ()
    {
        totalTime8 += 1
        timerLabel8.text = convertToTimestamp(time: totalTime8)
    }
    
    func action9 ()
    {
        totalTime9 += 1
        timerLabel9.text = convertToTimestamp(time: totalTime9)
    }
    
    func action10 ()
    {
        totalTime10 += 1
        timerLabel10.text = convertToTimestamp(time: totalTime10)
    }
    
    func action11 ()
    {
        totalTime11 += 1
        timerLabel11.text = convertToTimestamp(time: totalTime11)
    }
    
    func action12 ()
    {
        totalTime12 += 1
        timerLabel12.text = convertToTimestamp(time: totalTime12)
    }
    
    func action13 ()
    {
        totalTime13 += 1
        timerLabel13.text = convertToTimestamp(time: totalTime13)
    }
    
    func action14 ()
    {
        totalTime14 += 1
        timerLabel14.text = convertToTimestamp(time: totalTime14)
    }
    
    func action15 ()
    {
        totalTime15 += 1
        timerLabel15.text = convertToTimestamp(time: totalTime15)
    }
    
    
    
    
    // MARK: Increment Count Function - increments total count by one per button press, updates the respetive counter labels
    
    
    func incrementCount1(_ sender: UITapGestureRecognizer) {
        totalCount1 += 1
        countLabel1.text = String(totalCount1)
    }
    
    func incrementCount2(_ sender: UITapGestureRecognizer) {
        totalCount2 += 1
        countLabel2.text = String(totalCount2)
    }
    
    func incrementCount3(_ sender: UITapGestureRecognizer) {
        totalCount3 += 1
        countLabel3.text = String(totalCount3)
    }
    
    func incrementCount4(_ sender: UITapGestureRecognizer) {
        totalCount4 += 1
        countLabel4.text = String(totalCount4)
    }
    
    func incrementCount5(_ sender: UITapGestureRecognizer) {
        totalCount5 += 1
        countLabel5.text = String(totalCount5)
    }
    
    func incrementCount6(_ sender: UITapGestureRecognizer) {
        totalCount6 += 1
        countLabel6.text = String(totalCount6)
    }
    
    func incrementCount7(_ sender: UITapGestureRecognizer) {
        totalCount7 += 1
        countLabel7.text = String(totalCount7)
    }
    
    func incrementCount8(_ sender: UITapGestureRecognizer) {
        totalCount8 += 1
        countLabel8.text = String(totalCount8)
    }
    
    func incrementCount9(_ sender: UITapGestureRecognizer) {
        totalCount9 += 1
        countLabel9.text = String(totalCount9)
    }
    
    func incrementCount10(_ sender: UITapGestureRecognizer) {
        
        // if the identified count behavior label has not been edited
        if countBehaviorLabel10.text == "Edit..." {
            //perform no action
            
        } else { // perform normal action
            totalCount10 += 1
            countLabel10.text = String(totalCount10)
        }

    }
    
    
    // MARK: Decrement Count Functions - decrements total count by one per button press, updates respective counter labels
    
    @IBAction func decrementCount(_ sender: UIButton)
    {
        decrementButtonLabels = sender.currentTitle!
        
        switch decrementButtonLabels {
            
        case "decBtn1":
            totalCount1 -= 1
            countLabel1.text = String(totalCount1)
            
        case "decBtn2":
            totalCount2 -= 1
            countLabel2.text = String(totalCount2)
            
        case "decBtn3":
            totalCount3 -= 1
            countLabel3.text = String(totalCount3)
            
        case "decBtn4":
            totalCount4 -= 1
            countLabel4.text = String(totalCount4)
            
        case "decBtn5":
            totalCount5 -= 1
            countLabel5.text = String(totalCount5)
            
        case "decBtn6":
            totalCount6 -= 1
            countLabel6.text = String(totalCount6)
            
        case "decBtn7":
            totalCount7 -= 1
            countLabel7.text = String(totalCount7)
            
        case "decBtn8":
            totalCount8 -= 1
            countLabel8.text = String(totalCount8)
            
        case "decBtn9":
            totalCount9 -= 1
            countLabel9.text = String(totalCount9)
            
        case "decBtn10":
            
            // if the identified count behavior label has not been edited
            if countBehaviorLabel10.text == "Edit..." {
                // perform no action
                
            } else { // perform normal action
                totalCount10 -= 1
                countLabel10.text = String(totalCount10)
            }
            
        default:
            print("Error in Decrement Button Func")
        }
    }
    

    
    // MARK: Long Press Edit Timer Functions - on long pressing each timer button, the label is edited to match
    //       the 'mainEditLabelTextField'
    
    
    
    func longPressEditTimer1(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel1.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer2(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel2.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer3(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel3.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer4(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel4.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer5(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel5.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer6(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel6.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer7(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel7.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer8(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel8.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer9(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel9.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer10(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel10.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer11(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel11.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer12(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel12.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer13(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel13.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer14(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel14.text = mainEditLabelTextField.text
    }
    
    func longPressEditTimer15(_ sender: UILongPressGestureRecognizer)
    {
        timeBehaviorLabel15.text = mainEditLabelTextField.text
    }

    
    
    
    // MARK: Long Press Edit Counter Functions - on long pressing each counter button, the label is edited to match
    //       the 'mainEditLabelTextField'
    
    
    
    func longPressEditCounter1(_ sender: UILongPressGestureRecognizer)
    {
        countBehaviorLabel1.text = mainEditLabelTextField.text
    }
    
    func longPressEditCounter2(_ sender: UILongPressGestureRecognizer)
    {
        countBehaviorLabel2.text = mainEditLabelTextField.text
    }
    
    func longPressEditCounter3(_ sender: UILongPressGestureRecognizer)
    {
        countBehaviorLabel3.text = mainEditLabelTextField.text
    }
    
    func longPressEditCounter4(_ sender: UILongPressGestureRecognizer)
    {
        countBehaviorLabel4.text = mainEditLabelTextField.text
    }
    
    func longPressEditCounter5(_ sender: UILongPressGestureRecognizer)
    {
        countBehaviorLabel5.text = mainEditLabelTextField.text
    }
    
    func longPressEditCounter6(_ sender: UILongPressGestureRecognizer)
    {
        countBehaviorLabel6.text = mainEditLabelTextField.text
    }
    
    func longPressEditCounter7(_ sender: UILongPressGestureRecognizer)
    {
        countBehaviorLabel7.text = mainEditLabelTextField.text
    }
    
    func longPressEditCounter8(_ sender: UILongPressGestureRecognizer)
    {
        countBehaviorLabel8.text = mainEditLabelTextField.text
    }
    
    func longPressEditCounter9(_ sender: UILongPressGestureRecognizer)
    {
        countBehaviorLabel9.text = mainEditLabelTextField.text
    }
    
    func longPressEditCounter10(_ sender: UILongPressGestureRecognizer)
    {
        countBehaviorLabel10.text = mainEditLabelTextField.text
    }
    
    
    // MARK: Save Labels from the 'MainTimerView' to User Defaults - which stores this information locally in key, value pairs
    //       Purpose: When the labels are saved, this device information is available after exiting and re-entering the program
    
    @IBAction func saveMainTimerLabelsToUserDefaults(_ sender: UIButton)
    {
        
        // store labels to user defaults by specified key
        UserDefaults.standard.set(timeBehaviorLabel1.text, forKey:  "mainTimedBehaviorLabel1")
        UserDefaults.standard.set(timeBehaviorLabel2.text, forKey:  "mainTimedBehaviorLabel2")
        UserDefaults.standard.set(timeBehaviorLabel3.text, forKey:  "mainTimedBehaviorLabel3")
        UserDefaults.standard.set(timeBehaviorLabel4.text, forKey:  "mainTimedBehaviorLabel4")
        UserDefaults.standard.set(timeBehaviorLabel5.text, forKey:  "mainTimedBehaviorLabel5")
        UserDefaults.standard.set(timeBehaviorLabel6.text, forKey:  "mainTimedBehaviorLabel6")
        UserDefaults.standard.set(timeBehaviorLabel7.text, forKey:  "mainTimedBehaviorLabel7")
        UserDefaults.standard.set(timeBehaviorLabel8.text, forKey:  "mainTimedBehaviorLabel8")
        UserDefaults.standard.set(timeBehaviorLabel9.text, forKey:  "mainTimedBehaviorLabel9")
        UserDefaults.standard.set(timeBehaviorLabel10.text, forKey: "mainTimedBehaviorLabel10")
        UserDefaults.standard.set(timeBehaviorLabel11.text, forKey: "mainTimedBehaviorLabel11")
        UserDefaults.standard.set(timeBehaviorLabel12.text, forKey: "mainTimedBehaviorLabel12")
        UserDefaults.standard.set(timeBehaviorLabel13.text, forKey:  "mainTimedBehaviorLabel13")
        UserDefaults.standard.set(timeBehaviorLabel14.text, forKey:  "mainTimedBehaviorLabel14")
        UserDefaults.standard.set(timeBehaviorLabel15.text, forKey:  "mainTimedBehaviorLabel15")
        UserDefaults.standard.set(countBehaviorLabel1.text, forKey:  "mainCountBehaviorLabel1")
        UserDefaults.standard.set(countBehaviorLabel2.text, forKey:  "mainCountBehaviorLabel2")
        UserDefaults.standard.set(countBehaviorLabel3.text, forKey:  "mainCountBehaviorLabel3")
        UserDefaults.standard.set(countBehaviorLabel4.text, forKey:  "mainCountBehaviorLabel4")
        UserDefaults.standard.set(countBehaviorLabel5.text, forKey:  "mainCountBehaviorLabel5")
        UserDefaults.standard.set(countBehaviorLabel6.text, forKey:  "mainCountBehaviorLabel6")
        UserDefaults.standard.set(countBehaviorLabel7.text, forKey: "mainCountBehaviorLabel7")
        UserDefaults.standard.set(countBehaviorLabel8.text, forKey: "mainCountBehaviorLabel8")
        UserDefaults.standard.set(countBehaviorLabel9.text, forKey: "mainCountBehaviorLabel9")
        UserDefaults.standard.set(countBehaviorLabel10.text, forKey: "mainCountBehaviorLabel10")
    }
    
    
    // MARK: Reset User Defaults Function - resets all of the saved key, value pairs from User Defaults - restores the default labels
    //       and resets each timer/counter value
    
    @IBAction func resetUserDefaults(_ sender: UIButton)
    {
        // Reset All User Defaults Keys/Values
        let appDomain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
        
        
        // Invalidate all timers
        
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
        timer13.invalidate()
        timer14.invalidate()
        timer15.invalidate()
        
        
        // Reset all labels to default values
        
        timeBehaviorLabel1.text   = "Introduction"
        timeBehaviorLabel2.text   = "Observing Stationary"
        timeBehaviorLabel3.text   = "Observing Moving"
        timeBehaviorLabel4.text   = "Providing Feedback"
        timeBehaviorLabel5.text   = "Managing"
        timeBehaviorLabel6.text   = "Instructing Episode"
        timeBehaviorLabel7.text   = "Non-Related"
        timeBehaviorLabel8.text   = "Off Task Behaviors"
        timeBehaviorLabel9.text   = "Closure"
        timeBehaviorLabel10.text  = "Activity Only"
        timeBehaviorLabel11.text  = "Engaged"
        timeBehaviorLabel12.text  = "Transitioning"
        timeBehaviorLabel13.text  = "Management"
        timeBehaviorLabel14.text  = "Waiting"
        timeBehaviorLabel15.text  = "Instruction"
        
        countBehaviorLabel1.text  = "Specific Feedback"
        countBehaviorLabel2.text  = "General Motivation"
        countBehaviorLabel3.text  = "Managerial Class Redirect"
        countBehaviorLabel4.text  = "Non Back To Wall"
        countBehaviorLabel5.text  = "Desists"
        countBehaviorLabel6.text  = "Used Student Name"
        countBehaviorLabel7.text  = "Negative Comments"
        countBehaviorLabel8.text  = "Demonstrations"
        countBehaviorLabel9.text  = "Started New Task"
        countBehaviorLabel10.text = "Edit..."
        
        
        
        // Reset timers/counters to default values
    
        totalTime1  = 0
        totalTime2  = 0
        totalTime3  = 0
        totalTime4  = 0
        totalTime5  = 0
        totalTime6  = 0
        totalTime7  = 0
        totalTime8  = 0
        totalTime9  = 0
        totalTime10 = 0
        totalTime11 = 0
        totalTime12 = 0
        totalTime13 = 0
        totalTime14 = 0
        totalTime15 = 0
        
        timerLabel1.text  = "00:00:00"
        timerLabel2.text  = "00:00:00"
        timerLabel3.text  = "00:00:00"
        timerLabel4.text  = "00:00:00"
        timerLabel5.text  = "00:00:00"
        timerLabel6.text  = "00:00:00"
        timerLabel7.text  = "00:00:00"
        timerLabel8.text  = "00:00:00"
        timerLabel9.text  = "00:00:00"
        timerLabel10.text = "00:00:00"
        timerLabel11.text = "00:00:00"
        timerLabel12.text = "00:00:00"
        timerLabel13.text = "00:00:00"
        timerLabel14.text = "00:00:00"
        timerLabel15.text = "00:00:00"
        
        totalCount1  = 0
        totalCount2  = 0
        totalCount3  = 0
        totalCount4  = 0
        totalCount5  = 0
        totalCount6  = 0
        totalCount7  = 0
        totalCount8  = 0
        totalCount9  = 0
        totalCount10 = 0
        
        countLabel1.text  = "0"
        countLabel2.text  = "0"
        countLabel3.text  = "0"
        countLabel4.text  = "0"
        countLabel5.text  = "0"
        countLabel6.text  = "0"
        countLabel7.text  = "0"
        countLabel8.text  = "0"
        countLabel9.text  = "0"
        countLabel10.text = "0"
        
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
    
    // Disable All 'Teacher Behaviors' Start Timer Buttons
    func disableGroupOneTimers ()
    {
        mainTimerButton1.isEnabled = false
        mainTimerButton2.isEnabled = false
        mainTimerButton3.isEnabled = false
        mainTimerButton4.isEnabled = false
        mainTimerButton5.isEnabled = false
        mainTimerButton6.isEnabled = false
        mainTimerButton7.isEnabled = false
        mainTimerButton8.isEnabled = false
        mainTimerButton9.isEnabled = false
    }
    
    // Enable All 'Teacher Behaviors' Start Timer Buttons
    func enableGroupOneTimers ()
    {
        mainTimerButton1.isEnabled = true
        mainTimerButton2.isEnabled = true
        mainTimerButton3.isEnabled = true
        mainTimerButton4.isEnabled = true
        mainTimerButton5.isEnabled = true
        mainTimerButton6.isEnabled = true
        mainTimerButton7.isEnabled = true
        mainTimerButton8.isEnabled = true
        mainTimerButton9.isEnabled = true
    }
    
    // Invalidate All 'Teacher Behaviors' Timers
    
    func invalidateGroupOneTimers ()
    {
        timer1.invalidate()
        timer2.invalidate()
        timer3.invalidate()
        timer4.invalidate()
        timer5.invalidate()
        timer6.invalidate()
        timer7.invalidate()
        timer8.invalidate()
        timer9.invalidate()
    }
    
    // Disable All 'Student Learning Behaviors' Start Timer Buttons
    func disableGroupTwoTimers ()
    {
        mainTimerButton10.isEnabled = false
        mainTimerButton11.isEnabled = false
        mainTimerButton12.isEnabled = false
        mainTimerButton13.isEnabled = false
        mainTimerButton14.isEnabled = false
        mainTimerButton15.isEnabled = false
    }
    
    // Enable All 'Student Learning Behaviors' Start Timer Buttons
    func enableGroupTwoTimers ()
    {
        mainTimerButton10.isEnabled = true
        mainTimerButton11.isEnabled = true
        mainTimerButton12.isEnabled = true
        mainTimerButton13.isEnabled = true
        mainTimerButton14.isEnabled = true
        mainTimerButton15.isEnabled = true
    }
    
    // Invalidate All 'Student Learning Behaviors' Timers
    
    func invalidateGroupTwoTimers ()
    {
        timer10.invalidate()
        timer11.invalidate()
        timer12.invalidate()
        timer13.invalidate()
        timer14.invalidate()
        timer15.invalidate()
    }
    
    
    
    // Standard viewDidLoad default function - registers each timer/counter button with tap and long press gesture recognizers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creates tap gesture recognizers for timer buttons - sets respective action functions ( e.g. startTimer1() )
        
        let tapGestureTimer1 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer1(_:)))
        let tapGestureTimer2 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer2(_:)))
        let tapGestureTimer3 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer3(_:)))
        let tapGestureTimer4 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer4(_:)))
        let tapGestureTimer5 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer5(_:)))
        let tapGestureTimer6 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer6(_:)))
        let tapGestureTimer7 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer7(_:)))
        let tapGestureTimer8 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer8(_:)))
        let tapGestureTimer9 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer9(_:)))
        let tapGestureTimer10 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer10(_:)))
        let tapGestureTimer11 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer11(_:)))
        let tapGestureTimer12 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer12(_:)))
        let tapGestureTimer13 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer13(_:)))
        let tapGestureTimer14 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer14(_:)))
        let tapGestureTimer15 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.startTimer15(_:)))
        
        
        // Creates long press gesture recognizers for timer buttons - sets respective action functions ( e.g. longPressEditTimer1() )
        
        let longPressGestureTimer1 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer1(_:)))
        let longPressGestureTimer2 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer2(_:)))
        let longPressGestureTimer3 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer3(_:)))
        let longPressGestureTimer4 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer4(_:)))
        let longPressGestureTimer5 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer5(_:)))
        let longPressGestureTimer6 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer6(_:)))
        let longPressGestureTimer7 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer7(_:)))
        let longPressGestureTimer8 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer8(_:)))
        let longPressGestureTimer9 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer9(_:)))
        let longPressGestureTimer10 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer10(_:)))
        let longPressGestureTimer11 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer11(_:)))
        let longPressGestureTimer12 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer12(_:)))
        let longPressGestureTimer13 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer13(_:)))
        let longPressGestureTimer14 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer14(_:)))
        let longPressGestureTimer15 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditTimer15(_:)))
        
        
        // Creates tap gesture recognizers for counter buttons - sets respective action functions ( e.g. incrementCount1() )
        
        let tapGestureCounter1 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.incrementCount1(_:)))
        let tapGestureCounter2 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.incrementCount2(_:)))
        let tapGestureCounter3 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.incrementCount3(_:)))
        let tapGestureCounter4 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.incrementCount4(_:)))
        let tapGestureCounter5 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.incrementCount5(_:)))
        let tapGestureCounter6 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.incrementCount6(_:)))
        let tapGestureCounter7 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.incrementCount7(_:)))
        let tapGestureCounter8 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.incrementCount8(_:)))
        let tapGestureCounter9 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.incrementCount9(_:)))
        let tapGestureCounter10 = UITapGestureRecognizer(target: self, action: #selector(MainTimerView.incrementCount10(_:)))

        
        // Creates long press gesture recognizers for counter buttons - sets respective action functions ( e.g. longPressEditCounter1() )
        
        let longPressGestureCounter1 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditCounter1(_:)))
        let longPressGestureCounter2 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditCounter2(_:)))
        let longPressGestureCounter3 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditCounter3(_:)))
        let longPressGestureCounter4 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditCounter4(_:)))
        let longPressGestureCounter5 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditCounter5(_:)))
        let longPressGestureCounter6 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditCounter6(_:)))
        let longPressGestureCounter7 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditCounter7(_:)))
        let longPressGestureCounter8 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditCounter8(_:)))
        let longPressGestureCounter9 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditCounter9(_:)))
        let longPressGestureCounter10 = UILongPressGestureRecognizer(target: self, action: #selector(MainTimerView.longPressEditCounter10(_:)))
        
        
        
        // Add tap gestures to timer buttons
        self.mainTimerButton1.addGestureRecognizer(tapGestureTimer1)
        self.mainTimerButton2.addGestureRecognizer(tapGestureTimer2)
        self.mainTimerButton3.addGestureRecognizer(tapGestureTimer3)
        self.mainTimerButton4.addGestureRecognizer(tapGestureTimer4)
        self.mainTimerButton5.addGestureRecognizer(tapGestureTimer5)
        self.mainTimerButton6.addGestureRecognizer(tapGestureTimer6)
        self.mainTimerButton7.addGestureRecognizer(tapGestureTimer7)
        self.mainTimerButton8.addGestureRecognizer(tapGestureTimer8)
        self.mainTimerButton9.addGestureRecognizer(tapGestureTimer9)
        self.mainTimerButton10.addGestureRecognizer(tapGestureTimer10)
        self.mainTimerButton11.addGestureRecognizer(tapGestureTimer11)
        self.mainTimerButton12.addGestureRecognizer(tapGestureTimer12)
        self.mainTimerButton13.addGestureRecognizer(tapGestureTimer13)
        self.mainTimerButton14.addGestureRecognizer(tapGestureTimer14)
        self.mainTimerButton15.addGestureRecognizer(tapGestureTimer15)
        
        
        // Add long press gestures to timer buttons
        self.mainTimerButton1.addGestureRecognizer(longPressGestureTimer1)
        self.mainTimerButton2.addGestureRecognizer(longPressGestureTimer2)
        self.mainTimerButton3.addGestureRecognizer(longPressGestureTimer3)
        self.mainTimerButton4.addGestureRecognizer(longPressGestureTimer4)
        self.mainTimerButton5.addGestureRecognizer(longPressGestureTimer5)
        self.mainTimerButton6.addGestureRecognizer(longPressGestureTimer6)
        self.mainTimerButton7.addGestureRecognizer(longPressGestureTimer7)
        self.mainTimerButton8.addGestureRecognizer(longPressGestureTimer8)
        self.mainTimerButton9.addGestureRecognizer(longPressGestureTimer9)
        self.mainTimerButton10.addGestureRecognizer(longPressGestureTimer10)
        self.mainTimerButton11.addGestureRecognizer(longPressGestureTimer11)
        self.mainTimerButton12.addGestureRecognizer(longPressGestureTimer12)
        self.mainTimerButton13.addGestureRecognizer(longPressGestureTimer13)
        self.mainTimerButton14.addGestureRecognizer(longPressGestureTimer14)
        self.mainTimerButton15.addGestureRecognizer(longPressGestureTimer15)
        
        
        // Add tap gestures to counter buttons
        self.mainCounterButton1.addGestureRecognizer(tapGestureCounter1)
        self.mainCounterButton2.addGestureRecognizer(tapGestureCounter2)
        self.mainCounterButton3.addGestureRecognizer(tapGestureCounter3)
        self.mainCounterButton4.addGestureRecognizer(tapGestureCounter4)
        self.mainCounterButton5.addGestureRecognizer(tapGestureCounter5)
        self.mainCounterButton6.addGestureRecognizer(tapGestureCounter6)
        self.mainCounterButton7.addGestureRecognizer(tapGestureCounter7)
        self.mainCounterButton8.addGestureRecognizer(tapGestureCounter8)
        self.mainCounterButton9.addGestureRecognizer(tapGestureCounter9)
        self.mainCounterButton10.addGestureRecognizer(tapGestureCounter10)
        
        
        // Add long press gestures to counter buttons
        self.mainCounterButton1.addGestureRecognizer(longPressGestureCounter1)
        self.mainCounterButton2.addGestureRecognizer(longPressGestureCounter2)
        self.mainCounterButton3.addGestureRecognizer(longPressGestureCounter3)
        self.mainCounterButton4.addGestureRecognizer(longPressGestureCounter4)
        self.mainCounterButton5.addGestureRecognizer(longPressGestureCounter5)
        self.mainCounterButton6.addGestureRecognizer(longPressGestureCounter6)
        self.mainCounterButton7.addGestureRecognizer(longPressGestureCounter7)
        self.mainCounterButton8.addGestureRecognizer(longPressGestureCounter8)
        self.mainCounterButton9.addGestureRecognizer(longPressGestureCounter9)
        self.mainCounterButton10.addGestureRecognizer(longPressGestureCounter10)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Standard viewDidAppear default function - invoked when all elements of the view have loaded successfully
    // Purpose: grab potential key, values stored in user defaults and update their respective labels if successfully retrieved
    override func viewDidAppear(_ animated: Bool)
    {
        
        // If the stated key exists in User Defaults, set each respective label to the stored value
        
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel1") as? String
        {
            timeBehaviorLabel1.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel2") as? String
        {
            timeBehaviorLabel2.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel3") as? String
        {
            timeBehaviorLabel3.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel4") as? String
        {
            timeBehaviorLabel4.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel5") as? String
        {
            timeBehaviorLabel5.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel6") as? String
        {
            timeBehaviorLabel6.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel7") as? String
        {
            timeBehaviorLabel7.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel8") as? String
        {
            timeBehaviorLabel8.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel9") as? String
        {
            timeBehaviorLabel9.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel10") as? String
        {
            timeBehaviorLabel10.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel11") as? String
        {
            timeBehaviorLabel11.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel12") as? String
        {
            timeBehaviorLabel12.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel13") as? String
        {
            timeBehaviorLabel13.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel14") as? String
        {
            timeBehaviorLabel14.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainTimedBehaviorLabel15") as? String
        {
            timeBehaviorLabel15.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainCountBehaviorLabel1") as? String
        {
            countBehaviorLabel1.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainCountBehaviorLabel2") as? String
        {
            countBehaviorLabel2.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainCountBehaviorLabel3") as? String
        {
            countBehaviorLabel3.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainCountBehaviorLabel4") as? String
        {
            countBehaviorLabel4.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainCountBehaviorLabel5") as? String
        {
            countBehaviorLabel5.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainCountBehaviorLabel6") as? String
        {
            countBehaviorLabel6.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainCountBehaviorLabel7") as? String
        {
            countBehaviorLabel7.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainCountBehaviorLabel8") as? String
        {
            countBehaviorLabel8.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainCountBehaviorLabel9") as? String
        {
            countBehaviorLabel9.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "mainCountBehaviorLabel10") as? String
        {
            countBehaviorLabel10.text = val
        }
    }
    
    // Standard iOS function - invoked when the view dissappears/switches
    override func viewWillDisappear(_ animated: Bool) {
        
        // save timed behavior labels globally
        timeBehaviorLabel1String = timeBehaviorLabel1.text!
        timeBehaviorLabel2String = timeBehaviorLabel2.text!
        timeBehaviorLabel3String = timeBehaviorLabel3.text!
        timeBehaviorLabel4String = timeBehaviorLabel4.text!
        timeBehaviorLabel5String = timeBehaviorLabel5.text!
        timeBehaviorLabel6String = timeBehaviorLabel6.text!
        timeBehaviorLabel7String = timeBehaviorLabel7.text!
        timeBehaviorLabel8String = timeBehaviorLabel8.text!
        timeBehaviorLabel9String = timeBehaviorLabel9.text!
        timeBehaviorLabel10String = timeBehaviorLabel10.text!
        timeBehaviorLabel11String = timeBehaviorLabel11.text!
        timeBehaviorLabel12String = timeBehaviorLabel12.text!
        timeBehaviorLabel13String = timeBehaviorLabel13.text!
        timeBehaviorLabel14String = timeBehaviorLabel14.text!
        timeBehaviorLabel15String = timeBehaviorLabel15.text!
        
        // save counted behavior labels globally
        countBehaviorLabel1String = countBehaviorLabel1.text!
        countBehaviorLabel2String = countBehaviorLabel2.text!
        countBehaviorLabel3String = countBehaviorLabel3.text!
        countBehaviorLabel4String = countBehaviorLabel4.text!
        countBehaviorLabel5String = countBehaviorLabel5.text!
        countBehaviorLabel6String = countBehaviorLabel6.text!
        countBehaviorLabel7String = countBehaviorLabel7.text!
        countBehaviorLabel8String = countBehaviorLabel8.text!
        countBehaviorLabel9String = countBehaviorLabel9.text!
        countBehaviorLabel10String = countBehaviorLabel10.text!
        
        // save total times globally
        totalTime1String = convertToTimestamp(time: totalTime1)
        totalTime2String = convertToTimestamp(time: totalTime2)
        totalTime3String = convertToTimestamp(time: totalTime3)
        totalTime4String = convertToTimestamp(time: totalTime4)
        totalTime5String = convertToTimestamp(time: totalTime5)
        totalTime6String = convertToTimestamp(time: totalTime6)
        totalTime7String = convertToTimestamp(time: totalTime7)
        totalTime8String = convertToTimestamp(time: totalTime8)
        totalTime9String = convertToTimestamp(time: totalTime9)
        totalTime10String = convertToTimestamp(time: totalTime10)
        totalTime11String = convertToTimestamp(time: totalTime11)
        totalTime12String = convertToTimestamp(time: totalTime12)
        totalTime13String = convertToTimestamp(time: totalTime13)
        totalTime14String = convertToTimestamp(time: totalTime14)
        totalTime15String = convertToTimestamp(time: totalTime15)
        
        // save total counts globally
        totalCount1String = String(totalCount1)
        totalCount2String = String(totalCount2)
        totalCount3String = String(totalCount3)
        totalCount4String = String(totalCount4)
        totalCount5String = String(totalCount5)
        totalCount6String = String(totalCount6)
        totalCount7String = String(totalCount7)
        totalCount8String = String(totalCount8)
        totalCount9String = String(totalCount9)
        totalCount10String = String(totalCount10)

    }
    
}
