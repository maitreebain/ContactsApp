//
//  Contacts.swift
//  ContactsApp
//
//  Created by Maitree Bain on 11/5/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import Foundation

struct Contact: Hashable, Equatable {
    let phone: Int
    let first: String
    let last: String
    
    var fullName: String {
        return first + " " + last
    }
    
    static let contactsDict = [03364152046: ("Christin", "Böttger"),
                        927525456: ("Joaquin", "Bravo"),
                        6868840334: ("David", "Edwards"),
                        07905753: ("Roope", "Mattila"),
                        27991860: ("Lærke", "Wist"),
                        957021797: ("Jonathan", "Diez"),
                        01768757320: ("Emily", "Long"),
                        0501439641: ("Noe", "Roussel"),
                        375351453: ("Justin", "Harris"),
                        3028950023: ("Ezra", "Lee"),
                        0478121870: ("Ninon", "Bernard"),
                        60749217: ("Helene", "Strange"),
                        7638623154: ("Estefânia", "Barros"),
                        2945132492: ("Gül", "Sinanoğlu"),
                        1963139555: ("George", "Miller"),
                        64513463: ("Cecilie", "Peterson"),
                        01539627648: ("Jared", "Mitchelle"),
                        0157693915: ("Valdelaine", "de Souza"),
                        07798852536: ("Kristin", "Tausch"),
                        00499228235: ("Marissa", "Rode"),
    ]
    
    static func getContacts() -> [Contact]{
        var contacts = [Contact]()
        
        for (key, value) in contactsDict {
            let contact = Contact(phone: key, first: value.0, last: value.1)
            contacts.append(contact)
        }
        
        return contacts
    }
}



