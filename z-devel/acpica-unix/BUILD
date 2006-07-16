mkdir tmp  &&

if [[ $IASL == y ]]; then
  pushd compiler  &&
  make            &&
  cp iasl ../tmp  &&
  make clean      &&
  popd
fi  &&

if [[ $ACPISRC == y ]]; then
  pushd tools/acpisrc   &&
  make                  &&
  cp acpisrc ../../tmp  &&
  make clean            &&
  popd
fi  &&

if [[ $ACPIEXEC == y ]]; then
  pushd tools/acpiexec   &&
  make                   &&
  cp acpiexec ../../tmp  &&
  make clean             &&
  popd
fi  &&

if [[ $ACPIXTRACT == y ]]; then
  pushd tools/acpixtract   &&
  make                     &&
  cp acpixtract ../../tmp  &&
  make clean               &&
  popd
fi
