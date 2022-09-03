#!/bin/bash
# A script that pushes my csv and updates my files
CWD=$(pwd)

cd ~/OneDrive/PyProjects/Resume_Builder

quarto render resume_alex.qmd --to pdf

mv resume_alex.pdf cv.pdf

cp cv.pdf ~/Documents/Rprojects/acbass49-data_projects_web/static/files

cp cv.pdf ~/Documents/Application_Materials/

cd ~/Documents/Rprojects/acbass49-data_projects_web

git pull

git add static/files/cv.pdf

git commit -m 'update cv '$(date +%d.%m.%y-%H:%M:%S)

git push

cd ~/OneDrive/PyProjects/Resume_Builder

git pull

git add .

git commit -m 'update cv '$(date +%d.%m.%y-%H:%M:%S)

git push

cd $CWD
