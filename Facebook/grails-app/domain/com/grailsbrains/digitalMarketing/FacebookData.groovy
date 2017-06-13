package com.grailsbrains.digitalMarketing

import com.grailsbrains.Auth.User

class FacebookData {
    String fbName
    String fbId
    String accessToken

    static belongsTo = [user: User]
    static hasMany = [campaignDetails : CampaignDetails]

    static constraints = {

    }
}
