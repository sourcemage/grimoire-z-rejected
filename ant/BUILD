(
export JAVA_HOME=/opt/java/j2sdk	&&
export PATH=$PATH:$JAVA_HOME/bin	&&
./build.sh -Ddist.dir=antbuild dist 	&&
prepare_install				&&
mkdir -p /opt/ant			&&
cp -R antbuild/* /opt/ant				
)  >  $C_FIFO  2>&1
