# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [2.0.0] - 2019-02-09
### Added
- `#get_repositories_for_user` method that returns the public repositories --
  given a GitHub username.
- [breaking] Rename method from `#get_user_repositories` to `#get_repositories`.

## [1.2.0] - 2019-02-03
### Added
- Require `uri` and `json` libraries.

## [1.1.0] - 2019-02-03
### Fixed
- Fix included module on `GithubClient`.
- Now we can do `GithubClient.new`.

## [1.0] - 2019-02-03
### Added
- Add `#get_user_repositories` method.
- Add `#get_org_repositories` method.
