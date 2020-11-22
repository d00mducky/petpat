//
//  TertiaryReportAnalysisView.swift
//  PETPAT
//
//  Created by Kyle on 4/9/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit

class TertiaryReportAnalysisView: UIViewController {


    @IBOutlet weak var reportAnalysisOutputTextView: UITextView!
    
    
    
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
    
    
    @IBAction func saveToPhotoAlbum(_ sender: UIButton)
    {
        // create a screenshot of the textview's bounds, save to custom photo album 'Analysis Reports'
        
        createImageScrn()
    }
    
    

    
    override func viewDidAppear(_ animated: Bool) {
        
        reportAnalysisOutputTextView.text! += "Secondary Rubric:\n"
        
        if secQuestionLabelString1 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString1)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment1String)\n"
        }
        
        if secQuestionLabelString2 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString2)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment2String)\n"
        }
        
        if secQuestionLabelString3 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString3)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment3String)\n"
        }
        
        if secQuestionLabelString4 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString4)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment4String)\n"
        }
        
        if secQuestionLabelString5 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString5)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment5String)\n"
        }
        
        if secQuestionLabelString6 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString6)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment6String)\n"
        }
        
        if secQuestionLabelString7 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString7)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment7String)\n"
        }
        
        if secQuestionLabelString8 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString8)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment8String)\n"
        }
        
        if secQuestionLabelString9 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString9)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment9String)\n"
        }
        
        if secQuestionLabelString10 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString10)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment10String)\n"
        }
        
        if secQuestionLabelString11 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString11)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment11String)\n"
        }
        
        if secQuestionLabelString12 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString12)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment12String)\n"
        }
        
        if secQuestionLabelString13 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString13)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment13String)\n"
        }
        
        if secQuestionLabelString14 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString14)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment14String)\n"
        }
        
        if secQuestionLabelString15 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString15)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment15String)\n"
        }
        
        if secQuestionLabelString16 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString16)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment16String)\n"
        }
        
        if secQuestionLabelString17 == "Edit..." {
            
        } else {
            reportAnalysisOutputTextView.text! += "\(secQuestionLabelString17)\nTotal Count - \(totalQuestionCount1String)\nComments \(secPopupComment17String)\n"
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
