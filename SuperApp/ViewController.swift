//
//  ViewController.swift
//  SuperApp
//
//  Created by Papon Supamongkonchai on 26/1/2566 BE.
//

import UIKit
import ConnectionGateWaySAT

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openMiniAppServiceA(_ sender: Any) {
        // 1. Init class by it's name
        guard let launcherClass = NSClassFromString("MiniAppServiceA.LauncherService") as? ConnectionGateWaySAT.Type else {
            debugPrint("Init launcher class failed")
            return
        }
        
        if let miniAppInputView = launcherClass.init().createInputViewController() {
            self.navigationController?.pushViewController(miniAppInputView, animated: true)
        }
    }
    
    @IBAction func openMiniAppServiceB(_ sender: Any) {
//        // 1. Init class by it's name
        guard let launcherClass = NSClassFromString("MiniAppB.LauncherService") as? ConnectionGateWaySAT.Type else {
            debugPrint("Init launcher class failed")
            return
        }

        if let miniAppInputView = launcherClass.init().createInputViewController() {
            navigationController?.pushViewController(miniAppInputView, animated: true)
        }
    }

}

