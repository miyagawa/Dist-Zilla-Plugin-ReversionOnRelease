requires 'perl', '5.008005';

requires 'Dist::Zilla', 4.2;
requires 'Perl::Version', 1.011;

on test => sub {
    requires 'Test::More', '0.88';
    recommends 'Dist::Zilla::Plugin::VersionFromModule';
};
