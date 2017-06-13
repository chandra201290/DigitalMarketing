package com.grailsbrains

import facebook4j.Facebook
import facebook4j.FacebookFactory
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class FbSignInController {
    Facebook facebook;
    def signin() {

        facebook = new FacebookFactory().getInstance()
        session.setAttribute("facebook", facebook)
        StringBuffer callbackURL = request.getRequestURL()

        int index = callbackURL.lastIndexOf("/")
        callbackURL.replace(index, callbackURL.length(), "").append("/callback")
        //facebook.getOAuthAuthorizationURL(callbackURL.toString())
        String url = facebook.getOAuthAuthorizationURL(callbackURL.toString())
        redirect(uri:url)
        //response.sendRedirect(facebook.getOAuthAuthorizationURL(callbackURL.toString()));


    }
}
