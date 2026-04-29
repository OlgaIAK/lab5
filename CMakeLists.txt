cmake_minimum_required(VERSION 3.10)
project(TestRunning)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Принудительно используем статическую линковку для Windows
if(WIN32)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MTd")
endif()

# Опции
option(BUILD_TESTS "Build tests" OFF)

# Добавляем библиотеку banking
add_subdirectory(banking)

# Настройка тестов
if(BUILD_TESTS)
    enable_testing()
    
    # Добавляем Google Test
    add_subdirectory(googletest)
    
    # Создаём исполняемый файл тестов
    add_executable(RunTest test.cpp)
    
    # Линкуем библиотеки
    target_link_libraries(RunTest 
        banking
        gtest 
        gtest_main 
        gmock_main
    )
    
    target_include_directories(RunTest PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/banking
    )
    
    # Добавляем тест в CTest
    add_test(NAME BankingTests COMMAND RunTest)
endif()
