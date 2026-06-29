#!/usr/bin/env bats
load bats-extra

# generated on 2026-06-30T15:57:23+00:00

@test "empty lists" {
    # [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< "[]"
    assert_success
    assert_output "[]"
}

@test "list to empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< "[]"
    assert_success
    assert_output "[1, 2, 3, 4]"
}

@test "empty list to list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< "[1, 2, 3, 4]"
    assert_success
    assert_output "[1, 2, 3, 4]"
}

@test "non-empty lists" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< "[1, 2]"
    assert_success
    assert_output "[1, 2, 2, 3, 4, 5]"
}

@test "empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "[]"
}

@test "list of lists" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "[1, 2, 3, 4, 5, 6]"
}

@test "empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "[]"
}

@test "non-empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "[1, 3, 5]"
}

@test "empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "[]"
}

@test "non-empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "[2, 4, 6, 8]"
}

@test "empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "2"
}

@test "direction independent function applied to non-empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "15"
}

@test "direction dependent function applied to non-empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "64"
}

@test "empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "2"
}

@test "direction independent function applied to non-empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "15"
}

@test "direction dependent function applied to non-empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "9"
}

@test "empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "[]"
}

@test "non-empty list" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f list-ops.awk <<< ""
    assert_success
    assert_output "[7, 5, 3, 1]"
}
