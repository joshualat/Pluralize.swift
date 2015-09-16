//
//  Pluralize.swift
//
//  Created by Joshua Arvin Lat on 12/26/14.
//  Copyright (c) 2014 Joshua Lat. All rights reserved.
//

import XCTest
import Pluralize

class PluralizeTests: XCTestCase {
    func testRegularNouns() {
        let pairs = [
            ("apple", "apples"),
            ("book", "books"),
            ("chair", "chairs"),
            ("picture", "pictures"),
            ("page", "pages"),
            ("key", "keys"),
            ("computer", "computers"),
            ("box", "boxes"),
            ("wish", "wishes"),
            ("kiss", "kisses"),
            ("watch", "watches"),
            ("buzz", "buzzes"),
            ("garage", "garages"),
            ("judge", "judges"),
            ("photo", "photos"),
            ("avocado", "avocados"),
            ("radio", "radios"),
            ("baby", "babies"),
            ("fry", "fries"),
            ("fly", "flies"),
            ("ally", "allies"),
            ("boy", "boys"),
            ("toys", "toys"),
            ("belief", "beliefs"),
            ("chief", "chiefs"),
            ("city", "cities"),
            ("amnesty", "amnesties")
        ]
        
        for (singular, plural) in pairs {
            XCTAssertEqual(singular.pluralize(), plural, "Plural of \(singular) should be \(plural)")
        }
    }
    
    func testUncountableNouns() {
        let uncountables = [
            "air",
            "assistance",
            "coffee",
            "envy",
            "engineering",
            "gratitude",
            "help",
            "homework",
            "hunger",
            "information",
            "livestock",
            "mathematics",
            "smoke",
            "software",
            "validity"
        ]
        
        for word in uncountables {
            XCTAssertEqual(word.pluralize(), word, "Plural of \(word) should be \(word)")
        }
    }
    
    func testIrregularNouns() {
        let pairs = [
            ("addendum", "addenda"),
            ("alga", "algae"),
            ("alumna", "alumnae"),
            ("alumnus", "alumni"),
            ("analysis", "analyses"),
            ("antenna", "antennas"),
            ("apparatus", "apparatuses"),
            ("appendix", "appendices"),
            ("axis", "axes"),
            ("bacillus", "bacilli"),
            ("bacterium", "bacteria"),
            ("basis", "bases"),
            ("beau", "beaux"),
            ("bison", "bison"),
            ("buffalo", "buffaloes"),
            ("bureau", "bureaus"),
            ("bus", "buses"),
            ("cactus", "cacti"),
            ("calf", "calves"),
            ("child", "children"),
            ("corps", "corps"),
            ("corpus", "corpora"),
            ("crisis", "crises"),
            ("criterion", "criteria"),
            ("curriculum", "curricula"),
            ("datum", "data"),
            ("deer", "deer"),
            ("die", "dice"),
            ("dwarf", "dwarves"),
            ("diagnosis", "diagnoses"),
            ("echo", "echoes"),
            ("elf", "elves"),
            ("ellipsis", "ellipses"),
            ("embargo", "embargoes"),
            ("emphasis", "emphases"),
            ("erratum", "errata"),
            ("fireman", "firemen"),
            ("fish", "fish"),
            ("focus", "focuses"),
            ("foot", "feet"),
            ("formula", "formulas"),
            ("fungus", "fungi"),
            ("genus", "genera"),
            ("goose", "geese"),
            ("half", "halves"),
            ("hero", "heroes"),
            ("hippopotamus", "hippopotamuses"),
            ("hoof", "hooves"),
            ("hypothesis", "hypotheses"),
            ("index", "indices"),
            ("knife", "knives"),
            ("leaf", "leaves"),
            ("life", "lives"),
            ("loaf", "loaves"),
            ("louse", "lice"),
            ("man", "men"),
            ("matrix", "matrices"),
            ("means", "means"),
            ("medium", "media"),
            ("memorandum", "memoranda"),
            ("millennium", "millennia"),
            ("moose", "moose"),
            ("mosquito", "mosquitoes"),
            ("mouse", "mice"),
            ("nebula", "nebulae"),
            ("neurosis", "neuroses"),
            ("nucleus", "nuclei"),
            ("oasis", "oases"),
            ("octopus", "octopuses"),
            ("ovum", "ova"),
            ("ox", "oxen"),
            ("paralysis", "paralyses"),
            ("parenthesis", "parentheses"),
            ("person", "people"),
            ("phenomenon", "phenomena"),
            ("potato", "potatoes"),
            ("radius", "radii"),
            ("scarf", "scarves"),
            ("self", "selves"),
            ("series", "series"),
            ("sheep", "sheep"),
            ("shelf", "shelves"),
            ("scissors", "scissors"),
            ("species", "species"),
            ("stimulus", "stimuli"),
            ("stratum", "strata"),
            ("syllabus", "syllabi"),
            ("symposium", "symposia"),
            ("synthesis", "syntheses"),
            ("synopsis", "synopses"),
            ("tableau", "tableaux"),
            ("that", "those"),
            ("thesis", "theses"),
            ("thief", "thieves"),
            ("this", "these"),
            ("tomato", "tomatoes"),
            ("tooth", "teeth"),
            ("torpedo", "torpedoes"),
            ("vertebra", "vertebrae"),
            ("veto", "vetoes"),
            ("vita", "vitae"),
            ("watch", "watches"),
            ("wife", "wives"),
            ("wolf", "wolves"),
            ("woman", "women"),
            ("zero", "zeroes")
        ]
        
        for (singular, plural) in pairs {
            XCTAssertEqual(singular.pluralize(), plural, "Plural of \(singular) should be \(plural)")
        }
    }
}
