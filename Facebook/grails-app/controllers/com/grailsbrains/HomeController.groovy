package com.grailsbrains
import grails.plugin.springsecurity.annotation.Secured

class HomeController {
    @Secured('permitAll')
    def index() {
        render view: 'index'
    }
}
