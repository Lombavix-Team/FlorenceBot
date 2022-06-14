from difflib import SequenceMatcher
from matplotlib import pyplot as plt
from matplotlib import image as mpimg
import os
plt.rcParams['toolbar'] = 'None'
plt.rcParams["figure.autolayout"] = True

def similar(a: str, b: str):
    # Compute the Gestalt pattern matching between the two strings
    return SequenceMatcher(None, a, b).ratio()

# Obtaining multimedia database
database_path = "multimedia/"
imageList = [f for f in os.listdir(database_path) if os.path.isfile(os.path.join(database_path,f))]

def multimediaMatcher(text: str) -> bool:

    found_img = False

    for multimedia in imageList:
        if similar(text,multimedia[:-4]) > 0.5:
            fig, _ = plt.subplots()
            plt.title("Related Image of " + multimedia[:-4])
 
            image = mpimg.imread('multimedia/' + multimedia)
            plt.axis('off')
            plt.imshow(image)
            plt.show()

            found_img = True

    return found_img