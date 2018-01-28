
//
// Pluralize.swift
// link:
//     https://github.com/joshualat/Pluralize.swift
//
// usage:
//     "Tooth".pluralize
//     "Nutrtion".pluralize
//     "House".pluralize(count: 1)
//     "Person".pluralize(count: 2, with: "Persons")
//
// Copyright (c) 2014 Joshua Arvin Lat
//
// MIT License
//
// Permission is hereby granted, free of charge, to any person obtaining
// a copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to
// the following conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
// LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
// OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
// WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
import Foundation

public class Pluralize {
    static let sharedInstance = Pluralize()
    
    var uncountables:[String] = []
    var rules:[(rule: String, template: String)] = []
    
    private init() {
        uncountables = [
            "access", "accommodation", "adulthood", "advertising", "advice",
            "aggression", "aid", "air", "alcohol", "anger", "applause",
            "arithmetic", "art", "assistance", "athletics", "attention",
            "bacon", "baggage", "ballet", "beauty", "beef", "beer", "biology",
            "botany", "bread", "butter", "carbon", "cash", "chaos", "cheese",
            "chess", "childhood", "clothing", "coal", "coffee", "commerce",
            "compassion", "comprehension", "content", "corruption", "cotton",
            "courage", "currency", "dancing", "danger", "data", "delight",
            "dignity", "dirt", "distribution", "dust", "economics", "education",
            "electricity", "employment", "engineering", "envy", "equipment",
            "ethics", "evidence", "evolution", "faith", "fame", "fish", "flour", "flu",
            "food", "freedom", "fuel", "fun", "furniture", "garbage", "garlic",
            "genetics", "gold", "golf", "gossip", "grammar", "gratitude", "grief",
            "ground", "guilt", "gymnastics", "hair", "happiness", "hardware",
            "harm", "hate", "hatred", "health", "heat", "height", "help", "homework",
            "honesty", "honey", "hospitality", "housework", "humour", "hunger",
            "hydrogen", "ice", "ice", "cream", "importance", "inflation", "information",
            "injustice", "innocence", "iron", "irony", "jealousy", "jelly", "judo",
            "karate", "kindness", "knowledge", "labour", "lack", "laughter", "lava",
            "leather", "leisure", "lightning", "linguistics", "litter", "livestock",
            "logic", "loneliness", "luck", "luggage", "machinery", "magic",
            "management", "mankind", "marble", "mathematics", "mayonnaise",
            "measles", "meat", "methane", "milk", "money", "mud", "music", "nature",
            "news", "nitrogen", "nonsense", "nurture", "nutrition", "obedience",
            "obesity", "oil", "oxygen", "passion", "pasta", "patience", "permission",
            "physics", "poetry", "pollution", "poverty", "power", "pronunciation",
            "psychology", "publicity", "quartz", "racism", "rain", "relaxation",
            "reliability", "research", "respect", "revenge", "rice", "rubbish",
            "rum", "salad", "satire", "seaside", "shame", "shopping", "silence",
            "sleep", "smoke", "smoking", "snow", "soap", "software", "soil",
            "sorrow", "soup", "speed", "spelling", "steam", "stuff", "stupidity",
            "sunshine", "symmetry", "tennis", "thirst", "thunder", "toast",
            "tolerance", "toys", "traffic", "transporation", "travel", "trust", "understanding",
            "unemployment", "unity", "validity", "veal", "vengeance", "violence"]
        
        rule(rule: "$", with:"$1s")
        rule(rule: "s$", with:"$1ses")
        rule(rule: "(t|r|l|b)y$", with:"$1ies")
        rule(rule: "x$", with:"$1xes")
        rule(rule: "(sh|zz|ss)$", with:"$1es")
        rule(rule: "(ax)is", with: "$1es")
        rule(rule: "(cact|nucle|alumn|bacill|fung|radi|stimul|syllab)us$", with:"$1i")
        rule(rule: "(corp)us$", with:"$1ora")
        rule(rule: "sis$", with:"$1ses")
        rule(rule: "ch$", with:"$1ches")
        rule(rule: "o$", with:"$1os")
        rule(rule: "(buffal|carg|mosquit|torped|zer|vet|her|ech)o$", with:"$1oes")
        rule(rule: "fe$", with:"$1ves")
        rule(rule: "(thie)f$", with:"$1ves")
        rule(rule: "oaf$", with:"$1oaves")
        rule(rule: "um$", with:"$1a")
        rule(rule: "ium$", with:"$1ia")
        rule(rule: "oof$", with:"$1ooves")
        rule(rule: "(nebul)a", with:"$1ae")
        rule(rule: "(criteri|phenomen)on$", with:"$1a")
        rule(rule: "(potat|tomat|volcan)o$", with:"$1oes")
        rule(rule: "^(|wo|work|fire)man$", with: "$1men")
        rule(rule: "(f)oot$", with: "$1eet")
        rule(rule: "lf$", with: "$1lves")
        rule(rule: "(t)ooth$", with: "$1eeth")
        rule(rule: "(g)oose$", with: "$1eese")
        rule(rule: "^(c)hild$", with: "$1hildren")
        rule(rule: "^(o)x$", with: "$1xen")
        rule(rule: "^(p)erson$", with: "$1eople")
        rule(rule: "(m|l)ouse$", with: "$1ice")
        rule(rule: "^(d)ie$", with: "$1ice")
        rule(rule: "^(alg|vertebr|vit)a$", with: "$1ae")
        rule(rule: "^(a)lumna$", with: "$1lumnae")
        rule(rule: "^(a)pparatus$", with: "$1pparatuses")
        rule(rule: "^(ind)ex$", with: "$1ices")
        rule(rule: "^(append|matr)ix$", with: "$1ices")
        rule(rule: "^(b|tabl)eau$", with: "$1eaux")
        rule(rule: "arf$", with: "$1arves")
        rule(rule: "(embarg)o$", with: "$1oes")
        rule(rule: "(gen)us$", with: "$1era")
        rule(rule: "(r)oof$", with: "$1oofs")
        rule(rule: "(l)eaf$", with: "$1eaves")
        rule(rule: "(millen)ium$", with: "$1ia")
        rule(rule: "(th)at$", with: "$1ose")
        rule(rule: "(th)is$", with: "$1ese")
        
        unchanging(word: "sheep")
        unchanging(word: "deer")
        unchanging(word: "moose")
        unchanging(word: "swine")
        unchanging(word: "bison")
        unchanging(word: "corps")
        unchanging(word: "means")
        unchanging(word: "series")
        unchanging(word: "scissors")
        unchanging(word: "species")
    }
    
    public class func apply(word: String) -> String {
        if sharedInstance.uncountables.contains(word.lowercased()) || String(word).count == 0 {
            return word
        } else {
            for pair in sharedInstance.rules {
                let newValue = regexReplace(input: word, pattern: pair.rule, template: pair.template)
                if newValue != word {
                    return newValue
                }
            }
        }
        
        return word
    }
    
    public class func rule(rule: String, with template: String) {
        sharedInstance.rule(rule: rule, with: template)
    }
    
    public class func uncountable(word: String) {
        sharedInstance.uncountable(word: word)
    }
    
    public class func unchanging(word: String) {
        sharedInstance.unchanging(word: word)
    }
    
    
    private class func regexReplace(input: String, pattern: String, template: String) -> String {
        let regex = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        let range = NSMakeRange(0, String(input).count)
        let output = regex.stringByReplacingMatches(in: input, options: [], range: range, withTemplate: template)
        return output
    }
    
    private func rule(rule: String, with template: String) {
        rules.insert((rule: rule, template: template), at: 0)
    }
    
    private func uncountable(word: String) {
        uncountables.insert(word.lowercased(), at: 0)
    }
    
    private func unchanging(word: String) {
        uncountables.insert(word.lowercased(), at: 0)
    }
}

extension String {
    public func pluralize(count: Int = 2, with: String = "") -> String {
        if count == 1 {
            return self
        } else {
            if with.length != 0 {
                return with
            } else {
                return Pluralize.apply(word: self)
            }
        }
    }
    
    // Workaround to allow us to use `count` as an argument name in pluralize() above.
    private var length: Int {
        return String(self).count
    }
}

