import cv2
import numpy as np

IN = "/Users/brettell/Documents/Repositories/PhD-thesis/book/figs/somites/1-1159.avi"
OUT = "/Users/brettell/Documents/Repositories/PhD-thesis/book/figs/somites/ali_compiled_somite_elong.png"

cap = cv2.VideoCapture(IN)

FRAME_COUNT = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))

TOT_FRAMES = 12

BY = int(FRAME_COUNT / TOT_FRAMES)

WID = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
HEI = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))

TARGETS = []
for i in range(1,TOT_FRAMES + 1):
  out = i * BY
  TARGETS.append(out)

FRAMES = []
for i in TARGETS:
  out = cap.set(cv2.CAP_PROP_POS_FRAMES, i)
  ret, frame = cap.read()
  FRAMES.append(frame)

TOP = np.hstack((FRAMES[0], FRAMES[1], FRAMES[2], FRAMES[3]))
MID = np.hstack((FRAMES[4], FRAMES[5], FRAMES[6], FRAMES[7]))
BOT = np.hstack((FRAMES[8], FRAMES[9], FRAMES[10], FRAMES[11]))

FULL = np.vstack((TOP, MID, BOT))

cv2.imwrite(OUT, FULL)
