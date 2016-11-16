      PROGRAM echo
        CHARACTER(LEN=1) argc_string
        CHARACTER(LEN=10) argv_name
        CHARACTER(LEN=255) argv
        INTEGER argc, i

        CALL GET_ENVIRONMENT_VARIABLE("COG_ARGC", argc_string)
        READ(argc_string, "(I1)") argc
        
        DO i = 0, argc
          WRITE(argv_name, "(A9, I1)") "COG_ARGV_", i
          CALL GET_ENVIRONMENT_VARIABLE(argv_name, argv)
          WRITE(*, "(A)", ADVANCE="NO") TRIM(argv)
          WRITE(*, "(A)", ADVANCE="NO") " "
        END DO

        WRITE(*, "(A)") ""
      END PROGRAM echo
