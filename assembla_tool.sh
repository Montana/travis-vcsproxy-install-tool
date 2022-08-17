#!/bin/bash

p4 client -S //depot/main -o | p4 client -i
p4 reconcile
p4 submit -d "Submit with the Assembla tool."
