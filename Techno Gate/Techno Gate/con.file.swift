//
//  con.file.swift
//  Techno Gate
//
//  Created by Mohamed Azab on 20/11/2022.
//
import Foundation
import SwiftUI

struct Contact: Identifiable {
    let imagename: String
    let name: String
    let pro: String
    let phone: String
    let id = UUID()
}

let contacts = [
    Contact(imagename: "1", name: "Iphone 14", pro: "265 GB", phone: "7 inch"),
    Contact(imagename: "2", name: "Iphone 13", pro: "125 GB", phone: "5 inch"),
    Contact(imagename: "3", name: "Iphone 12", pro: "512 GB", phone: "7 inch"),
    Contact(imagename: "4", name: "Iphone 11", pro: "512 GB", phone: "5 inch"),
    Contact(imagename: "5", name: "Ipad air 2019", pro: "512 GB", phone: "9 inch"),
    Contact(imagename: "6", name: "Samsung s22 ultra", pro: "265 GB", phone: "8 inch"),
    Contact(imagename: "7", name: "ipad pro 2020", pro: "512", phone: "12 inch")
]

