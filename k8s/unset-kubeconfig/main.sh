#!/usr/bin/env bash

NAME=$1

main() {
    echo "Clearing kubeconfig for ${NAME}"
    kubectl config unset "users.${NAME}"

    kubectl config unset "contexts.${NAME}"

    kubectl config unset "clusters.${NAME}"
}

main
