#!/usr/bin/env bats
load bats-extra

# generated on 2026-06-30T15:58:31+00:00

@test "zero" {
    # [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[0]"
    assert_success
    assert_output "[0]"
}

@test "arbitrary single byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[64]"
    assert_success
    assert_output "[64]"
}

@test "asymmetric single byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[83]"
    assert_success
    assert_output "[83]"
}

@test "largest single byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[127]"
    assert_success
    assert_output "[127]"
}

@test "smallest double byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[128]"
    assert_success
    assert_output "[129, 0]"
}

@test "arbitrary double byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[8192]"
    assert_success
    assert_output "[192, 0]"
}

@test "asymmetric double byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[173]"
    assert_success
    assert_output "[129, 45]"
}

@test "largest double byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[16383]"
    assert_success
    assert_output "[255, 127]"
}

@test "smallest triple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[16384]"
    assert_success
    assert_output "[129, 128, 0]"
}

@test "arbitrary triple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[1048576]"
    assert_success
    assert_output "[192, 128, 0]"
}

@test "asymmetric triple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[120220]"
    assert_success
    assert_output "[135, 171, 28]"
}

@test "largest triple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[2097151]"
    assert_success
    assert_output "[255, 255, 127]"
}

@test "smallest quadruple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[2097152]"
    assert_success
    assert_output "[129, 128, 128, 0]"
}

@test "arbitrary quadruple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[134217728]"
    assert_success
    assert_output "[192, 128, 128, 0]"
}

@test "asymmetric quadruple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[3503876]"
    assert_success
    assert_output "[129, 213, 238, 4]"
}

@test "largest quadruple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[268435455]"
    assert_success
    assert_output "[255, 255, 255, 127]"
}

@test "smallest quintuple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[268435456]"
    assert_success
    assert_output "[129, 128, 128, 128, 0]"
}

@test "arbitrary quintuple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[4278190080]"
    assert_success
    assert_output "[143, 248, 128, 128, 0]"
}

@test "asymmetric quintuple byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[2254790917]"
    assert_success
    assert_output "[136, 179, 149, 194, 5]"
}

@test "maximum 32-bit integer input" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[4294967295]"
    assert_success
    assert_output "[143, 255, 255, 255, 127]"
}

@test "two single-byte values" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[64, 127]"
    assert_success
    assert_output "[64, 127]"
}

@test "two multi-byte values" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[16384, 1193046]"
    assert_success
    assert_output "[129, 128, 0, 200, 232, 86]"
}

@test "many multi-byte values" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[8192, 1193046, 268435455, 0, 16383, 16384]"
    assert_success
    assert_output "[192, 0, 200, 232, 86, 255, 255, 255, 127, 0, 255, 127, 129, 128, 0]"
}

@test "one byte" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[127]"
    assert_success
    assert_output "[127]"
}

@test "two bytes" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[192, 0]"
    assert_success
    assert_output "[8192]"
}

@test "three bytes" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[255, 255, 127]"
    assert_success
    assert_output "[2097151]"
}

@test "four bytes" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[129, 128, 128, 0]"
    assert_success
    assert_output "[2097152]"
}

@test "maximum 32-bit integer" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[143, 255, 255, 255, 127]"
    assert_success
    assert_output "[4294967295]"
}

@test "incomplete sequence causes error" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[255]"
    assert_failure
    assert_output "incomplete sequence"
}

@test "incomplete sequence causes error, even if value is zero" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[128]"
    assert_failure
    assert_output "incomplete sequence"
}

@test "multiple values" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f variable-length-quantity.awk <<< "[192, 0, 200, 232, 86, 255, 255, 255, 127, 0, 255, 127, 129, 128, 0]"
    assert_success
    assert_output "[8192, 1193046, 268435455, 0, 16383, 16384]"
}
