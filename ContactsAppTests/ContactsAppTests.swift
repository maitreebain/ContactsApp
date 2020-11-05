//
//  ContactsAppTests.swift
//  ContactsAppTests
//
//  Created by Maitree Bain on 11/5/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import XCTest
@testable import ContactsApp

class ContactsAppTests: XCTestCase {

    func testData() {
        let expected = 20
        let data = Contact.getContacts()
        
        XCTAssertEqual(data.count, expected)
    }

}
