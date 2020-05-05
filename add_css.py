#! /usr/bin/env python

import os, sys

output = """<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <style type="text/css">
"""

css = open(sys.argv[2])
output += css.read()

output += """
    </style>
</head>
<body>
"""
html = open(sys.argv[1])
output += html.read()
output += """</body>
</html>
"""
print(output)

# outfile = open(sys.argv[3])
# outfile.write(output)
# outfile.close()
