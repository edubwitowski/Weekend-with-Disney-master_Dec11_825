// Do any additional setup after loading the view, typically from a nib.
// Create a PlistFile structure for file named data.plist
//     let someCollection = PlistFile(name: "data")
//Mark 1
// Load the data from the file into an array of optional type [Any]?
//     let someArray = someCollection.array
//Mark 2
// Load the data from the file into an array and cast it as type [[String: String]]?
//     let someArray = someCollection.array as? [[String: String]]
//Mark3
// Load the data from the file into a dictionary of optional type [String: Any]?
//     let someArray = someCollection.dictionary
//mark4
//      let disneyArray = disneyCollection.dictionary
// Load the data from the file into a dictionary and cast it as optional type [String: String]?
//     let someArray = someCollection.dictionary as? [String: String]
//mark5
//     let disneyArray = disneyCollection *********************************************************************************************
//mark1/var Items:[[AnyIndex:String]] = [AnyIndex]


//
//  Created by Macbook on 11/1/17.
//  Copyright © 2017 Eric Witowski. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
   
         var PicMeIndex : Int = 0
         var ReadMeIndex : Int = 0
    
    @IBOutlet weak var picMe: UIImageView!
    @IBOutlet weak var readMe: UITextView!
    
    
    
    var currentMe: Int = 0
  
    var disneyArray:[[String:String]] = []
    
    @IBOutlet weak var viewBackButton: UIButton!
    @IBOutlet weak var viewNextButton: UIButton!
    
    
    
    
    
    
    
    
    
        
        func displayMe() {
            picMe.image = #imageLiteral(resourceName: "Mickey");#imageLiteral(resourceName: "bookOfLife-1");#imageLiteral(resourceName: "WinnieThePooh-1");#imageLiteral(resourceName: "PhineasAndFerb");
            readMe.text = ReadMeIndex[currentMe]
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            displayMe()
        }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //displayMe()
        
        let disneyCollection = PlistFile(name: "disneyArray")
        let disneyArray = disneyCollection.array
        disneyCollection.array as? [[String: String]]
        
        displayMe()
        
        
        
}
    @IBAction func viewBackButton(_ sender: UIButton) {
        picMe.image = #imageLiteral(resourceName: "Mickey")
        readMe.text = text
        currentMe -= 1
        if currentMe < 0 {
            currentMe = disneyArray.count-1
        }
        displayMe()
    }
    
    @IBAction func viewNextButton(_ sender: UIButton) {
        currentMe += 1
        if currentMe > 0 {
            currentMe = disneyArray.count+1
            
            
            
            
        }
        displayMe()
        print()
    }
}
        
        
        
        

