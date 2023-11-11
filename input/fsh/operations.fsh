Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: Product-substitutes
InstanceOf: OperationDefinition
Usage: #definition
Title: "Find substitute"
Description: "Operation to find product substitutes given the relevant attributes and the substitution context"
* name = "ProductSubstitutes"
* title = "Product substitutes"
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-05-19T02:57:50+00:00"
* jurisdiction = $m49.htm#001 "World"
* affectsState = false
* code = #substitutes
* resource[+] = #Medication
* resource[+] = #MedicationKnowledge
* resource[+] = #MedicinalProductDefinition

* system = true
* type = true
* instance = true

* parameter[0]
  * name = #country
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The context in which the substitution is being executed, meaning the rules for substitution that are to be applied. Typically and by default the code for the country where the substitution is taking place. "
  * type = #Coding
* parameter[+]
  * name = #doseform
  * use = #in
  * scope = #instance
  * min = 0
  * max = "1"
  * documentation = "The dose form. This coded element can include codes from different codesystems - which will determine the possibility of finding a substtitute. Some systems may optionally support a search based on display text besides the coded form."
  * type = #Coding
* parameter[+]
  * name = #ingredient
  * use = #in
  * scope = #instance
  * min = 0
  * max = "*"
  * documentation = "Each relevant ingredient to find substitutes - each ingredient has 2 parts - the substance and the strength"
  * part[+]
    * name = #substance
    * use = #in
    * scope = #instance
    * min = 1
    * max = "1"
    * documentation = "The substance that will be used to search. Substance SHALL be a coded parameter"
    * type = #Coding
  * part[+]
    * name = #strength
    * use = #in
    * scope = #instance
    * min = 0
    * max = "1"
    * documentation = "The strength of the substance that will be used to search. It is a RatioRange property: if the value is a fixed value, either minimum or maximum denominator are used (or both). Denominator is optional."
    * type = #RatioRange
