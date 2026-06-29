#!/usr/bin/env bats
load bats-extra

# generated on 2026-06-30T15:58:26+00:00

@test "Can encode" {
    # [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< "aaaaaaaaaa"
    assert_success
    assert_output "cipher.key.substring(0, plaintext.length)"
}

@test "Can decode" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< ""
    assert_success
    assert_output "aaaaaaaaaa"
}

@test "Is reversible. I.e., if you apply decode in a encoded result, you must see the same plaintext encode parameter as a result of the decode method" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< "abcdefghij"
    assert_success
    assert_output "abcdefghij"
}

@test "Key is made only of lowercase letters" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< ""
    assert_success
    assert_output "{'match': '^[a-z]+$'}"
}

@test "Can encode" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< "aaaaaaaaaa"
    assert_success
    assert_output "abcdefghij"
}

@test "Can decode" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< ""
    assert_success
    assert_output "aaaaaaaaaa"
}

@test "Is reversible. I.e., if you apply decode in a encoded result, you must see the same plaintext encode parameter as a result of the decode method" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< "abcdefghij"
    assert_success
    assert_output "abcdefghij"
}

@test "Can double shift encode" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< "iamapandabear"
    assert_success
    assert_output "qayaeaagaciai"
}

@test "Can wrap on encode" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< "zzzzzzzzzz"
    assert_success
    assert_output "zabcdefghi"
}

@test "Can wrap on decode" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< ""
    assert_success
    assert_output "zzzzzzzzzz"
}

@test "Can encode messages longer than the key" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< "iamapandabear"
    assert_success
    assert_output "iboaqcnecbfcr"
}

@test "Can decode messages longer than the key" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f simple-cipher.awk <<< ""
    assert_success
    assert_output "iamapandabear"
}
