import cv2
from simple_facerec import SimpleFacerec

# encode faces from a folder
sfr = SimpleFacerec()
sfr.load_encoding_images("images/")

image_path = "test.jpg"
frame = cv2.imread(image_path)


face_locations, face_names = sfr.detect_known_faces(frame)
    
for face_loc, name in zip(face_locations, face_names):
    y1, x2, y2, x1 = face_loc[0], face_loc[1], face_loc[2], face_loc[3]

    cv2.putText(frame, name, (x1, y1 - 10), cv2.FONT_HERSHEY_COMPLEX, 1, (0,0,200), 2)
    cv2.rectangle(frame, (x1,y1), (x2,y2), (0,0,200), 4)

cv2.imshow("Detected Faces", frame)
cv2.waitKey(0)
cv2.destroyAllWindows()