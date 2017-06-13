package com.grailsbrains

import com.grailsbrains.digitalMarketing.FacebookData
import com.restfb.DefaultFacebookClient
import com.restfb.FacebookClient
import com.restfb.Parameter
import com.restfb.types.User
import facebook4j.Facebook
import facebook4j.FacebookException
import facebook4j.auth.AccessToken
import grails.plugin.springsecurity.annotation.Secured

import javax.servlet.ServletException
@Secured('permitAll')
class CampController {AccessToken info
    String text
    def campaign() {
        println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
        Facebook facebook = (Facebook)session.getAttribute("facebook")
        String oauthCode = request.getParameter("code")

        try {
            facebook.getOAuthAccessToken(oauthCode)
        } catch (FacebookException e) {
            redirect(controller: 'fbLogout', action: 'logoutPage')
            /*throw new ServletException(e)*/
        }

        try {
            info = facebook.getOAuthAccessTokenInfo()
        } catch (FacebookException e) {
            e.printStackTrace()
        }
        text=info.toString();
        String[] firstSplit=text.split("token='")
        String[] secondSplit=firstSplit[1].split("'")

        def user = new com.grailsbrains.Auth.User()
        def fbData = new FacebookData()
        fbData.accessToken=secondSplit[0]//AccessToken
        println "AccessToken : "+fbData.accessToken
        FacebookClient fbClient = new DefaultFacebookClient(fbData.accessToken);

        User fbuser = fbClient.fetchObject("me",User.class, Parameter.with("fields", "name,id"));
        fbData.fbName = fbuser.getName()
        fbData.fbId = fbuser.getId()
        println("Fb Name : "+fbData.fbName)
        println("Fb Id : "+fbData.fbId)
        user.addToFacebookData(fbData)










        /*AccessToken info
        println("******"+facebook)
        try {
            String oauthCode = params.get("code")
            try {
                info = facebook.getOAuthAccessToken(oauthCode);
            } catch (FacebookException e) {
                throw new ServletException(e);
            }

            println("OAuthAccessToken : "+info);
        } catch (FacebookException e) {
            e.printStackTrace();
        }
        text=info.toString();
        println("OAUTH ACCESSTOKEN : "+text);
        String[] firstSplit=text.split("token='");
        String[] secondSplit=firstSplit[1].split("'");
        //Access Token is secondSplit[0]
        println("AccessToken : "+secondSplit[0]);*/
        render view: 'campaign'
    }

    def campaignPage(){
        render view: 'campaign'
    }
}
