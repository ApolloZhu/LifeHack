# coding=utf-8
import urllib.request
import os, time, sys

def getFileNameFromURL(url):
    temp = url[::-1]
    return temp[:temp.index('/')][::-1]

def downloadProgressHandler(blockDownloadedCount, blockSize, totalSize):
    percentage = 100.0 * blockDownloadedCount * blockSize / totalSize
    if percentage >= 100:
        percentage = 100
    elif percentage < 0:
        raise IOError
    sys.stdout.write("\033[14D下载进度：{0:3}%".format(int(percentage)))
    sys.stdout.flush()
    
def getFileFromURL(url):
    fileName = getFileNameFromURL(url)
    if os.path.isfile(os.getcwd() + "/" + fileName):
        date = time.strftime("%Y-%m-%d_%H-%M-%S", time.localtime())
        filePath = os.getcwd() + "/" + date + "-" + fileName
    else:
        filePath = os.getcwd() + "/" + fileName
    filePath = filePath.replace('\n','')
    try:
        urllib.request.urlretrieve(url, filePath, downloadProgressHandler)
        print("\n\033[;32m下载完成\033[0m")
        print("文件在：" + filePath)
    except:
        print("\n\033[;31m下载出现问题\033[0m")

getFileFromURL(input("要下载文件的链接："))
