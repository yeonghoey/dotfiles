# -*- coding: utf-8 -*-
from __future__ import absolute_import, print_function, unicode_literals

import os
import sys
import time

import clipboard


def main(ankidir, inpath, ss, to):
    inpath = os.path.abspath(inpath)
    if not os.path.exists(inpath):
        print('"%s" not exsisting' % inpath, file=sys.stderr)
        exit(1)
    outname = make_outname(inpath)
    outpath = os.path.join(ankidir, outname)
    extract(inpath, outpath, ss, to)
    copy_clipboard(outname)
    play(outpath)


def make_outname(inpath):
    _, tail = os.path.split(inpath)
    name, _ = os.path.splitext(tail)
    return '%s-%d.mp3' % (name, time.time())


def extract(inpath, outpath, ss, to):
    cmd = 'ffmpeg -y -loglevel 0 '\
          '-i "{inpath}" -vn -codec:a libmp3lame -qscale:a 3 '\
          '-ss {ss} -to {to} "{outpath}"'.format(**locals())
    os.system(cmd)


def copy_clipboard(outname):
    sound = '[sound:%s]' % outname
    print('copy: %s' % sound)
    clipboard.copy(sound)


def play(outpath):
    cmd = '(afplay "%s" &)' % outpath
    os.system(cmd)


def name(path):
    return os.path.split(path)[1]

if __name__ == '__main__':
    ankidir = sys.argv[1]
    inpath = sys.argv[2]
    ss = sys.argv[3]
    to = sys.argv[4]
    print('ankidir: %s' % ankidir)
    print('extract: %s (%s ~ %s)' % (inpath, ss, to))
    main(ankidir, inpath, ss, to)
