# NAME

Dist::Zilla::Plugin::ReversionOnRelease - Bump and reversion $VERSION on release

# SYNOPSIS

    [VersionFromModule]
    [ReversionOnRelease]
    prompt = 1
    [CopyFilesFromRelease]
    match = \a.pm$

# DESCRIPTION

This is a Dist::Zilla plugin that bumps version (a la `perl-reversion
-bump`) in-place with the .pm files inside `lib`. You should most
likely use this plugin in combination with
[Dist::Zilla::Plugin::VersionFromModule](http://search.cpan.org/perldoc?Dist::Zilla::Plugin::VersionFromModule) so that current VERSION is
taken out of your main module, and then the released file is written
back after the release with [Dist::Zilla::Plugin::CopyFilesFromRelease](http://search.cpan.org/perldoc?Dist::Zilla::Plugin::CopyFilesFromRelease).

You __should not__ this plugin with any code munging or Pod::Weaver
plugins.

By default, this plugin bumps version by the smallest possible
increase - if you have 0.001, the next version is 0.002. You can
override that by either running the plugin with `prompt` option to
give the desired value from the prompt, or by setting the environment
variable `V`:

    > V=1.0.0 dzil release

# AUTHOR

Tatsuhiko Miyagawa <miyagawa@bulknews.net>

# COPYRIGHT

Copyright 2013- Tatsuhiko Miyagawa

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

[Dist::Milla](http://search.cpan.org/perldoc?Dist::Milla) [Perl::Version](http://search.cpan.org/perldoc?Perl::Version) [perl-reversion](http://search.cpan.org/perldoc?perl-reversion) [Dist::Zilla::Plugin::BumpVersion](http://search.cpan.org/perldoc?Dist::Zilla::Plugin::BumpVersion)
