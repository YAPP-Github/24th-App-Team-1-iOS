//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by eunseou on 6/11/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let profileService = Project.makeProject(
    module: .service(.ProfileService),
    targets: [
        .service(module: .ProfileService, dependencies: [
            .domain(module: .ProfileDomain),
            .core(module: .Storage),
            .core(module: .Networking),
            .shared(module: .ThirdPartyLib)
        ])
    ]
)
