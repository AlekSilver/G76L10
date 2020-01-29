//
//  ViewController.swift
//  G76L10
//
//  Created by Oleksandr Seliverstov on 24.01.2020.
//  Copyright © 2020 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var textView: UITextView!
        
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textView.delegate = self
        progressBar.progress = 0
        scrollViewDidScroll(textView)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let currentPoint: CGPoint = scrollView.contentOffset
        let heightOfText = scrollView.contentSize.height
        let heightOfTextView = scrollView.frame.height        
        progressBar.progress = (Float(currentPoint.y)/Float(heightOfText-heightOfTextView))
        self.reloadInputViews()
    }
    
}

