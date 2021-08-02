//
//  Post.swift
//  Navigation
//
//  Created by TIS Developer on 30.07.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation

struct Post {
    let author: String
    let description: String
    let image: String
    let likes: Int
    let views: Int
}

struct Storage {
    let arrayPost = [
        Post(
            author: "Ivan",
            description: "dfsdfgdsfgdsfsdf",
            image: "",
            likes: 5,
            views: 255
        ),
        Post(
            author: "Masha",
            description: "dfsdfgdsfgdsfsdf",
            image: "",
            likes: 15,
            views: 5000
        ),
        Post(
            author: "Dasha",
            description: "dfsdfgdsfgdsfsdf",
            image: "",
            likes: 52,
            views: 300
        ),
        Post(
            author: "Petr",
            description: "dfsdfgdsfgdsfsdf",
            image: "",
            likes: 57,
            views: 100
        ),
    ]
}
