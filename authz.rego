package docker.authz

default allow = false

allow {
    not deny
}

deny {
    privileged
}

privileged {
    input.Body.HostConfig.Privileged == true
}
