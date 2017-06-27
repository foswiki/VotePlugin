# ---+ Extensions
# ---++ VotePlugin
# This is the configuration used by the <b>VotePluginPlugin</b>.

# **PERL**
$Foswiki::cfg{VotePlugin}{Modules} = {
  "legacySelect" => "Foswiki::Plugins::VotePlugin::LegacySelect",
  "legacyStars" => "Foswiki::Plugins::VotePlugin::LegacyStars",
};

1;
