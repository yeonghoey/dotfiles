import os
import clipboard

os.system('clear')
while True:
    url = raw_input('aa> ')
    tagged = '<a href="{0}">{0}</a>'.format(url)
    clipboard.copy(tagged)
