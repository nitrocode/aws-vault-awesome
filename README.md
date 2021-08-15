# AWS Vault Awesome

This is a fork of the latest stable version of `aws-vault` that adds `--no-daemonize` in order to run the binary as a background service on osx.

Related:

* PR https://github.com/99designs/aws-vault/pull/740
* PR https://github.com/99designs/aws-vault/pull/733

## Installing

```shell
brew tap nitrocode/aws-vault-awesome https://github.com/nitrocode/aws-vault-awesome
brew install aws-vault-awesome
```

The binary will be downloaded as `aws-vault-awesome` as a clear distinction from `aws-vault`.

## Launchctl Guide

https://gist.github.com/nitrocode/cd864db74a29ea52c7b36977573d01cb

## Thanks

* [myoung34](https://github.com/myoung34) - for the help with the initial pr and launchctl plist troubleshooting
* [lorengordon](https://github.com/lorengordon) - for the encouragement to create a fork

