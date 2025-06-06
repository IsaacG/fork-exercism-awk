#!/usr/bin/env bats
load bats-extra

# local version: 1.0.0.0

# Output your triplets, comma-separated, one per line.


@test "triplets whose sum is 12" {
    #[[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f pythagorean-triplet.awk -v sum=12
    assert_success
    actual=$( sort -t, -n -k1,1 <<< "$output" )
    expected="3,4,5"
    assert_equal "$actual" "$expected"
}

@test "triplets whose sum is 108" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f pythagorean-triplet.awk -v sum=108
    assert_success
    actual=$( sort -t, -n -k1,1 <<< "$output" )
    expected="27,36,45"
    assert_equal "$actual" "$expected"
}

@test "triplets whose sum is 1000" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f pythagorean-triplet.awk -v sum=1000
    assert_success
    actual=$( sort -t, -n -k1,1 <<< "$output" )
    expected="200,375,425"
    assert_equal "$actual" "$expected"
}

@test "no matching triplets for 1001" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f pythagorean-triplet.awk -v sum=1001
    assert_success
    refute_output
}

# Note: using ANSI-C Quoting here
# see https://www.gnu.org/software/bash/manual/bash.html#ANSI_002dC-Quoting

@test "returns all matching triplets" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f pythagorean-triplet.awk -v sum=90
    assert_success
    actual=$( sort -t, -n -k1,1 <<< "$output" )
    expected=$'9,40,41\n15,36,39'
    assert_equal "$actual" "$expected"
}

@test "several matching triplets" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f pythagorean-triplet.awk -v sum=840
    assert_success
    actual=$( sort -t, -n -k1,1 <<< "$output" )
    expected="40,399,401
56,390,394
105,360,375
120,350,370
140,336,364
168,315,357
210,280,350
240,252,348"
    assert_equal "$actual" "$expected"
}

# This test is very time-consuming for a brute force solution.

@test "triplets for large number" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f pythagorean-triplet.awk -v sum=30000
    assert_success
    actual=$( sort -t, -n -k1,1 <<< "$output" )
    expected="1200,14375,14425
1875,14000,14125
5000,12000,13000
6000,11250,12750
7500,10000,12500"
    assert_equal "$actual" "$expected"
}
