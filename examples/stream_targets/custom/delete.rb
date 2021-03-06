####> This code and all components © 2015 – 2019 Wowza Media Systems, LLC. All rights reserved.
####> This code is licensed pursuant to the BSD 3-Clause License.

require "wsc_sdk"
require_relative "../../client"  # Get our client
require_relative "../../helpers" # Include some helpers to make the code more direct

# Ensure the args passed in are present
arguments                 = ask_for_arguments(__FILE__, custom_stream_target_id: nil)

# Extract some data into convenience variables
custom_stream_targets     = $client.stream_targets.custom
custom_stream_target_id   = arguments[0]

# Request the custom_stream_target object
custom_stream_target      = custom_stream_targets.find(custom_stream_target_id)

# Handle an API error (in the helpers.rb file)
handle_api_error(custom_stream_target, "There was an error finding the custom stream target") unless custom_stream_target.success?

# Get the result of deleting the object from the API
deleted                   = custom_stream_target.delete

# Handle an API error (in the helpers.rb file)
handle_api_error(deleted, "There was an error deleting the custom stream target") unless deleted.success?

# If we've successfully deleted the custom_stream_target, then output the details.
# Note that the data for the output still exists locally in the SDK, however the
# ID has been removed since it no longer references a valid record in the API
# Defined in helpers.rb
output_model_attributes(custom_stream_target, "Custom Stream Target: #{custom_stream_target.name}")
