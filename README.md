# NAME

Dist::Zilla::Plugin::ReversionOnRelease - Bump and reversion $VERSION on release

# SYNOPSIS

    [VersionFromModule]
    [ReversionOnRelease]
    prompt = 1
    [CopyFilesFromRelease]
    match = \.pm$

# DESCRIPTION

This is a Dist::Zilla plugin that bumps version (a la `perl-reversion
\-bump`) in-place with the .pm files inside `lib`. You should most
likely use this plugin in combination with
[Dist::Zilla::Plugin::VersionFromModule](https://metacpan.org/pod/Dist::Zilla::Plugin::VersionFromModule) so that current VERSION is
taken out of your main module, and then the released file is written
back after the release with [Dist::Zilla::Plugin::CopyFilesFromRelease](https://metacpan.org/pod/Dist::Zilla::Plugin::CopyFilesFromRelease).

Unlike `perl-reversion`, this module uses [Version::Next](https://metacpan.org/pod/Version::Next) to get
more naturally incremented version, instead of a little strict 3-digit
rules in [Perl::Version](https://metacpan.org/pod/Perl::Version).

You **should not** use this plugin with any code munging or Pod::Weaver
plugins.

By default, this plugin bumps version by the smallest possible
increase - if you have 0.001, the next version is 0.002. You can
override that by either running the plugin with `prompt` option to
give the desired value from the prompt, or by setting the environment
variable `V`:

    > V=1.001000 dzil release

# AUTHOR

Tatsuhiko Miyagawa <miyagawa@bulknews.net>

# COPYRIGHT

Copyright 2013- Tatsuhiko Miyagawa

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

- [Dist::Milla](https://metacpan.org/pod/Dist::Milla)
- [Version::Next](https://metacpan.org/pod/Version::Next)
- [Dist::Zilla::Plugin::BumpVersion](https://metacpan.org/pod/Dist::Zilla::Plugin::BumpVersion)
- [Dist::Zilla::Plugin::RewriteVersion](https://metacpan.org/pod/Dist::Zilla::Plugin::RewriteVersion) - also takes $VERSION from the main module; ensures all $VERSIONs are consistent 
- [Dist::Zilla::Plugin::BumpVersionAfterRelease](https://metacpan.org/pod/Dist::Zilla::Plugin::BumpVersionAfterRelease) - edits the $VERSION in the repository code to reflect the new version, after release
- [Dist::Zilla::Plugin::RewriteVersion::Transitional](https://metacpan.org/pod/Dist::Zilla::Plugin::RewriteVersion::Transitional) - like [Dist::Zilla::Plugin::RewriteVersion](https://metacpan.org/pod/Dist::Zilla::Plugin::RewriteVersion), but munges the version in if it was not already present
- [Dist::Zilla::Plugin::BumpVersionAfterRelease::Transitional](https://metacpan.org/pod/Dist::Zilla::Plugin::BumpVersionAfterRelease::Transitional) - like [Dist::Zilla::Plugin::BumpVersionAfterRelease](https://metacpan.org/pod/Dist::Zilla::Plugin::BumpVersionAfterRelease), but also adds the $VERSION into the repository code if it was not already present
