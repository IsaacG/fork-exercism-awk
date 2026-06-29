#!/usr/bin/env bats
load bats-extra

# generated on 2026-06-30T15:56:59+00:00

@test "One file, one match, no flags" {
    # [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt']"
    assert_success
    assert_output "['Of Atreus, Agamemnon, King of men.']"
}

@test "One file, one match, print line numbers flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['paradise-lost.txt']"
    assert_success
    assert_output "['2:Of that Forbidden Tree, whose mortal tast']"
}

@test "One file, one match, case-insensitive flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['paradise-lost.txt']"
    assert_success
    assert_output "['Of that Forbidden Tree, whose mortal tast']"
}

@test "One file, one match, print file names flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['paradise-lost.txt']"
    assert_success
    assert_output "['paradise-lost.txt']"
}

@test "One file, one match, match entire lines flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['paradise-lost.txt']"
    assert_success
    assert_output "['With loss of Eden, till one greater Man']"
}

@test "One file, one match, multiple flags" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt']"
    assert_success
    assert_output "['9:Of Atreus, Agamemnon, King of men.']"
}

@test "One file, several matches, no flags" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['midsummer-night.txt']"
    assert_success
    assert_output "['Nor how it may concern my modesty,', 'But I beseech your grace that I may know', 'The worst that may befall me in this case,']"
}

@test "One file, several matches, print line numbers flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['midsummer-night.txt']"
    assert_success
    assert_output "['3:Nor how it may concern my modesty,', '5:But I beseech your grace that I may know', '6:The worst that may befall me in this case,']"
}

@test "One file, several matches, match entire lines flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['midsummer-night.txt']"
    assert_success
    assert_output "[]"
}

@test "One file, several matches, case-insensitive flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt']"
    assert_success
    assert_output "["Achilles sing, O Goddess! Peleus' son;", 'The noble Chief Achilles from the son']"
}

@test "One file, several matches, inverted flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['paradise-lost.txt']"
    assert_success
    assert_output "['Brought Death into the World, and all our woe,', 'With loss of Eden, till one greater Man', 'Restore us, and regain the blissful Seat,', "Sing Heav'nly Muse, that on the secret top", 'That Shepherd, who first taught the chosen Seed']"
}

@test "One file, no matches, various flags" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt']"
    assert_success
    assert_output "[]"
}

@test "One file, one match, file flag takes precedence over line flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt']"
    assert_success
    assert_output "['iliad.txt']"
}

@test "One file, several matches, inverted and match entire lines flags" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt']"
    assert_success
    assert_output "["Achilles sing, O Goddess! Peleus' son;", 'His wrath pernicious, who ten thousand woes', "Caused to Achaia's host, sent many a soul", 'And Heroes gave (so stood the will of Jove)', 'To dogs and to all ravening fowls a prey,', 'When fierce dispute had separated once', 'The noble Chief Achilles from the son', 'Of Atreus, Agamemnon, King of men.']"
}

@test "Multiple files, one match, no flags" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "['iliad.txt:Of Atreus, Agamemnon, King of men.']"
}

@test "Multiple files, several matches, no flags" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "['midsummer-night.txt:Nor how it may concern my modesty,', 'midsummer-night.txt:But I beseech your grace that I may know', 'midsummer-night.txt:The worst that may befall me in this case,']"
}

@test "Multiple files, several matches, print line numbers flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "['midsummer-night.txt:5:But I beseech your grace that I may know', 'midsummer-night.txt:6:The worst that may befall me in this case,', 'paradise-lost.txt:2:Of that Forbidden Tree, whose mortal tast', "paradise-lost.txt:6:Sing Heav'nly Muse, that on the secret top"]"
}

@test "Multiple files, one match, print file names flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "['iliad.txt', 'paradise-lost.txt']"
}

@test "Multiple files, several matches, case-insensitive flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "["iliad.txt:Caused to Achaia's host, sent many a soul", 'iliad.txt:Illustrious into Ades premature,', 'iliad.txt:And Heroes gave (so stood the will of Jove)', 'iliad.txt:To dogs and to all ravening fowls a prey,', 'midsummer-night.txt:I do entreat your grace to pardon me.', 'midsummer-night.txt:In such a presence here to plead my thoughts;', 'midsummer-night.txt:If I refuse to wed Demetrius.', 'paradise-lost.txt:Brought Death into the World, and all our woe,', 'paradise-lost.txt:Restore us, and regain the blissful Seat,', "paradise-lost.txt:Sing Heav'nly Muse, that on the secret top"]"
}

@test "Multiple files, several matches, inverted flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "["iliad.txt:Achilles sing, O Goddess! Peleus' son;", 'iliad.txt:The noble Chief Achilles from the son', 'midsummer-night.txt:If I refuse to wed Demetrius.']"
}

@test "Multiple files, one match, match entire lines flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "['midsummer-night.txt:But I beseech your grace that I may know']"
}

@test "Multiple files, one match, multiple flags" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "['paradise-lost.txt:4:With loss of Eden, till one greater Man']"
}

@test "Multiple files, no matches, various flags" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "[]"
}

@test "Multiple files, several matches, file flag takes precedence over line number flag" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "['iliad.txt', 'paradise-lost.txt']"
}

@test "Multiple files, several matches, inverted and match entire lines flags" {
    [[ $BATS_RUN_SKIPPED == "true" ]] || skip
    run gawk -f grep.awk <<< "['iliad.txt', 'midsummer-night.txt', 'paradise-lost.txt']"
    assert_success
    assert_output "["iliad.txt:Achilles sing, O Goddess! Peleus' son;", 'iliad.txt:His wrath pernicious, who ten thousand woes', "iliad.txt:Caused to Achaia's host, sent many a soul", 'iliad.txt:And Heroes gave (so stood the will of Jove)', 'iliad.txt:To dogs and to all ravening fowls a prey,', 'iliad.txt:When fierce dispute had separated once', 'iliad.txt:The noble Chief Achilles from the son', 'iliad.txt:Of Atreus, Agamemnon, King of men.', 'midsummer-night.txt:I do entreat your grace to pardon me.', 'midsummer-night.txt:I know not by what power I am made bold,', 'midsummer-night.txt:Nor how it may concern my modesty,', 'midsummer-night.txt:In such a presence here to plead my thoughts;', 'midsummer-night.txt:But I beseech your grace that I may know', 'midsummer-night.txt:The worst that may befall me in this case,', 'midsummer-night.txt:If I refuse to wed Demetrius.', 'paradise-lost.txt:Of Mans First Disobedience, and the Fruit', 'paradise-lost.txt:Of that Forbidden Tree, whose mortal tast', 'paradise-lost.txt:Brought Death into the World, and all our woe,', 'paradise-lost.txt:With loss of Eden, till one greater Man', 'paradise-lost.txt:Restore us, and regain the blissful Seat,', "paradise-lost.txt:Sing Heav'nly Muse, that on the secret top", 'paradise-lost.txt:Of Oreb, or of Sinai, didst inspire', 'paradise-lost.txt:That Shepherd, who first taught the chosen Seed']"
}
