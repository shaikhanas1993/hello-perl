#!/usr/bin/perl
use strict;
use warnings;

#quantifiers {}[]()^$.|\?*+

# quantifiers {}[]()^? $|.\+*
my @words = ("available", "avatar", "avalon");
foreach(@words){
    print($_,"\n") if($_ =~ /a*l+/);
}


# foreach(@words){
#    print $_, "\n" if(/a*l+/);
# }


#case insensitive example
# my $str = "REGULAR EXPRESSION";
# if($str =~ /expression/i){
#     print "matched";
# }else{
#     print "not matched";
# }

# #case sensitive example
# my $str = "REGULAR EXPRESSION";
# if($str =~ /expression/){
#     print "matched";
# }else{
#     print "not matched";
# }

# my @html = (
#     '<p>',
# 	'html fragement',
# 	'</p>',
# 	'<br>',
# 	'<span>This is a span</span>'
# );
# ##uses backslash
# # foreach(@html){
# #     print $_ . "\n" if $_ =~ /\//;
# # }

# #use match operator
# foreach(@html){
#     print $_ . "\n" if $_ =~ m"/";
# }



# my @words = (
# 	   'Perl',
# 	   'regular expression',
# 	   'is',
# 	   'a very powerul',
# 	   'feature'
# 	);

# #matches a regular  expression
# for(@words){
#     print $_ . "\n"  if($_ =~ /er/);
# }

# #does not matches a regular  expression
# for(@words){
#     print $_ . "\n"  if($_ !~ /er/);
# }


# my $string = "Perl regular expression is powerful";
# if($string =~ /ul/)
# {
#     print "match found";
# }else{
#     print "match not found";
# }
