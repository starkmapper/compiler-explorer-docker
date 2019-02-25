#!/bin/bash
original_pwd=`pwd`
cd /c
base_dir=$(printf %q "Program Files (x86)/Embarcadero/Studio/")
versions=`eval ls $base_dir`
echo $versions
# exclude full by default
#archives="full bin msbuild include lib"
archives="bin include"
#archives="bin include lib"
#archives="msbuild"
for version in $versions
do

  echo "Packing files for release $version"

  full_dir="$base_dir$version"
  #just grab the whole dir
  full_files="$full_dir"

  # specifying individual files might save 10mB, save that for later
  # we need the executables (bcc32, ilink, brc32 etc), and their config files
  bin_files="$full_dir/bin/*.exe $full_dir/bin/*.cfg $full_dir/bin/rsvars.bat"
  # We need the built task assemblies and msbuild target files.
  msbuild_files="$full_dir/bin/*.Targets $full_dir/bin/Borland.Build.* $full_dir/bin/bccide.dll $full_dir/bin/comp32x.dll $full_dir/bin/Borland.Globalization.dll"
  include_files="$full_dir/include"
  lib_files="$full_dir/lib"

  for archive in $archives
  do
    files_var="$archive"_files
    archive_file="$original_pwd/compilers/$version-$archive.tar.gz"
    eval archive_files='$'$files_var
    if [ ! -f "$archive_file" ]
    then
      echo Creating archive: $archive
      eval tar czf '"$archive_file"' $archive_files
    else
      echo Skipping archive: $archive
    fi
  done
done
cd "$original_pwd"
