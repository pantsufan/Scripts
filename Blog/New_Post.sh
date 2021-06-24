#!/bin/bash
cd /home/joel/Hugo/Kninja
echo "Enter New Post Title:"
read title
hugo new post/$title.md
codium .
