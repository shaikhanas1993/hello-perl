#!/usr/bin/perl
use strict;
use warnings;

use lib qw(C:/Users/shaik/Desktop/perl-scripts/tuts/Logger);
use Logger;



Logger::open("logtest.log");

Logger::log(1,"This is a message");

Logger::close();