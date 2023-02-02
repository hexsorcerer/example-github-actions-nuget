#!/bin/bash

sed \
    --quiet \
    --regexp-extended \
    's/^[[:space:]]*(<Version>)(.*)(<\/Version>)/\2/p' \
    Directory.Build.props
