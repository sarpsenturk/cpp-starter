find_package(GTest)
if (GTest_Found)
    message("-- GTest found")
else ()
    set(GOOGLETEST_COMMIT_ID "e68764c147ea0dac1e8811925c531d937396878e" CACHE STRING "GoogleTest commit ID")
    message(STATUS "Using FetchContent to get GTest with commit ${GOOGLETEST_COMMIT_ID}.")
    include(FetchContent)
    FetchContent_Declare(
            googletest
            URL https://github.com/google/googletest/archive/${GOOGLETEST_COMMIT_ID}.zip
    )
    # For Windows: Prevent overriding the parent project's compiler/linker settings
    set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
    FetchContent_MakeAvailable(googletest)
endif ()

