#!/usr/bin/env bats
load bats-extra

# generated on 2026-06-30T15:58:16+00:00

@test "at origin facing north" {
    # [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "north"
    assert_success
    assert_output "{'position': {'x': 0, 'y': 0}, 'direction': 'north'}"
}

@test "at negative position facing south" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "south"
    assert_success
    assert_output "{'position': {'x': -1, 'y': -1}, 'direction': 'south'}"
}

@test "changes north to east" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "north"
    assert_success
    assert_output "{'position': {'x': 0, 'y': 0}, 'direction': 'east'}"
}

@test "changes east to south" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "east"
    assert_success
    assert_output "{'position': {'x': 0, 'y': 0}, 'direction': 'south'}"
}

@test "changes south to west" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "south"
    assert_success
    assert_output "{'position': {'x': 0, 'y': 0}, 'direction': 'west'}"
}

@test "changes west to north" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "west"
    assert_success
    assert_output "{'position': {'x': 0, 'y': 0}, 'direction': 'north'}"
}

@test "changes north to west" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "north"
    assert_success
    assert_output "{'position': {'x': 0, 'y': 0}, 'direction': 'west'}"
}

@test "changes west to south" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "west"
    assert_success
    assert_output "{'position': {'x': 0, 'y': 0}, 'direction': 'south'}"
}

@test "changes south to east" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "south"
    assert_success
    assert_output "{'position': {'x': 0, 'y': 0}, 'direction': 'east'}"
}

@test "changes east to north" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "east"
    assert_success
    assert_output "{'position': {'x': 0, 'y': 0}, 'direction': 'north'}"
}

@test "facing north increments Y" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "north"
    assert_success
    assert_output "{'position': {'x': 0, 'y': 1}, 'direction': 'north'}"
}

@test "facing south decrements Y" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "south"
    assert_success
    assert_output "{'position': {'x': 0, 'y': -1}, 'direction': 'south'}"
}

@test "facing east increments X" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "east"
    assert_success
    assert_output "{'position': {'x': 1, 'y': 0}, 'direction': 'east'}"
}

@test "facing west decrements X" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "west"
    assert_success
    assert_output "{'position': {'x': -1, 'y': 0}, 'direction': 'west'}"
}

@test "moving east and north from README" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "north"
    assert_success
    assert_output "{'position': {'x': 9, 'y': 4}, 'direction': 'west'}"
}

@test "moving west and north" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "north"
    assert_success
    assert_output "{'position': {'x': -4, 'y': 1}, 'direction': 'west'}"
}

@test "moving west and south" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "east"
    assert_success
    assert_output "{'position': {'x': -3, 'y': -8}, 'direction': 'south'}"
}

@test "moving east and north" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f robot-simulator.awk <<< "south"
    assert_success
    assert_output "{'position': {'x': 11, 'y': 5}, 'direction': 'north'}"
}
