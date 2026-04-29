# CMake generated Testfile for 
# Source directory: C:/Users/olgal/lab5
# Build directory: C:/Users/olgal/lab5/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(BankingTests "C:/Users/olgal/lab5/build/Debug/RunTest.exe")
  set_tests_properties(BankingTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/olgal/lab5/CMakeLists.txt;41;add_test;C:/Users/olgal/lab5/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(BankingTests "C:/Users/olgal/lab5/build/Release/RunTest.exe")
  set_tests_properties(BankingTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/olgal/lab5/CMakeLists.txt;41;add_test;C:/Users/olgal/lab5/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(BankingTests "C:/Users/olgal/lab5/build/MinSizeRel/RunTest.exe")
  set_tests_properties(BankingTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/olgal/lab5/CMakeLists.txt;41;add_test;C:/Users/olgal/lab5/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(BankingTests "C:/Users/olgal/lab5/build/RelWithDebInfo/RunTest.exe")
  set_tests_properties(BankingTests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/olgal/lab5/CMakeLists.txt;41;add_test;C:/Users/olgal/lab5/CMakeLists.txt;0;")
else()
  add_test(BankingTests NOT_AVAILABLE)
endif()
subdirs("banking")
subdirs("googletest")
