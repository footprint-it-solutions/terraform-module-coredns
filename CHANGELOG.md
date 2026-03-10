# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Use this section to track upcoming changes, to let people see what changes they might expect in
upcoming relases.

At release time, move the entries from here to a new release section.

### Added

### Changed

### Fixed

## [1.1.0] - 2026-03-10

### Added

- Added `topology_spread_constraints` variable to allow distribution of replicas across availability zones.

### Changed

- Updated default `chart_version` to `1.29.0` to support `topologySpreadConstraints`.
- Updated default `replica_count` to 3 for improved high availability.
- Refactored `helm_release` to use `yamlencode` for all values.

## [1.0.0] - 2022-11-21

### Added

- Initial release

### Changed

### Fixed

### Removed
