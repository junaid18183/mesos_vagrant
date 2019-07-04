rpm -Uvh http://repos.mesosphere.com/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm
rpm -Uvh http://archive.cloudera.com/cdh4/one-click-install/redhat/6/x86_64/cloudera-cdh-4-0.x86_64.rpm
yum install -y java-1.8.0-openjdk.x86_64 docker mesos marathon zookeeper zookeeper-server
su - zookeeper -s /bin/bash -c 'zookeeper-server-initialize --myid=1 --force'
systemctl start zookeeper-server
systemctl start mesos-master
echo "docker,mesos" > /etc/mesos-slave/containerizers
systemctl start mesos-slave
echo """MARATHON_MASTER=zk://127.0.0.1:2181/mesos
> MARATHON_ZK=zk://127.0.0.1:2181/marathon
> MARATHON_MESOS_USER=root""" > /etc/default/marathon
systemctl start docker
systemctl start marathon
