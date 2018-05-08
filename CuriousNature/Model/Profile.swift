//
//  Profile.swift
//  CuriousNature
//
//  Created by Sam Richardson on 5/7/18.
//  Copyright © 2018 Sam Richardson. All rights reserved.
//

import Foundation

struct Profile: Codable {
    
    // MARK: - Environment Properties
    var backgroundColor: CGColor
    var shouldFade: Bool
    var fadeAlpha: CGFloat
    var fadeFrequency: Int
    
    // MARK: - Flock Properties
    var population: Int
    var colors: [CGColor]
    var alpha: CGFloat
    
    // MARK: - Interaction Properties
    var maximumSpeed: CGFloat
    var maximumForce: CGFloat
    var separationWeight: CGFloat
    var alignmentWeight: CGFloat
    var cohesionWeight: CGFloat
    var activeRange: CGFloat
    
    // MARK: - Initializer
    
    init() {
        backgroundColor = CGColor(gray: 0.0, alpha: 1.0)
        shouldFade = true
        fadeAlpha = 0.01
        fadeFrequency = 5
        population = 30
        colors = Array(count: 30) {CGColor.random()}
        alpha = 0.2
        maximumSpeed = 10.0
        maximumForce = 0.1
        separationWeight = 1.0
        alignmentWeight = 1.7
        cohesionWeight = 1.5
        activeRange = 50.0
    }
    
    init(backgroundColor: CGColor, shouldFade: Bool, fadeAlpha: CGFloat, fadeFrequency: Int, population: Int, colors: [CGColor], alpha: CGFloat, maximumSpeed: CGFloat, maximumForce: CGFloat, separationWeight: CGFloat, alignmentWeight: CGFloat, cohesionWeight: CGFloat, activeRange: CGFloat) {
        self.backgroundColor = backgroundColor
        self.shouldFade = shouldFade
        self.fadeAlpha = fadeAlpha
        self.fadeFrequency = fadeFrequency
        self.population = population
        self.colors = colors
        self.alpha = alpha
        self.maximumSpeed = maximumSpeed
        self.maximumForce = maximumForce
        self.separationWeight = separationWeight
        self.alignmentWeight = alignmentWeight
        self.cohesionWeight = cohesionWeight
        self.activeRange = activeRange
    }
    
}