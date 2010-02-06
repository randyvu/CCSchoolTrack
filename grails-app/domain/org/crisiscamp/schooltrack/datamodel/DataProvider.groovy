package org.crisiscamp.schooltrack.datamodel

class DataProvider {
	
	static hasManyContacts = [contact:Contact]
	
	String url
	String comments
	String description
	
    static constraints = {
    }
}
