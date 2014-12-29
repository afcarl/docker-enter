#!/bin/bash
# Copyright 2015 Frank Lemanschik Direkt SPEED
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
set -e
wget https://raw.githubusercontent.com/Pithikos/docker-enter/master/docker-enter.c
gcc docker-enter.c -o docker-enter
if mountpoint -q /target; then
echo "Installing docker-enter to /target"
chmod +x docker-enter && cp docker-enter /target
else
echo "/target is not a mountpoint."
echo "You can either:"
echo "- re-run this container with -v /usr/bin:/target"
echo "- extract the docker-enter binary (located at /)"
fi
