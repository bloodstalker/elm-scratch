#!/bin/bash

"elm-reactor" &
ELM_REACTOR=$!
firefox http://localhost:8000
kill -9 $ELM_REACTOR
