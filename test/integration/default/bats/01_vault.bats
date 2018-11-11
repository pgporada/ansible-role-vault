#!/usr/bin/env bats

@test "vault is executable" {
    run vault -version
    [ "$status" -eq 0 ]
}

@test "vault is the version specified" {
    if [ "$(vault -version | awk '{print $1" "$2}')" == "Vault v0.11.4" ]; then
        status=0
    else
        status=1
    fi

    [ "$status" -eq 0 ]
}
