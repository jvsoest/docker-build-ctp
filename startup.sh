INSTALL_HOME=""

#set java home
JAVA_HOME="$INSTALL_HOME/jdk1.7.0_79"
PATH="$PATH:$JAVA_HOME/bin"
export JAVA_HOME PATH

cd $INSTALL_HOME/CTP && java -jar Runner.jar
