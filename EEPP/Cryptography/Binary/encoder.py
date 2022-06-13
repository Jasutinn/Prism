#!/usr/bin/env python

import sys

if __name__ == "__main__":
        if sys.argv[1] in ('-a', '--ascii'):
            print((bin(int.from_bytes(sys.argv[2].encode(), 'big')))[2:])
        else:
            print("Usage: enbinary --ascii .*? ")

exit()
