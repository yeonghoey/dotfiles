# -*- coding: utf-8 -*-
from __future__ import absolute_import, print_function, unicode_literals

import os
import sys
import time

import clipboard


def main(ankidir, inpath):
    if not os.path.exists(inpath):
        print('"%s" not exsisting' % inpath, file=sys.stderr)
        exit(1)
    while True:
        line = raw_input('listening> ')
        line = line.strip()
        try:
            ss, to = line.split()
        except ValueError:
            print('invalid section: %s' % line, file=sys.stderr)
        else:
            outname = make_outname()
            outpath = os.path.join(ankidir, outname)
            extract(inpath, outpath, ss, to)
            clipboard.copy('[sound:%s]' % outname)
            play(outpath)


def make_outname():
    return 'listening-%d.mp3' % time.time()


def extract(inpath, outpath, ss, to):
    cmd = 'ffmpeg -y -i "{inpath}" -vn -codec:a libmp3lame -qscale:a 3 '\
          '-ss {ss} -to {to} "{outpath}"'.format(**locals())
    os.system(cmd)


def play(outpath):
    cmd = '(afplay "%s" &)' % outpath
    os.system(cmd)


if __name__ == '__main__':
    ankidir = sys.argv[1]
    inpath = sys.argv[2]
    print('ankidir: %s' % ankidir)
    print(' inpath: %s' % inpath)
    main(ankidir, inpath)
