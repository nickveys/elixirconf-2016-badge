# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :badge_fw, :wlan0,
  ssid: "Nerves",
  key_mgmt: :"WPA-PSK",
  psk: "nervesnet"

config :nerves_ntp, :ntpd, "/usr/sbin/ntpd"
config :nerves_ntp, :servers, Enum.map(0..3, &("#{&1}.pool.ntp.org"))

config :extwitter, :oauth, [
    consumer_key: "vnBfkubUmv10QRcQjFU3lXKin",
    consumer_secret: "XUk3fsulkfraaapUyMOfnVRtd8fXdlkKMQvhjDv5nnEVrsk7yA",
    access_token: System.get_env("TWITTER_ACCESS_TOKEN"),
    access_token_secret: System.get_env("TWITTER_ACCESS_TOKEN_SECRET")
  ]

# Import target specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
# Uncomment to use target specific configurations

# import_config "#{Mix.Project.config[:target]}.exs"
