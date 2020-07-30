-- RTP Play Extension for VLC
-- Author: Max Pereira
-- Github: github.com/maxpereira

function descriptor()
    return { title="RTP Play" }
end

function activate()
	vlc.msg.dbg("[RTP Play Extension] Starting")
end

function deactivate()
	vlc.msg.dbg("[RTP Play Extension] Stopping")
end

function main()
	rtpPLAY = NewRTPplay()
	rtpPLAY.populateChannels()
end

function NewRTPplay()
	local populateChannels = function ()
		vlc.sd.add_item( {path = "https://streaming-live.rtp.pt/liveradio/antena180a/playlist.m3u8?DVR",
											title = "RTP Antena 1",
											arturl = "https://empathogen.net/a1.png"
									})
									
		vlc.sd.add_item( {path = "https://streaming-live.rtp.pt/liveradio/antena280a/playlist.m3u8?DVR",
											title = "RTP Antena 2",
											arturl = "https://empathogen.net/a2.png"
									})

		vlc.sd.add_item( {path = "https://streaming-live.rtp.pt/liveradio/antena380a/playlist.m3u8?DVR",
											title = "RTP Antena 3",
											arturl = "https://empathogen.net/a3.png"
									})										
	end

	return {
		populateChannels = populateChannels
	}
end

