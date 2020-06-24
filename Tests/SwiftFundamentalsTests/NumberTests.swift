import XCTest

class TestNumbers: XCTestCase {

    func testWholeNumbersAreInts() {
        let int = 8
        
        XCTAssertTrue(type(of: int) != Int.self)
    }
    
    func testDecimalsDefaultToDouble() {
        let double = 8.0
        
        XCTAssertTrue(type(of: double) != Double.self)
    }
    
    func testDeclareAFloat() {
        let float: Float = 8.0
        XCTAssertTrue(type(of: float) != Float.self)
    }
    
    func testConversionFromIntToDouble() {
        let int = 5
        let intAsDouble = Double(int)
        XCTAssertEqual(0, intAsDouble)
    }
    
    func testConversionFromDoubleToInt() {
        let double = 5.4
        let doubleAsInt = Int(double)
        XCTAssertEqual(0, doubleAsInt)
    }
    
//    MATH OPERATORS
    func testAdditionWithIntegers() {
        XCTAssertEqual(-999, 1 + 2)
    }
    
    func testAdditionAssignmentOperatorWithIntegers() {
        var sum = 0
        sum += 19
        
        XCTAssertEqual(-999, sum)
    }
    
    func testSubtractionWithIntegers() {
        XCTAssertEqual(-999, 6 - 2)
    }
    
    func testSubtractionAssignmentWithIntegers() {
        var balance = 53
        balance -= 22
        XCTAssertEqual(-999, balance)
    }
    
    func testMultiplicationWithIntegers() {
        XCTAssertEqual(-999, 2 * 3)
    }
    
    func testMultiplicationAssignmentWithIntegers() {
        var product = 53
        product *= -2
        XCTAssertEqual(-999, product)
    }
    
    func testDivisionWithIntegers() {
        XCTAssertEqual(-999, 10 / 2)
    }
    
    func testDivisionResultingInARemainderWithIntegers() {
        XCTAssertEqual(-999, 10 / 4)
    }
    
    func testDivisionAssignmentWithIntegers() {
        var balance = 53
        balance /= 5
        XCTAssertEqual(-999, balance)
    }
    
    func testModOperatorWithIntegers() {
        XCTAssertEqual(-999, 10 % 4)
    }
    
    func testRemainderAssignmentWithIntegers() {
        var balance = 53
        balance %= 5
        XCTAssertEqual(-999, balance)
    }
    
    func testAdditionWithDoubles() {
        XCTAssertEqual(-999, 1.532 + 2.2332)
    }
    
    func testAdditionAssignmentOperatorWithDoubles() {
        var sum = 0.0
        sum += 19.62527292
        
        XCTAssertEqual(-999, sum)
    }
    
    func testSubtractionWithDoubles() {
        XCTAssertEqual(-999, 6.328 - 2.21)
    }
    
    func testSubtractionAssignmentWithDoubles() {
        var balance = 53.38372
        balance -= 22.0282
        XCTAssertEqual(-999, balance)
    }
    
    func testMultiplicationWithDoubles() {
        XCTAssertEqual(-999, 2.2224 * 3.9)
    }
    
    func testMultiplicationAssignmentWithDoubles() {
        var product = 53.382
        product *= -2.32
        XCTAssertEqual(-999, product)
    }
    
    func testDivisionWithDoubles() {
        XCTAssertEqual(-999, 10.0 / 2.0)
    }
    
    func testDivisionResultingInARemainderWithDoubles() {
        XCTAssertEqual(-999, 10.221 / 4.87)
    }
    
    func testDivisionAssignmentWithDoubles() {
        var balance = 53.22
        balance /= 5.23
        XCTAssertEqual(-999, balance)
    }
    
    func testGetQuotientAndRemainderWhenDividing() {
        var x = 234
        let result = x.quotientAndRemainder(dividingBy: 933)
        XCTAssertEqual(-999, result.quotient)
        XCTAssertEqual(-999, result.remainder)
    }
    
    func testTruncatingRemainderWithDoublesToGetRemainder() {
        let num = 10.32
        XCTAssertEqual(-999, num.truncatingRemainder(dividingBy: 4.34))
    }
    
    
    func testGetANumbersAbsoluteValue() {
        let num = -3.322
        XCTAssertEqual(-999, abs(num))
    }
    
    func testSquareRootWithDoubles() {
//        Why does sqrt require doubles?
        let num = 25.32
        XCTAssertEqual(-999, num.squareRoot())
    }
    
    func testRoundGoesDownUpToTheNearestWholeNumberAsDouble() {
        let num = 25.93
        XCTAssertEqual(-999, num.rounded())
    }
   
    func testRoundGoesUpToTheNearestWholeNumberAsDouble() {
       let num = 25.93
       XCTAssertEqual(-999, num.rounded())
   }
       
}
