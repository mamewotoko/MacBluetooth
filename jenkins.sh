#! /bin/sh
export PATH=$PATH:$MAVEN_HOME/bin

if [ ! -d lib ]; then
   mkdir lib
fi
if [ ! -d target ]; then
   mkdir target
fi
curl http://snapshot.bluecove.org/distribution/download/2.1.1-SNAPSHOT/2.1.1-SNAPSHOT.62/bluecove-2.1.1-SNAPSHOT.jar -o lib/bluecove-2.1.1-SNAPSHOT.jar
mv bluecove-2.1.1-SNAPSHOT.jar lib
cat > settings.xml << "END_OF_XML";
<settings>
<localRepository>/tmp/mavenrepo</localRepository>
</settings>
END_OF_XML
mvn --settings settings.xml package

