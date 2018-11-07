//
//  ViewController.swift
//  TutorialProject
//
//  Created by Tolman, Caiden on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController {

    @IBOutlet weak var SwiftImage: UIImageView!
    @IBOutlet weak var algorithmText: UILabel!
   public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }
    private func formatAlgorithm() -> Void
    {
        let title : String = "How to create a Swift App"
        let stepOne : String = "Click on create new Xcode project and select Single view app."
        let stepTwo : String = "Create a new folder, name it View, and put the Main.Storyboard andLaunchScreen.storyboard files into the folder."
        let stepThree : String =  "Create another file, name is resources, and put the Assets folder,AppDelegate, and info.plist files into the folder."
        let stepFour : String = "Create a new folder, name it controller, and put the viewController file into it"
        let stepFive : String = "Double click on the project file in xcode and click on choose “info.plist” and select your “info.plist” file."
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm {
            let bullet : String = "💣"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string : formattedStep)
            let outlineStyle = createOutlineStyle()
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
        
        
    }
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        return outlineStyle
        
    }
}

