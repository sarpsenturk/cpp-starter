include(FetchContent)
FetchContent_Declare(
        fmt
        GIT_REPOSITORY https://github.com/fmtlib/fmt.git
        GIT_TAG 9.1.0
        FIND_PACKAGE_ARGS NAMES fmt
)

FetchContent_MakeAvailable(fmt)
