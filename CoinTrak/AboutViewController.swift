//
//  AboutViewController.swift
//  CoinTrak
//
//  Created by John Chiaramonte on 8/30/16.
//  Copyright © 2016 John Chiaramonte. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    let data = Data.sharedInstance
    
    @IBOutlet var menuButton: UIBarButtonItem!
    
    //coinMarketCap link
    @IBAction func cmcButton(sender: UIButton) {
        data.openURL("http://coinmarketcap.com")
    }
    //cryptocompare link
    @IBAction func cryptoCompButton(sender: UIButton) {
        data.openURL("http://cryptocompare.com")
    }
    //blockchain.info link
    @IBAction func blockChainButton(sender: UIButton) {
        data.openURL("http://blockchain.info")
    }
    //etherchain.org link
    @IBAction func etherChainButton(sender: UIButton) {
        data.openURL("http://etherchain.org")
    }
    //dogechain.info link
    @IBAction func dogeChainButton(sender: UIButton) {
        data.openURL("http://dogechain.info")
    }
    //icons8 link
    @IBAction func iconsEightButton(sender: UIButton) {
        data.openURL("http://icons8.com")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("About View Controller loaded")
        
        menuButton.target = self.revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        
        //gesture recognizer to open reveal view controller
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        // Do any additional setup after loading the view.
    }

}
