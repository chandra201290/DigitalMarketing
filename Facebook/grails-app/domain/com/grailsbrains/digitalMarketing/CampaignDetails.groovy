package com.grailsbrains.digitalMarketing

class CampaignDetails {
    String title
    String link
    String message
    static belongsTo = [campaignList : CampaignList]

    static constraints = {
        title(nullable: true, blank: false)
        link(nullable: true, blank: false)
        message(nullable: true, blank: false)

    }
}