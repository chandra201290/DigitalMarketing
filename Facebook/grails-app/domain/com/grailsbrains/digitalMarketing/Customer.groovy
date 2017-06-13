package com.grailsbrains.digitalMarketing

class Customer {
    String customerName
    String email
    String mobile
    String age
    String gender
    String country
    String state
    String city
    String area




    static constraints = {
        customerName(nullable: true, blank: false)
        email(nullable: true, blank: false)
        mobile(nullable: true, blank: false)
        age(nullable: true, blank: false)
        gender(nullable: true, blank: false)
        country(nullable: true, blank: false)
        state(nullable: true, blank: false)
        city(nullable: true, blank: false)
        area(nullable: true, blank: false)

    }
}
