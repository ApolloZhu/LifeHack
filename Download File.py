# coding=utf-8
import urllib, urllib.request
import os, time, sys, re

def getFileName(url):
    fileName = ""
    if len(sys.argv) > 2:
        fileName = sys.argv[2]
    else:
        try:
            temp = url[::-1]
            fileName = temp[:temp.index('/')][::-1]
        except:
            fileName = input("文件保存的名称：")
    return fileName

def downloadProgressHandler(blockDownloadedCount, blockSize, totalSize):
    percentage = 100.0 * blockDownloadedCount * blockSize / totalSize
    if percentage >= 100:
        percentage = 100
    elif percentage < 0:
        raise IOError
    sys.stdout.write("\033[14D下载进度：{0:3}%".format(int(percentage)))
    sys.stdout.flush()

def getFileFromURL(url):
    fileName = getFileName(url)
    if os.path.isfile(os.getcwd() + "/" + fileName):
        date = time.strftime("%Y-%m-%d_%H-%M-%S", time.localtime())
        filePath = os.getcwd() + "/" + date + "-" + fileName
    else:
        filePath = os.getcwd() + "/" + fileName
    filePath = filePath.replace('\n','')

    if not re.match("[^:/]*://",url):
        url = "http://" + url

    try:
        urllib.request.urlretrieve(url, filePath, downloadProgressHandler)
        print("\n\033[;32m下载完成\033[0m")
        print("文件在：" + filePath)
    except:
        print("\n\033[;31m下载出现问题\033[0m")

if len(sys.argv) > 1:
    getFileFromURL(sys.argv[1])
else:
    getFileFromURL(input("要下载文件的链接："))
