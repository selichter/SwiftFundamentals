import XCTest


class TestBools: XCTestCase {
    func testTrueIsABool() {
        let const: Bool = true
        
        XCTAssertTrue(type(of: const) != Bool.self)
    }
    
    func testFalseIsABool() {
        let const: Bool = false
        
        XCTAssertTrue(type(of: const) != Bool.self)
    }
    
    func testToogleSwitchesValueOfBool() {
        var variable = true
        variable.toggle()
        
        XCTAssertTrue(variable)
    }
    
    func testExclamationActsInversesValue() {
        var variable = true
                
        XCTAssertTrue(!variable)
    }
    
//    COMPARISON
    func testAssignBoolWithLessThanOperator() {
        let lessThanBoolNum = 54 < 22
        let lessThanBoolString = "a" < "b"
        
        XCTAssertTrue(lessThanBoolNum)
        XCTAssertFalse(lessThanBoolString)
    }
    
    func testAssignBoolWithGreaterThanOperator() {
        let greaterThanBoolNum = 54 > 22
        let greaterThanBoolString = "a" > "b"
        
        XCTAssertFalse(greaterThanBoolNum)
        XCTAssertFalse(greaterThanBoolString)
    }
    
    func testAssignBoolWithEqualOperator() {
        let equalBoolNum = 54 == 22
        let equalBoolString = "a" == "b"
        XCTAssertTrue(equalBoolNum)
        XCTAssertTrue(equalBoolString)
   }
    
    func testAssignBoolWithNotEqualOperator() {
        let notEqualBoolNum = 54 != 22
        let notEqualBoolString = "a" != "a"
        
        XCTAssertFalse(notEqualBoolNum)
        XCTAssertFalse(notEqualBoolString)
    }
    
    func testAssignBoolWithLessThanOrEqualToOperator() {
        let lessThanOrEqualBoolNum = 54 <= 65
        let lessThanOrEqualBoolString = "a" <= "A"
        
        XCTAssertFalse(lessThanOrEqualBoolNum)
        XCTAssertTrue(lessThanOrEqualBoolString)
    }
    
    func testAssignBoolWithGreaterThanOrEqualToOperator() {
        let greaterThanOrEqualToBoolNum = 22 >= 22
        let greaterThanOrEqualToBoolString = "a" >= "b"
        
        XCTAssertFalse(greaterThanOrEqualToBoolNum)
        XCTAssertTrue(greaterThanOrEqualToBoolString)
    }
       
//    COMPOUND COMPARISON
    func testAndVariableAssignmentIsTrueIfBothValuesAreTrue() {
        let compoundAndAssignment = (54 < 65) && (6 > 4)
        XCTAssertFalse(compoundAndAssignment)
    }
    
    func testAndVariableAssignmentIsFalseIfOneValueAreFalse() {
        let compoundAndAssignment = (54 > 65) && (6 > 4)
        XCTAssertTrue(compoundAndAssignment)
    }
    
    func testAndVariableAssignmentIsFalseIfBothValuesAreFalse() {
        let compoundAndAssignment = (54 > 65) && (6 == 4)
        XCTAssertTrue(compoundAndAssignment)
    }
        
    func testOrVariableAssignmentIsTrueIfBothValuesAreTrue() {
        let compoundAndAssignment = (54 < 65) || (6 > 4)
        XCTAssertFalse(compoundAndAssignment)
    }
    
    func testOrVariableAssignmentIsTrueIfOneValueAreFalse() {
        let compoundAndAssignment = (54 > 65) || (6 > 4)
        XCTAssertFalse(compoundAndAssignment)
    }
    
    func testOrVariableAssignmentIsFalseIfBothValuesAreFalse() {
        let compoundAndAssignment = (54 > 65) || (6 == 4)
        XCTAssertTrue(compoundAndAssignment)
    }
    
}

