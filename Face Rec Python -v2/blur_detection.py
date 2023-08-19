import cv2
import numpy as np

img = cv2.imread("b6.jpg")
laplacian_var = cv2.Laplacian(img, cv2.CV_64F).var()

if laplacian_var < 65:
    print("Image Blurry.....")
    
print(laplacian_var)

# b1 -> 48.9428946316513
# b3 -> 31.150782212369634
# b4 -> 152.27167074312482
# b5 -> 392.8531828263888
# b6 -> 51.3922307515432

# 65 is the treshhhold

#print(laplacian_var)

#cv2.imshow("Img", img)
#cv2.waitKey(0)
#cv2.destroyAllWindows()