import json
import os

thresh=0.8 # min probability you want to have threshhold 
output_file="result.json" # output is saved to this file
input_file="data/train.txt" # add and remove images from this file
darknet="./darknet" # change this to "darknet.exe" if its windows system
cfg="cfg/yolov3.cfg"
data="cfg/coco.data"
weights="yolov3.weights"
vehicles_list=["car","motorbike","bus","truck"] # vehicles with number plate
os.system(f"{darknet} detector test {data} {cfg} {weights} -thresh {thresh} -ext_output -out {output_file} < {input_file} ")
os.system("clear")

with open(output_file) as json_file:
    data = json.load(json_file) 
    for i_frame in range(len(data)): # for each image in input_file
        print(f"for {i_frame+1} image :") 
        for i_vehicle in range(len(data[i_frame]["objects"])): # for each object in image
            if (data[i_frame]["objects"][i_vehicle]["name"] in vehicles_list): # if object is vehicle
                print(data[i_frame]["objects"][i_vehicle]["name"],data[i_frame]["objects"][i_vehicle]["relative_coordinates"]) # print coordinates of vehicle
        print("\n")
