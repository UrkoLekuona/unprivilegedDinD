# Unprivileged DinD
DinD image with privileged mode disabled for use in Kubernetes

## Description

Using `docker:dind` as a starting point, I install the [](https://github.com/open-policy-agent/opa-docker-authz) plugin in the daemon and add a very basic policy which should prevent from starting privileged containers in that daemon.
Everything else is just filler stuff trying to simulate a Kubernetes deployment where this could be useful. For example, a Jenkins deployment where you would need a docker CLI for your pipelines. In this deployment, your daemon (and consequently, your host) wouldn't be secure without a policy to deny starting privileged containers.

## Getting started

TODO

## Contributing
Any bug-fixes, improvements or other kinds of feedback are welcome. You can always open an issue in this project, make a pull request or even send me a personal email. Don't refrain from contacting me if you think I can help you with your installation :D.

## License
This project is licensed under the GNU GENERAL PUBLIC License - see the [LICENSE](LICENSE) file for details
