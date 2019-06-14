#!/bin/bash

envtpl -o $ACTIVEMQ_HOME/conf/activemq.xml $ACTIVEMQ_HOME/conf/activemq.xml.tpl
exec $ACTIVEMQ_HOME/bin/activemq console