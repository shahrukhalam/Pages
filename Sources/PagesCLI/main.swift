//
//  main.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import Pages
import PathKit

try kickStart()

private func kickStart() throws {
    try generateCSS()
    try generateHTML()
}

private func generateCSS() throws {
    print(Path.current)
}

private func generateHTML() throws {
}
