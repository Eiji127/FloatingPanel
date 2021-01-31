//
//  ViewController.swift
//  FloatingPanelSample
//
//  Created by 白数叡司 on 2021/01/31.
//

import UIKit
import FloatingPanel

class ViewController: UIViewController, FloatingPanelControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fpc = FloatingPanelController()
        fpc.delegate = self
        
        guard let contentVC = storyboard?.instantiateViewController(identifier: "fpc_content") as? ContentViewController else { return }
        
        fpc.set(contentViewController: contentVC)
        
        fpc.addPanel(toParent: self)
        
        //fpc_content
    }


}

