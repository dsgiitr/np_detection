import cv2
import math
import json
import os
import glob

videoFile = "project_video.mp4"

cap = cv2.VideoCapture(videoFile)
frameRate = cap.get(5) #frame rate
sec=10
x=1
file1 = open("data/train.txt","w") 
while(cap.isOpened()):
    frameId = cap.get(1) #current frame number
    ret, frame = cap.read()
    if (ret != True):
        break
    if ((frameId+1) % (math.floor(frameRate)*sec) == 0):
        filename = 'data/image' +  str(int(x)) + ".jpg";x+=1
        cv2.imwrite(filename, frame)
        print(filename)
        file1.write(filename+str("\n"))
file1.close()
cap.release()



thresh=0.95 # min probability you want to have threshhold 
output_file="result.json" # output is saved to this file
input_file="data/train.txt" # add and remove images from this file
darknet="./darknet" # change this to "darknet.exe" if its windows system
cfg="cfg/yolov3.cfg"
data="cfg/coco.data"
weights="yolov3.weights"
vehicles_list=["car","motorbike","bus","truck"] # vehicles with number plate
os.system(f"{darknet} detector test {data} {cfg} {weights} -thresh {thresh} -ext_output -out {output_file} < {input_file} ")
os.system("clear")
dirName = 'output'
 
try:
    # Create target Directory
    os.mkdir(dirName)
    print("Directory " , dirName ,  " Created ") 
except FileExistsError:
    print("Directory " , dirName ,  " already exists")

files = glob.glob(f'{os.getcwd()}/output/*')
for f in files:
    os.remove(f)
from PIL import Image
with open(output_file) as json_file:
    data = json.load(json_file) 
    for i_frame in range(len(data)): # for each image in input_file
        in_file=data[i_frame]["filename"]
        print(f"for {i_frame+1} image :") 
        for i_vehicle in range(len(data[i_frame]["objects"])): # for each object in image
            if (data[i_frame]["objects"][i_vehicle]["name"] in vehicles_list): # if object is vehicle
                out_file = 'output/'+in_file[5:][:-4]+f"_{i_vehicle}"+in_file[5:][-4:]
                cord=data[i_frame]["objects"][i_vehicle]["relative_coordinates"]
                img = Image.open(in_file)
                X, Y = img.size
                c_x,c_y=cord["center_x"],cord["center_y"]
                w,h=cord["width"],cord["height"]
                cropped = img.crop((int((c_x-w/2)*X),int((c_y-h/2)*Y), X-(int((1-c_x-w/2)*X)), Y-int((1-c_y-h/2)*Y)))
                cropped.save(out_file)
        print("\n")
