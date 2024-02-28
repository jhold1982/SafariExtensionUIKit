//
//  ActionViewController.swift
//  Extension
//
//  Created by Justin Hold on 2/28/24.
//

import UIKit
import MobileCoreServices
import UniformTypeIdentifiers

class ActionViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    
		if let inputItem = extensionContext?.inputItems.first as? NSExtensionItem {
			if let itemProvider = inputItem.attachments?.first {
				itemProvider.loadItem(forTypeIdentifier: kUTTypePropertyList as String) {
					[weak self] (dict, error) in
					// do stuff
				}
			}
		}
    }

}
