//
//  StyleTests.swift
//  
//
//  Created by Shahrukh Alam on 08/08/22.
//

import XCTest
@testable import Pages

class StyleTests: XCTestCase {
    func testIndexNavStyle() {
        let indexNavStyle = NavStyle()
        
        let expectation =
            """
        .indexNav {
        position: fixed;
        left: 0px;
        top: 0px;
        right: 0px;
        bottom: auto;
        background-color: rgba(29, 29, 31, 0.72);
        text-align: center;
        -webkit-backdrop-filter: saturate(180%) blur(20px);
        backdrop-filter: saturate(180%) blur(20px);
        z-index: 1;
        }
        .indexNav a {
        padding: 16px 16px 16px 16px;
        display: inline-block;
        text-decoration: none;
        }
        .activeLink {
        color: rgba(139, 139, 139, 1.0);
        pointer-events: none;
        }
        .inactiveLink {
        color: White;
        }
        a:hover {
        color: rgba(41, 151, 255, 1.0);
        }
        """
        
        XCTAssertEqual(indexNavStyle.element, expectation)
    }
    
    func testKickOffStyle() {
        let kickOffStyle = KickOffStyle()
        
        let expectation =
            """
        * {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        }
        """
        
        XCTAssertEqual(kickOffStyle.element, expectation)
    }
    
    func testDarkIndexBodyStyle() {
        let darkIndexBodyStyle = DarkIndexBodyStyle()
        
        let expectation =
            """
        body {
        padding: 51px 0px 0px 0px;
        background-color: Black;
        color: White;
        font-family: SF Pro Display, SF Pro Icons, Helvetica Neue, Helvetica, Arial;
        }
        """
        
        XCTAssertEqual(darkIndexBodyStyle.element, expectation)
    }
}
