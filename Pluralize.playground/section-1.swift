// Playground - noun: a place where people can play

import Pluralize

//// BASIC USAGE
"Person".pluralize()
// People

"Wolf".pluralize(count: 1)
// Wolf

"Person".pluralize(with: "Persons")
// Persons


//// ADDING CUSTOM RULES: SINGULAR = PLURAL

"Shrimp".pluralize()
// Shrimps

Pluralize.unchanging("shrimp")

"Shrimp".pluralize()
// Shrimp



//// ADDING CUSTOM RULES: UNCOUNTABLE

"Water".pluralize()
// Waters

Pluralize.uncountable("water")
"Water".pluralize()
// Water



//// ADDING CUSTOM RULES: NEW REGEX RULE

"Person".pluralize()
// People

Pluralize.rule("(p)erson$", with: "$1ersons")
"Person".pluralize()
// Persons
"Spokesperson".pluralize()
// Spokespersons
