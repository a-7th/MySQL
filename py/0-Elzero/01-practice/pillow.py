#pillow() used to manipulate image
#example:
from PIL import Image

# 1. Corrected to forward slashes for Linux
img = Image.open("/home/a7th/a7th-/solve/Pyth/1-practice/a7th.png")
img.show() #shows image

# 2. Fixed the typo from 'fromat' to 'format'
print(img.format)
print(img.size)
print(img.mode)

#my cropped image
box = (0, 0, 400, 400)
newimg = img
#show the new img
newimg.show()