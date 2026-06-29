#!/usr/bin/env bats
load bats-extra

# generated on 2026-06-30T15:58:09+00:00

@test "queen with a valid position" {
    # [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< "{'position': {'row': 2, 'column': 2}}"
    assert_success
    assert_output "0"
}

@test "queen must have positive row" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< "{'position': {'row': -2, 'column': 2}}"
    assert_failure
    assert_output "row not positive"
}

@test "queen must have row on board" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< "{'position': {'row': 8, 'column': 4}}"
    assert_failure
    assert_output "row not on board"
}

@test "queen must have positive column" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< "{'position': {'row': 2, 'column': -2}}"
    assert_failure
    assert_output "column not positive"
}

@test "queen must have column on board" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< "{'position': {'row': 4, 'column': 8}}"
    assert_failure
    assert_output "column not on board"
}

@test "cannot attack" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< ""
    assert_success
    assert_output "false"
}

@test "can attack on same row" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< ""
    assert_success
    assert_output "true"
}

@test "can attack on same column" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< ""
    assert_success
    assert_output "true"
}

@test "can attack on first diagonal" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< ""
    assert_success
    assert_output "true"
}

@test "can attack on second diagonal" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< ""
    assert_success
    assert_output "true"
}

@test "can attack on third diagonal" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< ""
    assert_success
    assert_output "true"
}

@test "can attack on fourth diagonal" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< ""
    assert_success
    assert_output "true"
}

@test "cannot attack if falling diagonals are only the same when reflected across the longest falling diagonal" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f queen-attack.awk <<< ""
    assert_success
    assert_output "false"
}
