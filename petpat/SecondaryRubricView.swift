//
//  SecondaryRubricView.swift
//  PETPAT
//
//  Copyright © 2017 Central Washington University. All rights reserved.
//


var secTotalQuestionCount1  = 1,
    secTotalQuestionCount2  = 1,
    secTotalQuestionCount3  = 1,
    secTotalQuestionCount4  = 1,
    secTotalQuestionCount5  = 1,
    secTotalQuestionCount6  = 1,
    secTotalQuestionCount7  = 1,
    secTotalQuestionCount8  = 1,
    secTotalQuestionCount9  = 1,
    secTotalQuestionCount10 = 1,
    secTotalQuestionCount11 = 1,
    secTotalQuestionCount12 = 1,
    secTotalQuestionCount13 = 1,
    secTotalQuestionCount14 = 1,
    secTotalQuestionCount15 = 1,
    secTotalQuestionCount16 = 1,
    secTotalQuestionCount17 = 1

var secTotalQuestionCount1String = "",
    secTotalQuestionCount2String = "",
    secTotalQuestionCount3String = "",
    secTotalQuestionCount4String = "",
    secTotalQuestionCount5String = "",
    secTotalQuestionCount6String = "",
    secTotalQuestionCount7String = "",
    secTotalQuestionCount8String = "",
    secTotalQuestionCount9String = "",
    secTotalQuestionCount10String = "",
    secTotalQuestionCount11String = "",
    secTotalQuestionCount12String = "",
    secTotalQuestionCount13String = "",
    secTotalQuestionCount14String = "",
    secTotalQuestionCount15String = "",
    secTotalQuestionCount16String = "",
    secTotalQuestionCount17String = ""


var secQuestionLabelString1 = "",
    secQuestionLabelString2 = "",
    secQuestionLabelString3 = "",
    secQuestionLabelString4 = "",
    secQuestionLabelString5 = "",
    secQuestionLabelString6 = "",
    secQuestionLabelString7 = "",
    secQuestionLabelString8 = "",
    secQuestionLabelString9 = "",
    secQuestionLabelString10 = "",
    secQuestionLabelString11 = "",
    secQuestionLabelString12 = "",
    secQuestionLabelString13 = "",
    secQuestionLabelString14 = "",
    secQuestionLabelString15 = "",
    secQuestionLabelString16 = "",
    secQuestionLabelString17 = ""

var secPopupComment1String = "",
    secPopupComment2String = "",
    secPopupComment3String = "",
    secPopupComment4String = "",
    secPopupComment5String = "",
    secPopupComment6String = "",
    secPopupComment7String = "",
    secPopupComment8String = "",
    secPopupComment9String = "",
    secPopupComment10String = "",
    secPopupComment11String = "",
    secPopupComment12String = "",
    secPopupComment13String = "",
    secPopupComment14String = "",
    secPopupComment15String = "",
    secPopupComment16String = "",
    secPopupComment17String = ""

import UIKit

class SecondaryRubricView: UIViewController {
    
    // button outlets for long press gestures
    @IBOutlet weak var editLabelButton1: UIButton!
    @IBOutlet weak var editLabelButton2: UIButton!
    @IBOutlet weak var editLabelButton3: UIButton!
    @IBOutlet weak var editLabelButton4: UIButton!
    @IBOutlet weak var editLabelButton5: UIButton!
    @IBOutlet weak var editLabelButton6: UIButton!
    @IBOutlet weak var editLabelButton7: UIButton!
    @IBOutlet weak var editLabelButton8: UIButton!
    @IBOutlet weak var editLabelButton9: UIButton!
    @IBOutlet weak var editLabelButton10: UIButton!
    @IBOutlet weak var editLabelButton11: UIButton!
    @IBOutlet weak var editLabelButton12: UIButton!
    @IBOutlet weak var editLabelButton13: UIButton!
    @IBOutlet weak var editLabelButton14: UIButton!
    @IBOutlet weak var editLabelButton15: UIButton!
    @IBOutlet weak var editLabelButton16: UIButton!
    @IBOutlet weak var editLabelButton17: UIButton!
    
    // rubric question labels
    @IBOutlet weak var questionLabel1: UILabel!
    @IBOutlet weak var questionLabel2: UILabel!
    @IBOutlet weak var questionLabel3: UILabel!
    @IBOutlet weak var questionLabel4: UILabel!
    @IBOutlet weak var questionLabel5: UILabel!
    @IBOutlet weak var questionLabel6: UILabel!
    @IBOutlet weak var questionLabel7: UILabel!
    @IBOutlet weak var questionLabel8: UILabel!
    @IBOutlet weak var questionLabel9: UILabel!
    @IBOutlet weak var questionLabel10: UILabel!
    @IBOutlet weak var questionLabel11: UILabel!
    @IBOutlet weak var questionLabel12: UILabel!
    @IBOutlet weak var questionLabel13: UILabel!
    @IBOutlet weak var questionLabel14: UILabel!
    @IBOutlet weak var questionLabel15: UILabel!
    @IBOutlet weak var questionLabel16: UILabel!
    @IBOutlet weak var questionLabel17: UILabel!

    // rubric question count labels
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
    @IBOutlet weak var countLabel11: UILabel!
    @IBOutlet weak var countLabel12: UILabel!
    @IBOutlet weak var countLabel13: UILabel!
    @IBOutlet weak var countLabel14: UILabel!
    @IBOutlet weak var countLabel15: UILabel!
    @IBOutlet weak var countLabel16: UILabel!
    @IBOutlet weak var countLabel17: UILabel!
    
    
    // holds sender parameter button current title's for switch cases
    var questionButtonLabels  = "",
    incrementButtonLabels = "",
    commentButtonLabels   = "",
    deleteButonLabels     = ""
    

    
    
    // increments the total count for each respective question - values 1-5 possible; will not increment unless question label is not "Edit..." i.e. has been initialized with a value aside from it's default value.
    @IBAction func incrementCount(_ sender: UIButton)
    {
        
        incrementButtonLabels = sender.currentTitle!
        
        switch incrementButtonLabels {
            
            
        case "incrementButton1":
            
            if questionLabel1.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount1 == 5 {
                    secTotalQuestionCount1 = 1
                    
                } else {
                    secTotalQuestionCount1 += 1
                }
                
                countLabel1.text = String(secTotalQuestionCount1)
            }

            
        case "incrementButton2":
            
            if questionLabel2.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount2 == 5 {
                    secTotalQuestionCount2 = 1
                    
                } else {
                    secTotalQuestionCount2 += 1
                }
                
                countLabel2.text = String(secTotalQuestionCount2)
            }
            
            
        case "incrementButton3":
            
            if questionLabel3.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount3 == 5 {
                    secTotalQuestionCount3 = 1
                    
                } else {
                    secTotalQuestionCount3 += 1
                }
                
                countLabel3.text = String(secTotalQuestionCount3)
            }
            
            
        case "incrementButton4":
            
            if questionLabel4.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount4 == 5 {
                    secTotalQuestionCount4 = 1
                    
                } else {
                    secTotalQuestionCount4 += 1
                }
                
                countLabel4.text = String(secTotalQuestionCount4)
            }
            
            
        case "incrementButton5":
            
            if questionLabel5.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount5 == 5 {
                    secTotalQuestionCount5 = 1
                    
                } else {
                    secTotalQuestionCount5 += 1
                }
                
                countLabel5.text = String(secTotalQuestionCount5)
            }

            
        case "incrementButton6":
            
            if questionLabel6.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount6 == 5 {
                    secTotalQuestionCount6 = 1
                    
                } else {
                    secTotalQuestionCount6 += 1
                }
                
                countLabel6.text = String(secTotalQuestionCount6)
            }
            
            
        case "incrementButton7":
            
            if questionLabel7.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount7 == 5 {
                    secTotalQuestionCount7 = 1
                    
                } else {
                    secTotalQuestionCount7 += 1
                }
                
                countLabel7.text = String(secTotalQuestionCount7)
            }
            
            
        case "incrementButton8":
            
            if questionLabel8.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount8 == 5 {
                    secTotalQuestionCount8 = 1
                    
                } else {
                    secTotalQuestionCount8 += 1
                }
                
                countLabel8.text = String(secTotalQuestionCount8)
            }
        
            
        case "incrementButton9":
            
            if questionLabel9.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount9 == 5 {
                    secTotalQuestionCount9 = 1
                    
                } else {
                    secTotalQuestionCount9 += 1
                }
                
                countLabel9.text = String(secTotalQuestionCount9)
            }
            
            
        case "incrementButton10":
            
            if questionLabel10.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount10 == 5 {
                    secTotalQuestionCount10 = 1
                    
                } else {
                    secTotalQuestionCount10 += 1
                }
                
                countLabel10.text = String(secTotalQuestionCount10)
            }
            
            
        case "incrementButton11":
            
            if questionLabel11.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount11 == 5 {
                    secTotalQuestionCount11 = 1
                    
                } else {
                    secTotalQuestionCount11 += 1
                }
                
                countLabel11.text = String(secTotalQuestionCount11)
            }
            
            
        case "incrementButton12":
            
            if questionLabel12.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount12 == 5 {
                    secTotalQuestionCount12 = 1
                    
                } else {
                    secTotalQuestionCount12 += 1
                }
                
                countLabel12.text = String(secTotalQuestionCount12)
            }
            
            
        case "incrementButton13":
            
            if questionLabel13.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount13 == 5 {
                    secTotalQuestionCount13 = 1
                    
                } else {
                    secTotalQuestionCount13 += 1
                }
                
                countLabel13.text = String(secTotalQuestionCount13)
            }
            
            
        case "incrementButton14":
            
            if questionLabel14.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount14 == 5 {
                    secTotalQuestionCount14 = 1
                    
                } else {
                    secTotalQuestionCount14 += 1
                }
                
                countLabel14.text = String(secTotalQuestionCount14)
            }
            
            
        case "incrementButton15":
            
            if questionLabel15.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount15 == 5 {
                    secTotalQuestionCount15 = 1
                    
                } else {
                    secTotalQuestionCount15 += 1
                }
                
                countLabel15.text = String(secTotalQuestionCount15)
            }
        
        case "incrementButton16":
            
            if questionLabel16.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount16 == 5 {
                    secTotalQuestionCount16 = 1
                    
                } else {
                    secTotalQuestionCount16 += 1
                }
                
                countLabel16.text = String(secTotalQuestionCount16)
            }
            
        case "incrementButton17":
            
            if questionLabel17.text == "Edit..." {
                // perform no action
            } else {
                if secTotalQuestionCount17 == 5 {
                    secTotalQuestionCount17 = 1
                    
                } else {
                    secTotalQuestionCount17 += 1
                }
                
                countLabel17.text = String(secTotalQuestionCount17)
            }
            

            
        default:
            print("Error in Increment Count Function - Secondary Rubric View")
        }

    }
    
    
    
    
    
    // MARK: Modal View Logic

    // modal pop up view
    @IBOutlet weak var modalPopUpComment: UIView!
    // text view holds comment values/inputs
    @IBOutlet weak var modalPopUpCommentTextView: UITextView!
    
    

    // If the default value of the respective question labels have been reinitialized from the default value (i.e. label is not "Edit..."), brind the modal pop up into view and allow the user to save comments based on the button's current title
    @IBAction func popUpCommentModal(_ sender: UIButton)
    {
        
        commentButtonLabels = sender.currentTitle!
        
        
        switch commentButtonLabels {
            
        case "commentButton1":
            
            if questionLabel1.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment1String == "" {
                    modalPopUpCommentTextView.text = "1: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment1String
                }
            }

        case "commentButton2":
            
            if questionLabel2.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment2String == "" {
                    modalPopUpCommentTextView.text = "2: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment2String
                }
            }
            
        case "commentButton3":
            if questionLabel3.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment3String == "" {
                    modalPopUpCommentTextView.text = "3: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment3String
                }
            }
        case "commentButton4":
            if questionLabel4.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment4String == "" {
                    modalPopUpCommentTextView.text = "4: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment4String
                }
            }
        case "commentButton5":
            if questionLabel5.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment5String == "" {
                    modalPopUpCommentTextView.text = "5: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment5String
                }
            }
        case "commentButton6":
            if questionLabel6.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment6String == "" {
                    modalPopUpCommentTextView.text = "6: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment6String
                }
            }
        case "commentButton7":
            if questionLabel7.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment7String == "" {
                    modalPopUpCommentTextView.text = "7: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment7String
                }
            }
        case "commentButton8":
            if questionLabel8.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment8String == "" {
                    modalPopUpCommentTextView.text = "8: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment8String
                }
            }
        case "commentButton9":
            if questionLabel9.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment9String == "" {
                    modalPopUpCommentTextView.text = "9: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment9String
                }
            }
        case "commentButton10":
            if questionLabel10.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment10String == "" {
                    modalPopUpCommentTextView.text = "10: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment10String
                }
            }
        case "commentButton11":
            if questionLabel11.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment11String == "" {
                    modalPopUpCommentTextView.text = "11: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment11String
                }
            }
        case "commentButton12":
            if questionLabel12.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment12String == "" {
                    modalPopUpCommentTextView.text = "12: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment12String
                }
            }
        case "commentButton13":
            if questionLabel13.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment13String == "" {
                    modalPopUpCommentTextView.text = "13: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment13String
                }
            }
        case "commentButton14":
            if questionLabel14.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment14String == "" {
                    modalPopUpCommentTextView.text = "14: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment14String
                }
            }
        case "commentButton15":
            if questionLabel15.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment15String == "" {
                    modalPopUpCommentTextView.text = "15: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment15String
                }
            }
            
        case "commentButton16":
            if questionLabel16.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment16String == "" {
                    modalPopUpCommentTextView.text = "16: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment16String
                }
            }
        
        case "commentButton17":
            if questionLabel17.text == "Edit..." {
                // perform no action
            } else {
                modalPopUpComment.transform = CGAffineTransform(translationX: 936, y: -200)

                if secPopupComment17String == "" {
                    modalPopUpCommentTextView.text = "17: "
                } else {
                    modalPopUpCommentTextView.text = secPopupComment17String
                }
            }
            
            
        default:
            print("Error in Comment Button Function - Main Rubric View")
        }

    }
    
    
    // Dismiss the modal pop up view and save the input to the respective string based on the first two characters of the comment (i.e. '1:' saves to secPopupComment1String)
    
    @IBAction func saveComment(_ sender: UIButton) {
        
        modalPopUpComment.transform = CGAffineTransform(translationX: -936, y: 200)
        
        let modalIndex = modalPopUpCommentTextView.text.index(modalPopUpCommentTextView.text.startIndex, offsetBy: 2)
        
        
        let strIndex = modalPopUpCommentTextView.text.substring(to: modalIndex)
        
        
        
        switch strIndex {
            
        case "1:":
            
            secPopupComment1String = modalPopUpCommentTextView.text
            
        case "2:":
            
            secPopupComment2String = modalPopUpCommentTextView.text
            
        case "3:":
            
            secPopupComment3String = modalPopUpCommentTextView.text
            
        case "4:":
            
            secPopupComment4String = modalPopUpCommentTextView.text
            
        case "5:":
            
            secPopupComment5String = modalPopUpCommentTextView.text
            
        case "6:":
            
            secPopupComment6String = modalPopUpCommentTextView.text
            
        case "7:":
            
            secPopupComment7String = modalPopUpCommentTextView.text
            
        case "8:":
            
            secPopupComment8String = modalPopUpCommentTextView.text
            
        case "9:":
            
            secPopupComment9String = modalPopUpCommentTextView.text
            
        case "10":
            
            secPopupComment10String = modalPopUpCommentTextView.text
            
        case "11":
            
            secPopupComment11String = modalPopUpCommentTextView.text
            
        case "12":
            
            secPopupComment12String = modalPopUpCommentTextView.text
            
        case "13":
            
            secPopupComment13String = modalPopUpCommentTextView.text
            
        case "14":
            
            secPopupComment14String = modalPopUpCommentTextView.text
            
        case "15":
            
            secPopupComment15String = modalPopUpCommentTextView.text
            
        default:
            print("Error in Comment Button Function - Main Rubric View")
        }
    }
    
    // dismiss the modal popup view
    
    @IBAction func cancelSaveComment(_ sender: UIButton)
    {
        modalPopUpComment.transform = CGAffineTransform(translationX: -936, y:200)
    }
    
    
    // prompt the user with an alert view to delete the comment associated with the sender button's current title (i.e. deleteButton1 will clear the comment 1 string)
    @IBAction func deleteComment(_ sender: UIButton)
    {
        deleteButonLabels = sender.currentTitle!
        
        let alert = UIAlertController(
            title: "Delete Comment",
            message: "Would you like to delete this comment?",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler:
            { action in
                
                // perform no action
            }
        ))
        
        switch deleteButonLabels {
            
            case "deleteButton1":
                
                if (questionLabel1.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment1String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton2":
            
                if (questionLabel2.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment2String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton3":
            
                if (questionLabel3.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment3String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton4":
            
                if (questionLabel4.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment4String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton5":
            
                if (questionLabel5.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment5String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton6":
            
                if (questionLabel6.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment6String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton7":
            
                if (questionLabel7.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment7String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton8":
            
                if (questionLabel8.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment8String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton9":
            
                if (questionLabel9.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment9String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton10":
            
                if (questionLabel10.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment10String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton11":
            
                if (questionLabel11.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment11String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton12":
            
                if (questionLabel12.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment12String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton13":
            
                if (questionLabel13.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment13String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton14":
            
                if (questionLabel14.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment14String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton15":
            
                if (questionLabel15.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment15String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton16":
            
                if (questionLabel16.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment16String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            case "deleteButton17":
            
                if (questionLabel17.text == "Edit...") {
                    // perform no action
                } else {
                    
                    alert.addAction(UIAlertAction(title: "Delete", style: .default, handler:
                        { action in
                            secPopupComment17String = ""
                    }
                    ))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            
            
        default:
            
                print("Error in Delete Comment Function - Secondary Rubric View")
        }
    }
    
    // MARK: Edit Label logic
    
    
    // Outlet: text field for editing respective label names
    @IBOutlet weak var editLabelTextField: UITextField!
    
    
    // long press gesture action functions - sets the text of the respective label (based on the sender of the long press) to equal that of the editLabelTextField
    func editLabel1 (_ sender: UILongPressGestureRecognizer)
    {
        questionLabel1.text = editLabelTextField.text
    }
    func editLabel2 (_ sender: UILongPressGestureRecognizer) {
        questionLabel2.text = editLabelTextField.text
    }
    func editLabel3 (_ sender: UILongPressGestureRecognizer) {
        questionLabel3.text = editLabelTextField.text
    }
    func editLabel4 (_ sender: UILongPressGestureRecognizer) {
        questionLabel4.text = editLabelTextField.text
    }
    func editLabel5 (_ sender: UILongPressGestureRecognizer) {
        questionLabel5.text = editLabelTextField.text
    }
    func editLabel6 (_ sender: UILongPressGestureRecognizer) {
        questionLabel6.text = editLabelTextField.text
    }
    func editLabel7 (_ sender: UILongPressGestureRecognizer) {
        questionLabel7.text = editLabelTextField.text
    }
    func editLabel8 (_ sender: UILongPressGestureRecognizer) {
        questionLabel8.text = editLabelTextField.text
    }
    func editLabel9 (_ sender: UILongPressGestureRecognizer) {
        questionLabel9.text = editLabelTextField.text
    }
    func editLabel10 (_ sender: UILongPressGestureRecognizer) {
        questionLabel10.text = editLabelTextField.text
    }
    func editLabel11 (_ sender: UILongPressGestureRecognizer) {
        questionLabel11.text = editLabelTextField.text
    }
    func editLabel12 (_ sender: UILongPressGestureRecognizer) {
        questionLabel12.text = editLabelTextField.text
    }
    func editLabel13 (_ sender: UILongPressGestureRecognizer) {
        questionLabel13.text = editLabelTextField.text
    }
    func editLabel14 (_ sender: UILongPressGestureRecognizer) {
        questionLabel14.text = editLabelTextField.text
    }
    func editLabel15 (_ sender: UILongPressGestureRecognizer) {
        questionLabel15.text = editLabelTextField.text
    }
    func editLabel16 (_ sender: UILongPressGestureRecognizer) {
        questionLabel16.text = editLabelTextField.text
    }
    func editLabel17 (_ sender: UILongPressGestureRecognizer) {
        questionLabel17.text = editLabelTextField.text
    }
    
    
    // Saves all current rubric question labels to user defaults (i.e. locally to the device) in key/value pairs
    
    @IBAction func saveToUserDefaults(_ sender: UIButton)
    {
        UserDefaults.standard.set(questionLabel1.text, forKey: "secQuestionLabel1")
        UserDefaults.standard.set(questionLabel2.text, forKey: "secQuestionLabel2")
        UserDefaults.standard.set(questionLabel3.text, forKey: "secQuestionLabel3")
        UserDefaults.standard.set(questionLabel4.text, forKey: "secQuestionLabel4")
        UserDefaults.standard.set(questionLabel5.text, forKey: "secQuestionLabel5")
        UserDefaults.standard.set(questionLabel6.text, forKey: "secQuestionLabel6")
        UserDefaults.standard.set(questionLabel7.text, forKey: "secQuestionLabel7")
        UserDefaults.standard.set(questionLabel8.text, forKey: "secQuestionLabel8")
        UserDefaults.standard.set(questionLabel9.text, forKey: "secQuestionLabel9")
        UserDefaults.standard.set(questionLabel10.text, forKey: "secQuestionLabel10")
        UserDefaults.standard.set(questionLabel11.text, forKey: "secQuestionLabel11")
        UserDefaults.standard.set(questionLabel12.text, forKey: "secQuestionLabel12")
        UserDefaults.standard.set(questionLabel13.text, forKey: "secQuestionLabel13")
        UserDefaults.standard.set(questionLabel14.text, forKey: "secQuestionLabel14")
        UserDefaults.standard.set(questionLabel15.text, forKey: "secQuestionLabel15")
        UserDefaults.standard.set(questionLabel16.text, forKey: "secQuestionLabel16")
        UserDefaults.standard.set(questionLabel17.text, forKey: "secQuestionLabel17")

    }
    
    
    // Allows the user to reset their user default values and revert back to default values

    @IBAction func resetUserDefaults(_ sender: UIButton)
    {
        // Reset All User Defaults Keys/Values
        let appDomain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
        
        // Reset All Label Values
        questionLabel1.text  = "Edit..."
        questionLabel2.text  = "Edit..."
        questionLabel3.text  = "Edit..."
        questionLabel4.text  = "Edit..."
        questionLabel5.text  = "Edit..."
        questionLabel6.text  = "Edit..."
        questionLabel7.text  = "Edit..."
        questionLabel8.text  = "Edit..."
        questionLabel9.text  = "Edit..."
        questionLabel10.text = "Edit..."
        questionLabel11.text = "Edit..."
        questionLabel12.text = "Edit..."
        questionLabel13.text = "Edit..."
        questionLabel14.text = "Edit..."
        questionLabel15.text = "Edit..."
        questionLabel16.text = "Edit..."
        questionLabel17.text = "Edit..."
        
    }
    
    
    // Standard iOS function - invoked when all elements of the view have successfully loaded
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Creates long press gesture recognizers and initializes their various action functions
        
        let longPressGesture1 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel1))
        let longPressGesture2 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel2))
        let longPressGesture3 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel3))
        let longPressGesture4 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel4))
        let longPressGesture5 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel5))
        let longPressGesture6 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel6))
        let longPressGesture7 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel7))
        let longPressGesture8 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel8))
        let longPressGesture9 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel9))
        let longPressGesture10 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel10))
        let longPressGesture11 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel11))
        let longPressGesture12 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel12))
        let longPressGesture13 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel13))
        let longPressGesture14 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel14))
        let longPressGesture15 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel15))
        let longPressGesture16 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel16))
        let longPressGesture17 = UILongPressGestureRecognizer(target: self, action: #selector(SecondaryRubricView.editLabel17))
        
        
        // add long press gestures to rubric edit question label buttons
        self.editLabelButton1.addGestureRecognizer(longPressGesture1)
        self.editLabelButton2.addGestureRecognizer(longPressGesture2)
        self.editLabelButton3.addGestureRecognizer(longPressGesture3)
        self.editLabelButton4.addGestureRecognizer(longPressGesture4)
        self.editLabelButton5.addGestureRecognizer(longPressGesture5)
        self.editLabelButton6.addGestureRecognizer(longPressGesture6)
        self.editLabelButton7.addGestureRecognizer(longPressGesture7)
        self.editLabelButton8.addGestureRecognizer(longPressGesture8)
        self.editLabelButton9.addGestureRecognizer(longPressGesture9)
        self.editLabelButton10.addGestureRecognizer(longPressGesture10)
        self.editLabelButton11.addGestureRecognizer(longPressGesture11)
        self.editLabelButton12.addGestureRecognizer(longPressGesture12)
        self.editLabelButton13.addGestureRecognizer(longPressGesture13)
        self.editLabelButton14.addGestureRecognizer(longPressGesture14)
        self.editLabelButton15.addGestureRecognizer(longPressGesture15)
        self.editLabelButton16.addGestureRecognizer(longPressGesture16)
        self.editLabelButton17.addGestureRecognizer(longPressGesture17)

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Standard iOS function - invoked when all elements of the view have successfully loaded
    
    override func viewDidAppear(_ animated: Bool)
    {
        
        // if the stated key value exists in user defaults storage - load the value into the respective rubric question label
        
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel1") as? String
        {
            questionLabel1.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel2") as? String
        {
            questionLabel2.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel3") as? String
        {
            questionLabel3.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel4") as? String
        {
            questionLabel4.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel5") as? String
        {
            questionLabel5.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel6") as? String
        {
            questionLabel6.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel7") as? String
        {
            questionLabel7.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel8") as? String
        {
            questionLabel8.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel9") as? String
        {
            questionLabel9.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel10") as? String
        {
            questionLabel10.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel11") as? String
        {
            questionLabel11.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel12") as? String
        {
            questionLabel12.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel13") as? String
        {
            questionLabel13.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel14") as? String
        {
            questionLabel14.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel15") as? String
        {
            questionLabel15.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel16") as? String
        {
            questionLabel16.text = val
        }
        if let val = UserDefaults.standard.object(forKey: "secQuestionLabel17") as? String
        {
            questionLabel17.text = val
        }
    }
    
    // Standard iOS function - invoked when the view dissappears/switches
    
    override func viewWillDisappear(_ animated: Bool) {
        
        // save rubric question labels globally
        secQuestionLabelString1 = questionLabel1.text!
        secQuestionLabelString2 = questionLabel2.text!
        secQuestionLabelString3 = questionLabel3.text!
        secQuestionLabelString4 = questionLabel4.text!
        secQuestionLabelString5 = questionLabel5.text!
        secQuestionLabelString6 = questionLabel6.text!
        secQuestionLabelString7 = questionLabel7.text!
        secQuestionLabelString8 = questionLabel8.text!
        secQuestionLabelString9 = questionLabel9.text!
        secQuestionLabelString10 = questionLabel10.text!
        secQuestionLabelString11 = questionLabel11.text!
        secQuestionLabelString12 = questionLabel12.text!
        secQuestionLabelString13 = questionLabel13.text!
        secQuestionLabelString14 = questionLabel14.text!
        secQuestionLabelString15 = questionLabel15.text!
        secQuestionLabelString16 = questionLabel16.text!
        secQuestionLabelString17 = questionLabel17.text!
        
        // save rubric question counts globally
        secTotalQuestionCount1String = String(secTotalQuestionCount1)
        secTotalQuestionCount2String = String(secTotalQuestionCount2)
        secTotalQuestionCount3String = String(secTotalQuestionCount3)
        secTotalQuestionCount4String = String(secTotalQuestionCount4)
        secTotalQuestionCount5String = String(secTotalQuestionCount5)
        secTotalQuestionCount6String = String(secTotalQuestionCount6)
        secTotalQuestionCount7String = String(secTotalQuestionCount7)
        secTotalQuestionCount8String = String(secTotalQuestionCount8)
        secTotalQuestionCount9String = String(secTotalQuestionCount9)
        secTotalQuestionCount10String = String(secTotalQuestionCount10)
        secTotalQuestionCount11String = String(secTotalQuestionCount11)
        secTotalQuestionCount12String = String(secTotalQuestionCount12)
        secTotalQuestionCount13String = String(secTotalQuestionCount13)
        secTotalQuestionCount14String = String(secTotalQuestionCount14)
        secTotalQuestionCount15String = String(secTotalQuestionCount15)
        secTotalQuestionCount16String = String(secTotalQuestionCount16)
        secTotalQuestionCount17String = String(secTotalQuestionCount17)
    }

}
