//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "You're favorite flower market? 💐",
                 description: "The best place to get all the scents you need!"),
            Task(title: "The best dogpark to go to? 🦮",
                 description: "Where you'll find the most lovable pets playing!"),
            Task(title: "The best place to get Mediterranean food?",
                 description: "This place will provided the freshest foods along the coastline!"),
            Task(title: "You're favorite bookstore!",
                 description: "This place will provided the freshest foods along the coastline!")
        ]
    }
}
