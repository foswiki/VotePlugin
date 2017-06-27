# Plugin for Foswiki - The Free and Open Source Wiki, http://foswiki.org/
#
# Copyright (C) 2005-2017 Michael Daum http://michaeldaumconsulting.com
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details, published at
# http://www.gnu.org/copyleft/gpl.html

package Foswiki::Plugins::VotePlugin;

use strict;
use warnings;
use Foswiki::Func();

our $VERSION = '1.99_001';
our $RELEASE = '20 Feb 2017';
our $NO_PREFS_IN_TOPIC = 1;
our $SHORTDESCRIPTION = 'Simple way to count votes';
our $core;

sub initPlugin {

  $core = undef;

  Foswiki::Func::registerTagHandler(
    'VOTE',
    sub {
      return getCore()->handleVOTE(@_);
    }
  );

  return 1;
}

sub finishPlugin {
  undef $core;
}

sub getCore {

  unless (defined $core) {
    require Foswiki::Plugins::VotePlugin::Core;
    $core = Foswiki::Plugins::VotePlugin::Core->new();
  }

  return $core;
}

1;
