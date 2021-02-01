#!/usr/bin/env bash

echo "> Building example"
cmake -B build .
cmake --build build

echo -e "\n\n> Call throwException from executable"
./build/Main

echo -e "\n\n> Call throwException from Dart"
dart main.dart
