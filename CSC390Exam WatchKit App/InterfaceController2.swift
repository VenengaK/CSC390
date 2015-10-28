//
//  InterfaceController2.swift
//  CSC390Exam
//
//  Created by Venenga, Kyle R on 10/28/15.
//  Copyright © 2015 Venenga, Kyle R. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController2: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    @IBOutlet var mbps: WKInterfaceLabel!
    
    var labelString = "\(selectedNum)"
    mbps.text = labelString
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBOutlet var theTable: WKInterfaceGroup!
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    var Bytes = selectedNum * 125000
    var KB = Bytes * 1000
    var MB = KB * 1000
    var GB = MB * 1000
    
    
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        let array = ["bytes", "KB", "MB", "GB"]
    self.theTable .setNumberOfRows(array.count, withRowType: "cell")
}
}
