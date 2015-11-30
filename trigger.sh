#/bin/bash

scp -o StrictHostKeyChecking=no -q setup.sh vpnjp:~/
ssh vpnjp "./setup.sh"
