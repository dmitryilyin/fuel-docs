

.. _sahara-ports:

Ports Used by Sahara
--------------------

The table below lists:

- Ports that must be open for inbound traffic
  (marked with 'yes' in the 'Required for Sahara' column)

- Ports that are used for running Sahara post-deployment health checks.
  They must be opened for inbound traffic for post-deployment health
  checks to succeed.

- Other ports, which are neither required by Sahara itself nor by
  post-deployment health checks, are required to be open for
  inter-cluster communication. I.e. the ports could be closed for
  public network, but must be open for private network used for
  cluster deployment.

The ports must be opened in the 'default' security group in each
tenant where Sahara is to be used.


+-----------------+-------------------+------------------------+--------------------------------------+
| Port / protocol | Required for      | Required for Sahara    | Port                                 |
|                 | Sahara            | post-deployment        | Description                          |
|                 |                   | health checks          |                                      |
+=================+===================+========================+======================================+
| 22 / TCP        | yes               | yes                    | Required for communication           |
|                 |                   |                        | between Sahara and virtual machines  |
+-----------------+-------------------+------------------------+--------------------------------------+
| 80 / TCP        | yes (HDP          | no                     | Ambari web interface                 |
|                 |      plugin only) |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8080 / TCP      | yes (HDP          | no                     | Ambari REST API                      |
|                 |      plugin only) |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 11000 / TCP     | yes (EDP only)    | no                     | Oozie REST API                       |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8020 / TCP      | no                | no                     | NameNode HDFS port for Hadoop 1      |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8021 / TCP      | no                | no                     | JobTracker port for job submission   |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8030 / TCP      | no                | no                     | ResourceManager scheduler            |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8031 / TCP      | no                | no                     | ResourceManager resource tracker     |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8032 / TCP      | no                | no                     | ResourceManager applicatiols manager |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8033 / TCP      | no                | no                     | ResourceManager admin interface      |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8040 / TCP      | no                | no                     | NodeManager localizer IPC            |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8041 / TCP      | no                | no                     | NodeManager container manager        |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8042 / TCP      | no                | no                     | NodeManager Web UI                   |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 8088 / TCP      | no                | no                     | ResourceManager Web UI               |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 9000 / TCP      | no                | no                     | NameNode HDFS port for Hadoop 2      |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 10020 / TCP     | no                | no                     | MapReduce JobHistory Server IPC      |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 19888 / TCP     | no                | no                     | MapReduce JobHistory Server Web UI   |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 50010 / TCP     | no                | no                     | DataNode HDFS port                   |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 50020 / TCP     | no                | no                     | DataNode IPC port                    |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 50030 / TCP     | no                | yes                    | JobTracker Web UI                    |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 50060 / TCP     | no                | yes                    | TaskTracker Web UI                   |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 50070 / TCP     | no                | yes                    | NameNode Web UI                      |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 50075 / TCP     | no                | yes                    | DataNode Web UI                      |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+
| 50090 / TCP     | no                | yes                    | Secondary NameNode Web UI            |
|                 |                   |                        |                                      |
+-----------------+-------------------+------------------------+--------------------------------------+


.. note:: The ports listed above are defaults.
    if some of them are changed while launching a Hadoop cluster,
    the corresponding ports must be opened instead of the default ones.


Also make sure that communication between virtual machines is not blocked.

