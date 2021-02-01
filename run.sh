#!/usr/bin/env bash

echo "> Building example"
cmake -B build .
cmake --build build

echo -e "\n\n> Call throwException from C"
./build/Main

echo -e "\n\n> Call throwException from Dart"
dart main.dart
