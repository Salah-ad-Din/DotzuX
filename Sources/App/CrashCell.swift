//
//  DebugTool.swift
//  demo
//
//  Created by liman on 26/11/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class CrashCell: UITableViewCell {

    @IBOutlet weak var textview: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        textview.isUserInteractionEnabled = false
    }

    var crash: CrashModel? {
        didSet {
            guard let crash = crash else {return}
            let formatDate = LoggerFormat.formatDate(date: crash.date)
            let content = "\("\(formatDate)\n")\(crash.name ?? "unknown crash")"
            
            textview.text = content
            let attstr = NSMutableAttributedString(string: content)
            
            attstr.addAttribute(NSForegroundColorAttributeName,
                                value: UIColor.white, range: NSMakeRange(0, content.count))
            
            let range = NSMakeRange(0, formatDate.count)
            attstr.addAttribute(NSForegroundColorAttributeName, value: Color.mainGreen, range: range)
            attstr.addAttribute(NSFontAttributeName, value: UIFont.boldSystemFont(ofSize: 12), range: range)
            
            textview.attributedText = attstr
        }
    }
}
