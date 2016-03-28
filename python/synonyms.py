from nltk.corpus import wordnet as wn
from colors import red, green, blue
from tabulate import tabulate
from sys import argv, stderr

import re

if len(argv) != 2:
    print >> stderr, 'synonyms.py: pass a word'
    exit(1)

word = argv[1]

# http://www.nltk.org/howto/wordnet.html
# https://pypi.python.org/pypi/ansicolors/1.0.2
# https://pypi.python.org/pypi/tabulate

synsets = wn.synsets(word)
table = []
for ss in synsets:
    ssname = re.sub(r'^[^.]+', lambda m: red(m.group(0)), ss.name())
    lemmas = ', '.join([green(l.name()) for l in ss.lemmas()])
    definition = ss.definition()
    table.append([ssname, lemmas, definition])

print tabulate(table)
