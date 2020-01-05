' ********** Copyright 2016 Roku Corp.  All Rights Reserved. ********** 

sub Main()

     url = "https://tmcb82.github.io/ota/ota.m3u8"
     epg = ""

    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    m.global = screen.getGlobalNode()
    m.global.addFields({feedurl: url})
    scene = screen.CreateScene("MainScene")
    screen.show()

    while(true) 
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
    
end sub
