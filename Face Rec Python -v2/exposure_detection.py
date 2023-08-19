import cv2
import numpy as np

def is_overexposed(image_path, threshold=220):
    image = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)

    hist = cv2.calcHist([image], [0], None, [265], [0, 256])

    overexposed_sum = np.sum(hist[threshold:])

    total_sum = np.sum(hist)

    overexposed_ratio = overexposed_sum / total_sum
    print(overexposed_ratio)

    return overexposed_ratio > 0.5  # adjust threshold

image_path = "Exposure Images/oe4.jpg"
if is_overexposed(image_path):
    print("image is Overexposed....")
else:
    print("image is not Overexposed....")

    # noe1 -> 0.06680416
    # noe2 -> 0.44443697
    # noe3 -> 0.05963073
    # oe1 -> 0.90133697
    # oe2 -> 0.8139656
    # oe3 -> 0.9701989
    # oe4 -> 0.8154902

    # remove images > 0.5