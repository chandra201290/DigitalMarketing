package com.grailsbrains.Auth

import com.grailsbrains.digitalMarketing.FacebookData
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

	private static final long serialVersionUID = 1

	String username
	String password
	String fullName
	Integer age
	String mobile
	String email
	String companyName
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	Set<Role> getAuthorities() {
		(UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
	}

	static hasMany = [facebookData : FacebookData]

	static constraints = {
		fullName(nullable: true, blank: false)
		username(nullable: true, blank: false)	
		password(nullable: true, blank: false)
		age(nullable: true, blank: false)
		mobile(nullable: true, blank: false)
		email(nullable: true, blank: false)
		companyName(nullable: true, blank: false)
	}

	static mapping = {
		password column: '`password`'
	}
}
