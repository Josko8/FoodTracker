//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Josip Mirkovic on 2018-05-04.
//  Copyright © 2018 Josip Mirkovic. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal test cases
    func testMealInitializationSucceeds(){
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let maxRatingMeal = Meal.init(name: "Max", photo: nil, rating: 5)
        XCTAssertNotNil(maxRatingMeal)
    }
    
    func testMealInitializationFailed(){
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 1)
        XCTAssertNil(emptyStringMeal)
    }
    
}
