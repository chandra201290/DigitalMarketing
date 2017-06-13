package com.grailsbrains.digitalMarketing

import com.grailsbrains.Auth.User

class CampaignList {String campaignId
    String campaignName

    static hasMany = [campaignDetails : CampaignDetails]
    static belongsTo = [user : User]
    static constraints = {
        campaignId(nullable: true, blank: false)
        campaignName(nullable: true, blank: false)
    }
}
