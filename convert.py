#!/usr/bin/python3
from bdfparser import Font
font = Font('ib8x8u.bdf')

print(
   '\n'.join(
      f'// {code}:\n' +
      '\n'.join(
          line.rstrip()for line in
            str(font.glyph(bytes([code]).decode('cp437')))
            .replace('.','0 ')
            .replace('#','1 ')
            .split('\n')
        )
      for code in range(256))
   )
