//
//  ViewController.swift
//  ios
//
//  Created by Kevin Galligan on 4/30/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PPPartyListPresenter_UiInterface {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var partyNameTextView: UITextField!
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    var parties: JavaUtilList!
    var presenter: PPPartyListPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = PPPartyListPresenter()
        PAppManager.getInstance().getDaggerComponent().inject(with: presenter)
        presenter.applyUiInterface(with: self)
        presenter.callRefreshPartyList()
        
        tableView.register(UITableViewCell.classForKeyedArchiver(), forCellReuseIdentifier: "SimpleTableItem")
        styleEditButton()        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        presenter.callRefreshPartyList()
    }
    
    @IBAction func editButton(_ sender: Any) {
        tableView.isEditing = !tableView.isEditing
        styleEditButton()
    }
    
    @IBAction func createPartyClicked(_ sender: Any) {
        presenter.createParty(with: partyNameTextView.text)
        partyNameTextView.text = ""
        presenter.callRefreshPartyList()
    }
    
    func styleEditButton(){
        editButton.title = tableView.isEditing ? "Done" : "Edit"
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(parties == nil){
            return 0
        }
        else{
            return Int(parties.size())
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleTableItem", for: indexPath)

        let party = parties.getWith(jint(indexPath.row)) as! PDParty
        cell.textLabel?.text = party.description()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.callParty(with: jint((parties.getWith(jint(indexPath.row)) as! PDParty).getId()))
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func refreshPartyList(with partyList: JavaUtilList!) {
        self.parties = partyList
        tableView.reloadData()
        styleEditButton()
    }
    
    func showParty(with party: PDParty!) {
        performSegue(withIdentifier: "ShowParty", sender: party)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            //[self.objects removeObjectAtIndex:indexPath.row];
            //[tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            presenter.deleteParty(with: (parties.getWith(jint(indexPath.row)) as! PDParty).getId())
            tableView.isEditing = false
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ShowParty") {
            
//            let detailVC = segue.destination as! UINavigationController
            let partyVC = segue.destination as! PartyViewController
            let party = sender as! PDParty
            partyVC.party = party
        }
    }
}

