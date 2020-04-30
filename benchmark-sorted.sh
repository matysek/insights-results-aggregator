#!/usr/bin/env bash
# Copyright 2020 Red Hat, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


if [ $# -eq 0 ]
then
    echo
    echo "No arguments supplied. Expected prefix for benchmark function name."
    echo "For example 'Benchmark' to choose all of them"
    echo
    exit 1
fi

./benchmark.sh "$1" | grep -E "^$1" | sort -n -k 2,2