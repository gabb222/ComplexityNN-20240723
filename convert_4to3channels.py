import os
from PIL import Image

# Path to the input folder
#input_folder = "d:/01 Work Projects/Dissertation/ComplexityNN-20240723/synthetic"
input_folder = "d:/01 Work Projects/Dissertation/ComplexityNN-20240723/Backgrounds_NOME"

# Path to the new folder to save the converted images
output_folder = "d:/01 Work Projects/Dissertation/ComplexityNN-20240723/Backgrounds_NOME_v1"

# Create the output folder if it doesn't exist
os.makedirs(output_folder, exist_ok=True)

# Iterate through all the files in the research folder
for filename in os.listdir(input_folder):
    
    # Check if the file is an image
    if filename.endswith(".png") or filename.endswith(".jpg") or filename.endswith(".tif"):
        # Open the image
        image_path = os.path.join(input_folder, filename)
        image = Image.open(image_path)
        
        # Convert the image to RGB if it has 4 channels
        #if image.mode == "RGBA":
        #    image = image.convert("RGB")

        #Convert the image to RGB if it is grayscale
        #if image.mode == "L":
        #    image = image.convert("RGB")

        #Convert the image to RGB if it is grayscale
        if image.mode != "RGB":
            image = image.convert("RGB")

        # Save the converted image to the output folder
        output_path = os.path.join(output_folder, filename)

        if filename.endswith(".tif"):
            image.save(output_path.replace(".tif", ".jpg"),"JPEG")
        else:
            image.save(output_path)
