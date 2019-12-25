import os
os.chdir(os.getcwd()+"/vehicle-detection")
print(os.getcwd())
#os.system("python final.py")
os.chdir("../palate_localization")
print(os.getcwd())
os.system("python predict.py")