#!/bin/bash

mkdir build
chmod u+w ./build

# Latex'у нужно что бы в папке build была такая же файловая структура как и в основном проекте.
./copy_dir_structure.sh "./tex" "./build"

pdflatex -output-directory=build -interaction=nonstopmode main.tex