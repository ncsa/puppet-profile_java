# profile_java

[![pdk-validate](https://github.com/ncsa/puppet-profile_java/actions/workflows/pdk-validate.yml/badge.svg)](https://github.com/ncsa/puppet-profile_java/actions/workflows/pdk-validate.yml)
[![yamllint](https://github.com/ncsa/puppet-profile_java/actions/workflows/yamllint.yml/badge.svg)](https://github.com/ncsa/puppet-profile_java/actions/workflows/yamllint.yml)

## Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with profile_java](#setup)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Install Java and create lock files (and parent directories).

* The motivation for handling these lock files is for SPSS,
  but other use cases may exist.

## Setup

Include profile_java in a Puppet profile file:
```
include ::profile_java
```

## Usage

Lock file structure and installed packages can be overridden using Hiera.
See: [REFERENCE.md](REFERENCE.md)

## Reference

See: [REFERENCE.md](REFERENCE.md)
