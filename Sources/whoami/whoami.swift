/*
 *  whoami - Prints the user's login name.
 *  
 *  Copyright (C) 2022 WDXP.
 *  SPDX-License-Identifier: MIT
 *
 *  Part of the neueCoreutils Project.
 */

import Foundation
import ArgumentParser

let fullname = NSFullUserName()
let username = NSUserName()

@main
struct whoami: ParsableCommand {
    @Flag(name: .short, help: "Print the full username.")
    var f = false

    mutating func run() throws {
        if f {
            print(fullname)
            exit(0)
        } else {
            print(username)
            exit(0)
        }
    }
}