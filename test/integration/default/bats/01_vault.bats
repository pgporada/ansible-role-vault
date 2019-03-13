#!/usr/bin/env bats

@test "vault is executable" {
    run vault -version
    [ "$status" -eq 0 ]
}

@test "vault is the version specified" {
    if [ "$(vault -version | awk '{print $1" "$2}')" == "Vault v1.0.3" ]; then
        status=0
    else
        status=1
    fi

    [ "$status" -eq 0 ]
}
