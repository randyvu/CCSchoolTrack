package org.crisiscamp.schooltrack.datamodel

abstract class Institution {
	String name
	
	static hasContacts = [contact:Contact]

	Address address
	String damageLevel
	String institutionStatus
	String comments
	Boolean inSahana
	static hasURLs = [imagesURL:String]
	String department
	String associatedDoc
	
	String lossValue
	DataProvider dataProvider
	
    static constraints = {
    }
	
	static mapping = {
        tablePerHierarchy false
    }
}
