//
//  MCap+Comparable.swift
//
// Copyright 2021, 2022  OpenAlloc LLC
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.
//

import Foundation

import AllocData

extension MCap: Comparable {
    public static func < (lhs: MCap, rhs: MCap) -> Bool {
        lhs.primaryKey < rhs.primaryKey
    }
}

extension MCap.Key: Comparable {
    public static func < (lhs: MCap.Key, rhs: MCap.Key) -> Bool {
        if lhs.accountNormID < rhs.accountNormID { return true }
        if lhs.accountNormID > rhs.accountNormID { return false }

        if lhs.assetNormID < rhs.assetNormID { return true }
        if lhs.assetNormID > rhs.assetNormID { return false }

        return false
    }
}
