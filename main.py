#!/usr/bin/env python
# coding=utf-8

"""
@Author       : Li Baoyan
@Date         : 2020-04-01 12:20:26
@Github       : https://github.com/This-username-is-available
@Description  : ?
"""

import datetime
import json
import os
import random
import sys

import pyperclip
import xlrd

os.chdir(os.path.dirname(sys.argv[0]))

with open("作息时间.json", "r", encoding="utf8") as idiom_file:
    schedule = json.load(idiom_file)
with open("emo.txt", "r", encoding="utf8") as emo:
    yanwenzi = [x.split(" ", 1)[1] for x in emo.read().split("\n")]
schedule = [x[0] * 60 + x[1] + 40 for x in schedule]
xingqi = datetime.datetime.strftime(datetime.datetime.now(), "%w")
h = datetime.datetime.strftime(datetime.datetime.now(), "%H")
m = datetime.datetime.strftime(datetime.datetime.now(), "%M")
shijian = int(h) * 60 + int(m)

book = xlrd.open_workbook("号号.xlsx")

sheet1 = book.sheets()[0]


for x in schedule:
    if shijian < x:
        a = str(sheet1.cell(int(schedule.index(x)), int(xingqi)).value)
        break
a = a.replace(".0", "")
a += "\n" + random.choice(yanwenzi)
pyperclip.copy(a)  # 向剪切板发送文本
print(a)
os.system("a.ahk")
