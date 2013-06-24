rm -rf hadoop hadoop-1.2.0.1.3.0.0-107
tar -zxf hadoop-1.2.0.1.3.0.0-107.tar.gz
mv hadoop-1.2.0.1.3.0.0-107 hadoop
cp conf/core-site.xml hadoop/conf/core-site.xml
cp conf/hdfs-site.xml hadoop/conf/hdfs-site.xml
cp conf/mapred-site.xml hadoop/conf/mapred-site.xml
echo "export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-amd64" >> hadoop/conf/hadoop-env.sh
docker build -t fkautz/hadoop-hw .
rm -rf hadoop hadoop-1.2.0.1.3.0.0-107
