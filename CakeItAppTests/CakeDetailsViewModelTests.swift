//
//  CakeDetailsViewModelTests.swift
//  CakeItAppTests
//
//  Created by Jasim Uddin on 14/03/2022.
//

import XCTest
@testable import CakeItApp

class CakeDetailsViewModelTests: XCTestCase {

    var viewModel:CakeDetailsViewModel!
    
    override func setUp() {
        viewModel = CakeDetailsViewModel(cakeDetails:CakeDetails(title: "Lemon Cheesecake", desc: "A cheesecake made of lemon", image: ""))
    }

    
    func testPetsDetails() {
        XCTAssertEqual(viewModel.cakeDetails.title ,"Lemon Cheesecake", "Cake Name not matching")
        XCTAssertEqual(viewModel.cakeDetails.desc ,"A cheesecake made of lemon", "cake height not matching")
    }

}
