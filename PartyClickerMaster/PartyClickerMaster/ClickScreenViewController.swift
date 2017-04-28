//
//  ClickScreenViewController.swift
//  PartyClickerMaster
//
//  Created by Kevin Galligan on 4/28/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

import Foundation
import UIKit

@objc class ClickScreenViewController: UIViewController, PPPartyPresenter_UiInterface{
    var presenter: PPPartyPresenter!
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var removeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setDetailItem(party: PDParty){
        refreshPresenter(partyId: party.getId())
    }
    
    func refreshPresenter(partyId: Int32)
    {
        presenter = PPPartyPresenter(int: partyId)
        
        PAppManager.getInstance().getDaggerComponent().inject(with: presenter)
        presenter.applyUiInterface(with: self)
        
        presenter.init__()
    }
    
    func updateUi() {
        print("Updating ui")
    }
    
    func processing(withBoolean b: jboolean) {
        print("processing \(b)")
    }
    
    @IBAction func addPerson(_ sender: Any) {
        presenter.addPerson()
    }
    
    @IBAction func removePerson(_ sender: Any) {
        presenter.removePerson()
    }
}
