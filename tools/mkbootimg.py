#!/usr/bin/env python3
"""Package kernel Image + DTB + ramdisk -> SPRD boot.img for DW99."""
import struct, os, sys

# Paths
KERNEL     = sys.argv[1] if len(sys.argv) > 1 else 'arch/arm64/boot/Image'
DTB        = sys.argv[2] if len(sys.argv) > 2 else 'tools/dw99.dtb'
RAMDISK    = 'tools/ramdisk.gz'
OUT        = 'boot.img'

# SPRD boot.img constants
PAGE_SIZE  = 2048
KERNEL_ADDR  = 0x00008000
RAMDISK_ADDR = 0x05400000
SECOND_ADDR  = 0x00F00000
TAGS_ADDR    = 0x00000100
UNK2         = 0x12000000
MAGIC        = b'ANDROID!'

kernel_sz  = os.path.getsize(KERNEL)
ramdisk_sz = os.path.getsize(RAMDISK)
dt_sz      = os.path.getsize(DTB)

def roundup(n, p):
    return ((n + p - 1) // p) * p

k_ofs = PAGE_SIZE
r_ofs = k_ofs + roundup(kernel_sz, PAGE_SIZE)
d_ofs = r_ofs + roundup(ramdisk_sz, PAGE_SIZE)

# Build header
hdr = bytearray(2048)
hdr[0:8] = MAGIC
struct.pack_into('<I', hdr,  8, kernel_sz)
struct.pack_into('<I', hdr, 12, KERNEL_ADDR)
struct.pack_into('<I', hdr, 16, ramdisk_sz)
struct.pack_into('<I', hdr, 20, RAMDISK_ADDR)
struct.pack_into('<I', hdr, 24, 0)           # second_size
struct.pack_into('<I', hdr, 28, SECOND_ADDR)
struct.pack_into('<I', hdr, 32, TAGS_ADDR)
struct.pack_into('<I', hdr, 36, PAGE_SIZE)
struct.pack_into('<I', hdr, 40, dt_sz)       # SPRD dt_size
struct.pack_into('<I', hdr, 44, UNK2)
cmdline = b'buildvariant=userdebug'
hdr[64:64+len(cmdline)] = cmdline

# Write boot.img
with open(OUT, 'wb') as f:
    f.write(bytes(hdr))
    with open(KERNEL, 'rb') as kf: f.write(kf.read())
    f.write(b'\x00' * (r_ofs - f.tell()))
    with open(RAMDISK, 'rb') as rf: f.write(rf.read())
    f.write(b'\x00' * (d_ofs - f.tell()))
    with open(DTB, 'rb') as df: f.write(df.read())

sz = os.path.getsize(OUT)
print(f'Created {OUT}: kernel={kernel_sz} ramdisk={ramdisk_sz} dtb={dt_sz} -> {sz} bytes ({sz/1024/1024:.1f} MB)')
