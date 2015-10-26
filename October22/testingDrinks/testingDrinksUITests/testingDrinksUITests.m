//
//  testingDrinksUITests.m
//  testingDrinksUITests
//
//  Created by Stephen Printup on 10/22/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface testingDrinksUITests : XCTestCase

@end

@implementation testingDrinksUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
  /////  XCUIApplication *app = [[XCUIApplication alloc] init];
 /////   XCTAssertEqual([app.tables.cells count], 3);

  /////  [app.tables.staticTexts[@"orange juice"] tap];
  /////  [app.staticTexts[@"orange juice"] tap];
    
    //(XCUIElement *)elementMatchingType:(XCUIElementType)elementType identifier:(nullable NSString *)identifier;
    //XCUIElement
 /////   XCTAssertEqualObjects(app.tables.cells, app.staticTexts[@"MainLabel"]);
    
    //XCTAssertEqual(app.tables.cells, @"orange juice");
   // XCTAssertEqual(app.tables.staticTexts.cells, )
   // [app.tables.cells count]
    
    // ************************
    
    NSString *textOfCell1 = @"orange juice";
    
    //testing proper number of rows
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCTAssertEqual([app.tables.cells count], 3);

    //table cell
    XCUIElement *mytableviewTable = app.tables[@"MyTableView"];
    //tap orange juice
    [mytableviewTable.staticTexts[textOfCell1] tap];
    //is it equal to orange juice?
    XCTAssertEqualObjects(app.staticTexts[@"MainLabel"].label, textOfCell1);
    NSLog(@"%p",app.staticTexts[@"MainLabel"].label);//gives address
    
    
    // ************************
//    
//    NSString *textOfCell2 = @"apple juice";
//    
//    XCUIElement *backButton = [[[app.navigationBars[@"SecondVC"] childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Back"] elementBoundByIndex:0];
//    [backButton tap];
//    [mytableviewTable.staticTexts[textOfCell2] tap];
//    [mainlabelStaticText tap];
//    
//    XCTAssertEqualObjects(app.staticTexts[@"MainLabel"].label, textOfCell2);
    
    // ************************
    
    
//    [app.tables.cells elementBoundByIndex:0].staticTexts[@"Idoflabelincell"]
//    
//    XCTAssertEqualObjects(app.tables.cells, app.staticTexts[@"MainLabel"]);

    
    
    
}


@end
