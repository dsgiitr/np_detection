# -*- coding: utf-8 -*-
"""palate localization.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1QoAi90gpix57UxhHBj5J-tYa5zewulUw
"""

import torch
from torch.autograd import Variable
import torch.nn as nn
import argparse
import numpy as np
from os import path, mkdir

from time import time

use_gpu = torch.cuda.is_available()
print (use_gpu)

numClasses = 4
numPoints = 4
imgSize = (480, 480)
batchSize = 8 if use_gpu else 8


provNum, alphaNum, adNum = 38, 25, 35

class wR2(nn.Module):
    def __init__(self, num_classes=1000):
        super(wR2, self).__init__()
        hidden1 = nn.Sequential(
            nn.Conv2d(in_channels=3, out_channels=48, kernel_size=5, padding=2, stride=2),
            nn.BatchNorm2d(num_features=48),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=2, padding=1),
            nn.Dropout(0.2)
        )
        hidden2 = nn.Sequential(
            nn.Conv2d(in_channels=48, out_channels=64, kernel_size=5, padding=2),
            nn.BatchNorm2d(num_features=64),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=1, padding=1),
            nn.Dropout(0.2)
        )
        hidden3 = nn.Sequential(
            nn.Conv2d(in_channels=64, out_channels=128, kernel_size=5, padding=2),
            nn.BatchNorm2d(num_features=128),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=2, padding=1),
            nn.Dropout(0.2)
        )
        hidden4 = nn.Sequential(
            nn.Conv2d(in_channels=128, out_channels=160, kernel_size=5, padding=2),
            nn.BatchNorm2d(num_features=160),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=1, padding=1),
            nn.Dropout(0.2)
        )
        hidden5 = nn.Sequential(
            nn.Conv2d(in_channels=160, out_channels=192, kernel_size=5, padding=2),
            nn.BatchNorm2d(num_features=192),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=2, padding=1),
            nn.Dropout(0.2)
        )
        hidden6 = nn.Sequential(
            nn.Conv2d(in_channels=192, out_channels=192, kernel_size=5, padding=2),
            nn.BatchNorm2d(num_features=192),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=1, padding=1),
            nn.Dropout(0.2)
        )
        hidden7 = nn.Sequential(
            nn.Conv2d(in_channels=192, out_channels=192, kernel_size=5, padding=2),
            nn.BatchNorm2d(num_features=192),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=2, padding=1),
            nn.Dropout(0.2)
        )
        hidden8 = nn.Sequential(
            nn.Conv2d(in_channels=192, out_channels=192, kernel_size=5, padding=2),
            nn.BatchNorm2d(num_features=192),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=1, padding=1),
            nn.Dropout(0.2)
        )
        hidden9 = nn.Sequential(
            nn.Conv2d(in_channels=192, out_channels=192, kernel_size=3, padding=1),
            nn.BatchNorm2d(num_features=192),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=2, padding=1),
            nn.Dropout(0.2)
        )
        hidden10 = nn.Sequential(
            nn.Conv2d(in_channels=192, out_channels=192, kernel_size=3, padding=1),
            nn.BatchNorm2d(num_features=192),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=1, padding=1),
            nn.Dropout(0.2)
        )
        self.features = nn.Sequential(
            hidden1,
            hidden2,
            hidden3,
            hidden4,
            hidden5,
            hidden6,
            hidden7,
            hidden8,
            hidden9,
            hidden10
        )
        self.classifier = nn.Sequential(
            nn.Linear(63360, 100),
            # nn.ReLU(inplace=True),
            nn.Linear(100, 100),
            # nn.ReLU(inplace=True),
            nn.Linear(100, 12),
        )

    def forward(self, x):
        x1 = self.features(x)
        x11 = x1.view(x1.size(0), -1)
        x = self.classifier(x11)
        return x



import pandas as pd
import glob
name=names=(glob.glob("photos/*"))

df=pd.DataFrame(names)

df.columns=["names"]

print(df.head())

df=df["names"].str.split("/",n=-1,expand = True)
print(df.head())



df=df[1].str.split("_",n=-1,expand = True)

print(df.head())

df1=df[1].str.split("-",n=-1,expand=True)

df1=pd.concat([df1,df[2],df[3]],axis=1)
print(df1.head())

df2=df[4].str.split("-",n=-1,expand=True)
df1=pd.concat([df1,df2,df[5],df[6],df[7],df[8],df[9],df[10]],axis=1)
print(df1.head())

df3=df[11].str.split('-',n=-1,expand=True)
df1=pd.concat([df1,df3[0]],axis=1)
print(df1.head())

col=[0,1,2,3,4,5,6,7,8,9,10,11,12]
print(df1.columns)

df1.columns=col

print(df1.head())

print(df1.head())

df=df1.drop(0,axis=1)

df.head()
df=df.astype(int)

dfnamelist=pd.DataFrame(names)
from skimage import io, transform

dfnamelist.iloc[0,0]

def __getitem__(self, idx):
        if torch.is_tensor(idx):
            idx = idx.tolist()

        img_name = dfnamelist.iloc[idx,0]
        image = io.imread(img_name)
        landmarks = self.df.iloc[idx, 0:]
        landmarks = np.array([landmarks])
        landmarks = landmarks.astype('float').reshape(-1, 2)
        sample = {'image': image, 'landmarks': landmarks}

        if self.transform:
            sample = self.transform(sample)

        return sample

image=io.imread(dfnamelist.iloc[0,0])
print(image.dtype)



import torchvision.transforms as transforms
from PIL import Image

#images=glob.glob("photos/*jpg")
#for image in images:
  
#
 # img = Image.open(image)
  
 # trans1 = transforms.ToTensor()
  #data=trans1(img)

import torch
from torchvision import transforms, datasets

data_transform = transforms.Compose([
        transforms.ToTensor(),
        transforms.Normalize(mean=[0.485, 0.456, 0.406],
                             std=[0.229, 0.224, 0.225])
    ])
hymenoptera_dataset = datasets.ImageFolder(root='/',
                                           transform=data_transform)
dataset_loader = torch.utils.data.DataLoader(hymenoptera_dataset,
                                             batch_size=4, shuffle=True,
                                             num_workers=4)

from torch.utils.data import Dataset, DataLoader
class Numberpalate(Dataset):

    def __init__(self, csv_file, transform=None):
        """
        Args:
            csv_file (string): Path to the csv file with annotations.
            root_dir (string): Directory with all the images.
            transform (callable, optional): Optional transform to be applied
                on a sample.
        """
        self.landmarks_frame = (csv_file)
        
        self.transform = transform

    def __len__(self):
        return len(self.landmarks_frame)

    def __getitem__(self, idx):
        if torch.is_tensor(idx):
            idx = idx.tolist()

        img_name =self.landmarks_frame.iloc[idx, 0]
        image = io.imread(img_name)
        landmarks = self.landmarks_frame.iloc[idx, 1:]
        landmarks = np.array([landmarks])
        landmarks = landmarks.astype('float').reshape(-1, 2)
        sample = {'image': image, 'landmarks': landmarks}

        if self.transform:
            sample = self.transform(sample)

        return sample

file=pd.DataFrame(names)

file=pd.concat([file[0],df],axis=1)

class ToTensor(object):
    """Convert ndarrays in sample to Tensors."""

    def __call__(self, sample):
        image, landmarks = sample['image'], sample['landmarks']

        # swap color axis because
        # numpy image: H x W x C
        # torch image: C X H X W
        image = image.transpose((2, 0, 1))
        return {'image': torch.from_numpy(image),
                'landmarks': torch.from_numpy(landmarks)}

transformed_dataset =Numberpalate(file,transform=transforms.Compose([ToTensor()]))

dataloader = DataLoader(transformed_dataset, batch_size=4,
                        shuffle=True, num_workers=4)

s=next(iter(dataloader))

print(s.items)

model =   wR2()

# Loss and optimizer
criterion = torch.nn.MSELoss()
optimizer = torch.optim.Adam(model.parameters(), lr=1e-6)

model.cuda()

use_cuda = torch.cuda.is_available()
device = torch.device("cuda:0" if use_cuda else "cpu")
print(device)

sample=next(iter(dataloader))

print(sample.get("labels"))

num_epochs=110
total_step = len(dataloader)
loss_list = []
acc_list = []
for epoch in range(num_epochs):
    for i, sample in enumerate(dataloader):
        # Run the forward pass
        images=sample.get('image').type(torch.cuda.FloatTensor)
        labels=sample.get('landmarks').type(torch.cuda.FloatTensor).reshape([4,12])
        
        outputs = model(images)
        loss = criterion(outputs, labels)
        loss_list.append(loss.item())

        # Backprop and perform Adam optimisation
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        

        if (i ) % 10 == 0:
            print((epoch + 1, num_epochs, i + 1, total_step, loss.item()))



test=s.get('image')

test=test.to(device)

from sklearn.externals import joblib 
  
# Save the model as a pickle in a file 
joblib.dump(model, 'model.pkl')

torch.save(model.state_dict(),"model.pth")