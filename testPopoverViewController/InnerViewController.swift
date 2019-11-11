//
//  InnerViewController.swift
//  testPopoverViewController
//
//  Created by James Tang on 11/11/2019.
//  Copyright © 2019 James Tang. All rights reserved.
//

import UIKit

class InnerViewController: UIViewController {

    @IBOutlet weak var presentButton: UIButton!

    @IBAction func presentButtonDidPres(_ sender: Any) {
//        guard let popover = self.storyboard?.instantiateViewController(withIdentifier: "Popover") else {
//            return
//        }
        let popover = UIViewController()
        popover.preferredContentSize = CGSize(width: 500, height: 300)
        popover.modalPresentationStyle = .popover
        if let presentation = popover.presentationController as? UIPopoverPresentationController {
            presentation.permittedArrowDirections = [.up, .down]
            presentation.sourceRect = CGRect(x: 0, y: 0, width: 22, height: 22)
            presentation.sourceView = self.presentButton
        }

        self.parent?.present(popover, animated: true, completion: nil)
    }
}
