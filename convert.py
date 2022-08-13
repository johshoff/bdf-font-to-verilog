#!/usr/bin/python3
import sys
from bdfparser import Font
font = Font(sys.stdin)

print(
   '\n'.join(
      f'// {code}:\n' +
      '\n'.join(
          line[::-1] for line in
            str(font.glyph(bytes([code]).decode('cp437')))
            .replace('.','0')
            .replace('#','1')
            .split('\n')
        )
      for code in range(256))
   )
