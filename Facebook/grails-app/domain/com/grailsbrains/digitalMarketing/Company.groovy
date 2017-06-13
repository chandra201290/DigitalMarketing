package com.grailsbrains.digitalMarketing

class Company {
    String companyName
    String companyAddress
    String companyArea
    String companyDescription
    String companyWebsite
    String facebookPage
    String Industry

    static constraints = {
        companyName(nullable: true, blank: false)
        companyAddress(nullable: true, blank: false)
        companyArea(nullable: true, blank: false)
        companyDescription(nullable: true, blank: false)
        companyWebsite(nullable: true, blank: false)
        facebookPage(nullable: true, blank: false)
        Industry(nullable: true, blank: false)
    }
}
