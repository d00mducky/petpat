//
//  ReportAnalysisView.swift
//  PETPAT
//
//  Created by Kyle on 3/9/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit

class ReportAnalysisView: UIViewController {

    @IBOutlet var mainView: UIView!
    // text view holds all outputed information
    @IBOutlet weak var reportAnalysisOutputTextView: UITextView!
    
    
    //  Grabs the full displayed context of the 'reportAnalysisOutputTextView' and creates a screenshot image of it's specified bounds. Invokes Singleton class 'CustomPhotoAlbum' saveImage() method, which saves the specified image to a custom photo album named 'Analysis Reports' in the iOS 'Photos' application
    
    func createImageScrn() {
        
        var image: UIImage? = nil
        
        UIGraphicsBeginImageContextWithOptions(reportAnalysisOutputTextView.contentSize, reportAnalysisOutputTextView.isOpaque, 0.0)
        
        let savedContentOffset: CGPoint = reportAnalysisOutputTextView.contentOffset
        let savedFrame: CGRect = reportAnalysisOutputTextView.frame
        
        reportAnalysisOutputTextView.contentOffset = CGPoint.zero
        reportAnalysisOutputTextView.frame = CGRect(x: 0,y: 0, width: reportAnalysisOutputTextView.contentSize.width, height: reportAnalysisOutputTextView.contentSize.height)
        
        reportAnalysisOutputTextView.layer.render(in: UIGraphicsGetCurrentContext()!)
        image = UIGraphicsGetImageFromCurrentImageContext()
        
        reportAnalysisOutputTextView.contentOffset = savedContentOffset
        reportAnalysisOutputTextView.frame = savedFrame
        
        UIGraphicsEndImageContext()
        
        CustomPhotoAlbum.sharedInstance.saveImage(image: image!)
    }
    
    func checkForLabelChange(label: String) -> Bool {
        if (label == "Edit...") {
            return false
        } else {
            return true
        }
    }
    
    
    @IBAction func saveToPhotoAlbum(_ sender: UIButton)
    {
        // create a screenshot of the textview's bounds, save to custom photo album 'Analysis Reports'
        
        createImageScrn()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    // Stanrd iOS function - invoked when all elements of the view have successfully loaded. Loads all global information into the 'reportAnalysisOutputTextView' and invokes the createImageScrn() function.
    
    override func viewDidAppear(_ animated: Bool) {
        
        determineTotalTimePercentages()
        
        // Load in global information from the 'Main Timer View' unless label values have not been reinitialized away from default "Edit..."
        
        reportAnalysisOutputTextView.text! += "Main Timer\t\t\t-\t\t\tTimed Behaviors\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel1String): \nTotal Time - \(totalTime1String) \tTotal Time Percentage - \(timePercentage1)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel2String): \nTotal Time - \(totalTime2String) \tTotal Time Percentage - \(timePercentage2)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel3String): \nTotal Time - \(totalTime3String) \tTotal Time Percentage - \(timePercentage3)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel4String): \nTotal Time - \(totalTime4String) \tTotal Time Percentage - \(timePercentage4)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel5String): \nTotal Time - \(totalTime5String) \tTotal Time Percentage - \(timePercentage5)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel6String): \nTotal Time - \(totalTime6String) \tTotal Time Percentage - \(timePercentage6)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel7String): \nTotal Time - \(totalTime7String) \tTotal Time Percentage - \(timePercentage7)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel8String): \nTotal Time - \(totalTime8String) \tTotal Time Percentage - \(timePercentage8)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel9String): \nTotal Time - \(totalTime9String) \tTotal Time Percentage - \(timePercentage9)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel10String): \nTotal Time - \(totalTime10String) \tTotal Time Percentage - \(timePercentage10)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel11String): \nTotal Time - \(totalTime11String) \tTotal Time Percentage - \(timePercentage11)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel12String): \nTotal Time - \(totalTime12String) \tTotal Time Percentage - \(timePercentage12)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel13String): \nTotal Time - \(totalTime13String) \tTotal Time Percentage - \(timePercentage13)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel14String): \nTotal Time - \(totalTime14String) \tTotal Time Percentage - \(timePercentage14)\n"
        
        reportAnalysisOutputTextView.text! += "\(timeBehaviorLabel15String): \nTotal Time - \(totalTime15String) \tTotal Time Percentage: \(timePercentage15)\n"
        
        
        reportAnalysisOutputTextView.text! += "\nMain Timer\t\t\t-\t\t\tCounted Behaviors\n"
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel1String): \nTotal Count - \(totalCount1String)\n"
        
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel2String): \nTotal Count - \(totalCount2String)\n"
        
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel3String): \nTotal Count - \(totalCount3String)\n"
        
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel4String): \nTotal Count - \(totalCount4String)\n"
        
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel5String): \nTotal Count - \(totalCount5String)\n"
        
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel6String): \nTotal Count - \(totalCount6String)\n"
        
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel7String): \nTotal Count - \(totalCount7String)\n"
        
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel8String): \nTotal Count - \(totalCount8String)\n"
        
        reportAnalysisOutputTextView.text! += "\(countBehaviorLabel9String): \nTotal Count - \(totalCount9String)\n"
        
        if checkForLabelChange(label: countBehaviorLabel10String) {
            reportAnalysisOutputTextView.text! += "\(countBehaviorLabel10String): \nTotal Count - \(totalCount10String)\n"
        } else {
        }

        
        
        // Load in all global information from the 'Secondary Timer View' unless label values have not been reinitialized away from default "Edit..."
        
        reportAnalysisOutputTextView.text! += "\nSecondary Timer:\t\t\t-\t\t\t"
        reportAnalysisOutputTextView.text! += "Timed Behaviors\n"
        
        if secTimeBehaviorLabel1String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel1String): \nTotal Time - \(secTotalTime1String)\n"

        }
        
        if secTimeBehaviorLabel2String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel2String): \nTotal Time - \(secTotalTime2String)\n"

        }
        
        if secTimeBehaviorLabel3String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel3String): \nTotal Time - \(secTotalTime3String)\n"

        }
        
        if secTimeBehaviorLabel4String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel4String): \nTotal Time - \(secTotalTime4String)\n"

        }
        
        if secTimeBehaviorLabel5String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel5String): \nTotal Time - \(secTotalTime5String)\n"

        }
        
        if secTimeBehaviorLabel6String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel6String): \nTotal Time - \(secTotalTime6String)\n"

        }
        
        if secTimeBehaviorLabel7String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel7String): \nTotal Time - \(secTotalTime7String)\n"

        }
        
        if secTimeBehaviorLabel8String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel8String): \nTotal Time - \(secTotalTime8String)\n"

        }
        
        if secTimeBehaviorLabel9String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel9String): \nTotal Time - \(secTotalTime9String)\n"

        }
        
        if secTimeBehaviorLabel10String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel10String): \nTotal Time - \(secTotalTime10String)\n"

        }
        
        if secTimeBehaviorLabel11String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel11String): \nTotal Time - \(secTotalTime11String)\n"

        }
        
        if secTimeBehaviorLabel12String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secTimeBehaviorLabel12String): \nTotal Time - \(secTotalTime12String)\n"

        }
        
        
        reportAnalysisOutputTextView.text! += "\nSecondary Timer\t\t\t-\t\t\tCounted Behaviors\n"

        
        if secCountBehaviorLabel1String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel1String): \nTotal Count - \(secTotalCount1String)\n"

        }
        
        if secCountBehaviorLabel2String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel2String): \nTotal Count - \(secTotalCount2String)\n"

        }
        
        if secCountBehaviorLabel3String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel3String): \nTotal Count - \(secTotalCount3String)\n"

        }
        
        if secCountBehaviorLabel4String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel4String): \nTotal Count - \(secTotalCount4String)\n"

        }
        
        if secCountBehaviorLabel5String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel5String): \nTotal Count - \(secTotalCount5String)\n"

        }
        
        if secCountBehaviorLabel6String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel6String): \nTotal Count - \(secTotalCount6String)\n"

        }
        
        if secCountBehaviorLabel7String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel7String): \nTotal Count - \(secTotalCount7String)\n"

        }
        
        if secCountBehaviorLabel8String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel8String): \nTotal Count - \(secTotalCount8String)\n"

        }
        
        if secCountBehaviorLabel9String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel9String): \nTotal Count - \(secTotalCount9String)\n"

        }
        
        if secCountBehaviorLabel10String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel10String): \nTotal Count - \(secTotalCount10String)\n"

        }
        
        if secCountBehaviorLabel11String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel11String): \nTotal Count - \(secTotalCount11String)\n"

        }
        
        if secCountBehaviorLabel12String == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secCountBehaviorLabel12String): \nTotal Count - \(secTotalCount12String)"

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
