package com.grailsbrains
import grails.plugin.springsecurity.annotation.Secured

class SecureController {

   @Secured('permitAll')
    def index() {
        render view: 'welcome'
    }
}
