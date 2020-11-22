//
//  SecondaryReportAnalysisView.swift
//  PETPAT
//
//  Created by Kyle on 4/9/17.
//  Copyright © 2017 Central Washington University. All rights reserved.
//

import UIKit

class SecondaryReportAnalysisView: UIViewController {

    
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        // Load in all global information from the 'Main Rubric View' unless label values have not been reinitialized away from default "Edit..."
        
//        reportAnalysisOutputTextView.text! += "Main Rubric:\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString1)\nTotal Count - \(totalQuestionCount1String)\nComments \(popupComment1String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString2)\nTotal Count - \(totalQuestionCount2String)\nComments \(popupComment2String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString3)\nTotal Count - \(totalQuestionCount3String)\nComments \(popupComment3String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString4)\nTotal Count - \(totalQuestionCount4String)\nComments \(popupComment4String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString5)\nTotal Count - \(totalQuestionCount5String)\nComments \(popupComment5String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString6)\nTotal Count - \(totalQuestionCount6String)\nComments \(popupComment6String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString7)\nTotal Count - \(totalQuestionCount7String)\nComments \(popupComment7String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString8)\nTotal Count - \(totalQuestionCount8String)\nComments \(popupComment8String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString9)\nTotal Count - \(totalQuestionCount9String)\nComments \(popupComment9String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString10)\nTotal Count - \(totalQuestionCount10String)\nComments \(popupComment10String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString11)\nTotal Count - \(totalQuestionCount11String)\nComments \(popupComment11String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString12)\nTotal Count - \(totalQuestionCount12String)\nComments \(popupComment12String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString13)\nTotal Count - \(totalQuestionCount13String)\nComments \(popupComment13String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString14)\nTotal Count - \(totalQuestionCount14String)\nComments \(popupComment14String)\n"
        reportAnalysisOutputTextView.text! += "\(questionLabelString15)\nTotal Count - \(totalQuestionCount15String)\nComments \(popupComment15String)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
