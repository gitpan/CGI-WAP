use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

@ppd = (
  AUTHOR        => 'Angus Wood <angus@z-y-g-o.com>',
  ABSTRACT      => 'Subclass CGI.pm for WML output',
) if $] >= 5.00503;

WriteMakefile(
    'NAME'	=> 'CGI::WAP',
    'VERSION_FROM' => 'WAP.pm', # finds $VERSION
    'PREREQ_PM'    => { 
                         'XML::Parser' => 0,
                         'CGI' => '2.68',
                      },
    @ppd,
);
