package com.grailsbrains

import com.restfb.BinaryAttachment
import com.restfb.DefaultFacebookClient
import com.restfb.FacebookClient
import com.restfb.Parameter
import com.restfb.types.FacebookType
import facebook4j.Facebook
import facebook4j.FacebookException
import facebook4j.auth.AccessToken

import java.io.*
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class PostController {

    AccessToken info
    String text
    String accessToken


    def linkpost() {
        Facebook facebook = (Facebook) session.getAttribute("facebook")

        //AccessToken Retrieve
        try {
            info = facebook.getOAuthAccessTokenInfo()
        } catch (FacebookException e) {
            e.printStackTrace()
        }
        text = info.toString();
        String[] firstSplit = text.split("token='")
        String[] secondSplit = firstSplit[1].split("'")
        accessToken = secondSplit[0]
        FacebookClient fbClient = new DefaultFacebookClient(accessToken);

        //Post Link
        if (params.campaignmessage != null) {
            def link = params.campaignlink
            def message = params.campaignmessage
            FacebookType response = fbClient.publish("me/feed", FacebookType.class, Parameter.with("message", message),
                    Parameter.with("link", link));
            System.out.println("facebook.com/" + response.getId());
        } else {
            def link = params.campaignlink
            FacebookType response = fbClient.publish("me/feed", FacebookType.class, Parameter.with("link", link));
            System.out.println("facebook.com/" + response.getId());
        }

        redirect(controller: 'camp', action: 'campaignPage')
    }

    def textpost() {
        Facebook facebook = (Facebook) session.getAttribute("facebook")

        //AccessToken Retrieve
        try {
            info = facebook.getOAuthAccessTokenInfo()
        } catch (FacebookException e) {
            e.printStackTrace()
        }
        text = info.toString();
        String[] firstSplit = text.split("token='")
        String[] secondSplit = firstSplit[1].split("'")
        accessToken = secondSplit[0]
        FacebookClient fbClient = new DefaultFacebookClient(accessToken);

        //Post Message
        def message = params.campaignmessage
        FacebookType response = fbClient.publish("me/feed", FacebookType.class, Parameter.with("message", message));
        System.out.println("facebook.com/" + response.getId());

        redirect(controller: 'camp', action: 'campaignPage')
    }

    def imagepost() {
        Facebook facebook = (Facebook) session.getAttribute("facebook")

        //AccessToken Retrieve
        try {
            info = facebook.getOAuthAccessTokenInfo()
        } catch (FacebookException e) {
            e.printStackTrace()
        }
        text = info.toString();
        String[] firstSplit = text.split("token='")
        String[] secondSplit = firstSplit[1].split("'")
        accessToken = secondSplit[0]
        FacebookClient fbClient = new DefaultFacebookClient(accessToken);

        //Retrieve Image
        def fileUpload = request.getFile('fileupload')
        def filename = fileUpload.getOriginalFilename()
        /*String tempPath = grailsApplication.config.jsonToCsvReplace;//.replace("temporary.json", "temporary"+new Date().getTime()+".json")*/
        String tempPath = grailsApplication.config.getRequiredProperty('grails.guides.folderPath')
        tempPath = tempPath + "/" + filename
        File tempFile = new File(tempPath)
        fileUpload.transferTo(tempFile)

        //Post Image
        if (params.campaignmessage != null) {
            def message = params.campaignmessage
            try {
                FileInputStream fis = new FileInputStream(new File(tempPath));
                FacebookType response = fbClient.publish("me/photos", FacebookType.class, BinaryAttachment.with("image.jpg", fis), Parameter.with("message", message))
                println("facebook.com/" + response.getId())

            } catch (Exception ex) {
                ex.printStackTrace()
            }
        } else {
            try {
                FileInputStream fis = new FileInputStream(new File(tempPath));
                FacebookType response = fbClient.publish("me/photos", FacebookType.class, BinaryAttachment.with("image.jpg", fis))
                println("facebook.com/" + response.getId())

            } catch (Exception ex) {
                ex.printStackTrace()
            }
        }

        redirect(controller: 'camp', action: 'campaignPage')
    }

    def videopost() {
        Facebook facebook = (Facebook) session.getAttribute("facebook")

        //AccessToken Retrieve
        try {
            info = facebook.getOAuthAccessTokenInfo()
        } catch (FacebookException e) {
            e.printStackTrace()
        }
        text = info.toString();
        String[] firstSplit = text.split("token='")
        String[] secondSplit = firstSplit[1].split("'")
        accessToken = secondSplit[0]
        FacebookClient fbClient = new DefaultFacebookClient(accessToken);

        //Retrieve Image
        def fileUpload = request.getFile('fileupload')
        def filename = fileUpload.getOriginalFilename()
        /*String tempPath = grailsApplication.config.jsonToCsvReplace;//.replace("temporary.json", "temporary"+new Date().getTime()+".json")*/
        String tempPath = grailsApplication.config.getRequiredProperty('grails.guides.folderPath')
        tempPath = tempPath + "/" + filename
        File tempFile = new File(tempPath)
        fileUpload.transferTo(tempFile)

        //Post Image
        if (params.campaignmessage != null) {
            def message = params.campaignmessage
            FileInputStream fisv = new FileInputStream(new File("E:\\YouTube.mp4"));
            FacebookType response1 = fbClient.publish("me/videos", FacebookType.class, BinaryAttachment.with("video1.mp4", fisv), Parameter.with("message", "Hiiiiiiiiiiiii"))
            try {
                FileInputStream fis = new FileInputStream(new File(tempPath));
                println("message : "+message)
                FacebookType response = fbClient.publish("me/videos", FacebookType.class, BinaryAttachment.with("video.mp4", fis), Parameter.with("message", message))
                println("facebook.com/" + response.getId())

            } catch (Exception ex) {
                ex.printStackTrace()
            }
        } else {
            try {
                FileInputStream fis = new FileInputStream(new File(tempPath));
                FacebookType response = fbClient.publish("me/videos", FacebookType.class, BinaryAttachment.with("video.mp4", fis))
                println("facebook.com/" + response.getId())

            } catch (Exception ex) {
                ex.printStackTrace()
            }
        }

        redirect(controller: 'camp', action: 'campaignPage')
    }
}