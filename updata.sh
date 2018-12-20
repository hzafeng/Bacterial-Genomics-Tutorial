pandoc -V mainfont="SimSun" -f markdown -t rst ./source/ind.md -o ./source/ind.rst
make html
git add * -f
git commit -m "v1.0"
git push -u origin master
