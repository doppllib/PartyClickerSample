//
//  PartyViewController.swift
//  ios
//
//  Created by Kevin Galligan on 4/30/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

import Foundation
import UIKit
import JRE

class PartyViewController: UIViewController, PPPartyPresenter_UiInterface{
    
    @IBOutlet weak var removeButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    var party: PDParty!
    var presenter: PPPartyPresenter!
    
    override func viewDidLoad() {
        self.navigationItem.title = party.description()
        self.navigationItem.backBarButtonItem?.title = "Parties"
        presenter = PPPartyPresenter(int: jint(party.getId()))
        PAppManager.getInstance().getDaggerComponent().inject(with: presenter)
        presenter.wire(with: self)
    }
    
    deinit {
        presenter.unwire()
    }
    
    @IBAction func addClicked(_ sender: Any) {
        presenter.addPerson(with: self)
    }
    
    @IBAction func removeClicked(_ sender: Any) {
        presenter.removePerson(with: self)
    }
    
    func updateCountLabel() {
        countLabel.text = "\(presenter.getPartyCount())"
        removeButton.isEnabled = presenter.isRemoveActive()
    }
    
    func processing(withBoolean b: jboolean) {
        
    }
    
    func updateUi() {
        updateCountLabel()
    }
}
