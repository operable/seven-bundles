#!/usr/local/bin/io

Range

argc := System getEnvironmentVariable("COG_ARGC") asNumber
args := 0 to(argc - 1) map(argv, System getEnvironmentVariable("COG_ARGV_#{argv}" interpolate))
args join(" ") println
