import os
import sys
import re
import pycurl
import StringIO
import clipboard


QUERY_URL = 'http://endic.naver.com/search.nhn?sLn=en&query={}'
RE_OBJECT = re.compile(r'playlist="([^"]+)"')

ANKI_PATH ='.'

def expron(word):
    page_source = fetch_page_source(word)
    pron_url = extract_pron_url(page_source)
    if pron_url:
        filename = word+'.mp3'
        clipboard.copy('[sound:{}]'.format(filename))
        download_pronfile(filename, pron_url)
        play_downloaded(filename)

def fetch_page_source(word):
    url = QUERY_URL.format(word)
    b = StringIO.StringIO()
    c = pycurl.Curl()
    c.setopt(c.URL, url)
    c.setopt(c.WRITEDATA, b)
    c.perform()
    c.close()
    return b.getvalue()

def extract_pron_url(page_source):
    mo = RE_OBJECT.search(page_source)
    if mo:
        return mo.group(1)

def download_pronfile(filename, url):
    global ANKI_PATH
    target = os.path.join(ANKI_PATH, filename)
    with open(target, 'wb') as f:
        c = pycurl.Curl()
        c.setopt(c.URL, url)
        c.setopt(c.WRITEDATA, f)
        c.perform()
        c.close()

def play_downloaded(filename):
    global ANKI_PATH
    target = os.path.join(ANKI_PATH, filename)
    cmd = '( afplay "{}" & )'.format(target)
    os.system(cmd)



queries = [
    r'http://www.thesaurus.com/browse/{}',
    r'http://www.google.com/search?tbm=isch&q={}',
    r'http://endic.naver.com/search.nhn?sLn=en&query={}',
    ]


if __name__ == '__main__':
    if len(sys.argv) == 2:
        ANKI_PATH = sys.argv[1]
        print "Anki Path: '{}'".format(ANKI_PATH)

    os.system('clear')
    while True:
        word = raw_input('refword> ')
        if not word.strip(): continue
        expron(word)
        # for q in queries:
        #     os.system('open "{}"'.format(q.format(word)))
