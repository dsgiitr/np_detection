# Vehicle Detection
### Download weights first
In the directory run following command
```
wget https://pjreddie.com/media/files/yolov3.weights
```

### To run open terminal in the directory

Run the command:
```sh
python final.py
```
warning do not enter location when it asks "Enter the path:",
during that time it automatically takes input from the data/train.txt

### What it exactly does

```
It takes video named "project_video.mp4" in current directory takes screenshots from it and saves it in images format in data/ folder and make /data/train.txt file.
Then run yolo object detector to find vehicles (car, truck, bus, motorbike)
it saves output in "result.json", which is again read by final.py and presented in well understood format.
Also during the processing the images with bounding boxes and labels, can be seen in "prediction.jpg" which are constantly updated.
All the vehicle output are saved in output/ folder in image format.
```
### Problems
If this error shows up
sh: 1: ./darknet: Permission denied
Run the command:
```
chmod u+x darknet
```
