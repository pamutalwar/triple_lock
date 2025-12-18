#!/bin/sh
# ----------------------------------------------------------------------------
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#    https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
# ----------------------------------------------------------------------------

MAVEN_CMD_LINE_ARGS="$@"

MAVEN_PROJECTBASEDIR="$(cd "$(dirname "$0")" >/dev/null && pwd)"

MAVEN_OPTS=
MAVEN_SKIP_RC=

MAVEN_HOME=
if [ -n "$MAVEN_USER_HOME" ]; then
  MAVEN_HOME="$MAVEN_USER_HOME"
else
  MAVEN_HOME="$HOME/.m2"
fi

MAVEN_REPO_LOCAL="$MAVEN_HOME/repository"

MAVEN_WRAPPER_JAR="$MAVEN_PROJECTBASEDIR/.mvn/wrapper/maven-wrapper.jar"
MAVEN_WRAPPER_PROPERTIES="$MAVEN_PROJECTBASEDIR/.mvn/wrapper/maven-wrapper.properties"

if [ ! -f "$MAVEN_WRAPPER_JAR" ]; then
  echo "Downloading $MAVEN_WRAPPER_JAR"
  if [ -n "$(command -v wget)" ]; then
    wget -q -O "$MAVEN_WRAPPER_JAR" https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.1.0/maven-wrapper-3.1.0.jar
  elif [ -n "$(command -v curl)" ]; then
    curl -s -L -o "$MAVEN_WRAPPER_JAR" https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.1.0/maven-wrapper-3.1.0.jar
  else
    echo "Neither wget nor curl is available"
    exit 1
  fi
fi

if [ ! -f "$MAVEN_WRAPPER_PROPERTIES" ]; then
  echo "Could not find $MAVEN_WRAPPER_PROPERTIES"
  exit 1
fi

java -cp "$MAVEN_WRAPPER_JAR" "-Dmaven.home=$MAVEN_HOME" "-Dmaven.repo.local=$MAVEN_REPO_LOCAL" org.apache.maven.wrapper.MavenWrapperMain $MAVEN_CMD_LINE_ARGS
