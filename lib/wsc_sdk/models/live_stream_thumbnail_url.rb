####> This code and all components © 2015 – 2019 Wowza Media Systems, LLC. All rights reserved.
####> This code is licensed pursuant to the BSD 3-Clause License.

require 'wsc_sdk/model'
require 'wsc_sdk/models/transcoder_thumbnail_url'

module WscSdk
  module Models

    # A model to represent the Thumbnail URL of a Live Stream in the Wowza Streaming
    # Cloud API.
    #
    class LiveStreamThumbnailUrl < TranscoderThumbnailUrl

      model_name_singular :live_stream
      model_name_plural   :live_streams

    end
  end
end
