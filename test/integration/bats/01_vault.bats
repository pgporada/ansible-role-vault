#!/usr/bin/env bats

@test "vault is executable" {
    run vault -version
    [ "$status" -eq 0 ]
}

@test "vault is the version specified" {
    if [ "$(echo "vault_version: $(vault -version)")" == "vault_version: 0.11.4" ]; then
        status=0
    else
        status=1
    fi

    [ "$status" -eq 0 ]
}
