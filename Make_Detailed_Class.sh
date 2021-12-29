#!/bin/bash
# Copyright (c) 2021 zub12. All rights reserved.
workdir="$1"
if [ ! -n $workdir ]
then
workdir=$(pwd)
fi
# 每门课程几大部分
mkdir -p "课程内容" "笔记与学习资料" "学长提示"
touch "学长寄语.txt"

# 课程内容部分
cd "课程内容"
mkdir -p "主要课件" "额外材料"
    # 主要课程相关信息
    cd "主要课件"
        touch "Intro.txt"
        echo -e "这一部分是主要是以老师上课讲的课件为主。切记！！！请各位同学传课件的时候务必要加密传输，只留网盘/云下载地址，密码写入《人工智能试验班资料库建设计划》腾讯云文档。\n这里面文件是不同年级学长整理出来的内容。如果提供资料的同学想让学弟学妹们参考自己的资料，请同学们按照格式在本txt后面进行续写:序号-姓名-班级-联系方式（QQ）-课件下载地址（课件下载密码请写入:https://docs.qq.com/sheet/DYXlmQ3BIRFpTaU1J）-想让学弟学妹们注意到的信息\n0.王志博-人工智能81-QQ:572701190-介绍文件的使用规范，具体内容请打开想要了解的年级的文件夹。" >> "Intro.txt"
        mkdir "2018级" "2019级" "2020级" "2021级"
        temp=`ls | sed "s:^:$workdir/课程内容/主要课件/:"` 
        for files in $temp
        do
            if [ -f "$files" ]
            then
                continue
            fi
            cd "$files"
            touch "Intro.txt"
            echo -e "请同学们按照如下格式在本txt后进行续写:\n序号-姓名-班级-联系方式（QQ）-提供主要课件资料介绍\n0.王志博-人工智能81-QQ:572701190-介绍文件的使用规范，并且希望每位同学们提交的资料上也编有相同序号，方便学弟学妹们查找。" >> "Intro.txt"
            cd ..
        done
    cd ..
    # 额外材料相关信息
    cd "额外材料"
        touch "Intro.txt"
        echo -e "这里面文件是不同年级学长整理出来的内容。如果提供资料的同学想让学弟学妹们参考自己的资料，请同学们在本txt后按照如下格式进行书写:\n序号-姓名-班级-联系方式（QQ）-提供额外资料介绍\n0.王志博-人工智能81-QQ:572701190-介绍文件的使用规范，具体内容请打开想要了解的年级的文件夹。" >> "Intro.txt"
        mkdir "2018级" "2019级" "2020级" "2021级"
        temp=`ls | sed "s:^:$workdir/课程内容/额外材料/:"`  
        for files in $temp
        do
            if [ -f "$files" ]
            then
                continue
            fi
            cd "$files"
            touch "Intro.txt"
            echo -e "请同学们按照如下格式进行书写:\n序号-姓名-班级-联系方式（QQ）-提供额外资料介绍\n0.王志博-人工智能81-QQ:572701190-介绍文件的使用规范，并且希望每位同学们提交的资料上也编有相同序号，方便学弟学妹们查找。" >> "Intro.txt"
            cd ..
        done
    cd ..
cd ..


# 学长提示
cd "学长提示"
mkdir -p "课程学习" "课外拓展"
    # 主要课程相关信息
    cd "课程学习"
        touch "0.项目使用方面-王志博-2018级-QQ:572701190.txt"
        echo -e "希望同学们能善用资料库，并且自己学完课程后对资料库多多补充。这一部分主要是关于课内学习的相关信息，课程的拓展内容可以到\"..课外拓展\"中进行描述。\n项目命名为:序号-提示内容概述-姓名-班级-联系方式（QQ）\n如果内容较短，且觉得比较重要，直接在本txt后面开始写就好。希望各位学长们希望能把对于这门课的深刻理解传递给同学们。\n" > "0.项目使用方面-王志博-2018级-QQ:572701190.txt"
    cd ..
    # 额外材料相关信息
    cd "课外拓展"
        touch "0.项目使用方面-王志博-2018级-QQ:572701190.txt"
        echo -e "希望同学们能善用资料库，并且自己学完课程后对资料库多多补充。这一部分主要是给学弟学妹们介绍如果想要深入了解这一领域，可以继续往哪个方向探索。\n项目命名为:序号-提示内容概述-姓名-班级-联系方式（QQ）\n如果内容较短，且觉得比较重要，直接在本txt后面开始写就好。希望各位学长们希望能把对于这门课的深刻理解传递给学弟学妹们。\n" > "0.项目使用方面-王志博-2018级-QQ:572701190.txt"
    cd ..
cd ..


# 笔记与学习资料
cd "笔记与学习资料"
mkdir "2018级" "2019级" "2020级" "2021级"
touch "Intro.txt"
echo -e "这一部分是主要是各位同学记的笔记，希望大家以zip的形式发送过来，这样方便下载。\n这里面文件是不同年级学长整理出来的内容。如果提供资料的同学想让学弟学妹们参考自己的资料，请同学们按照格式在此文档后面进行续写:序号-姓名-班级-联系方式（QQ）-想让学弟学妹们注意到的信息\n0.王志博-人工智能81-QQ:572701190-介绍文件的使用规范，具体内容请打开想要了解的年级的文件夹。" >> "Intro.txt"
temp=`ls | sed "s:^:$workdir/笔记与学习资料/:"`  
for files in $temp
do
    if [ -f "$files" ]
    then
        continue
    fi
    cd "$files"
    touch "Intro.txt"
    echo -e "请同学们按照如下格式在本txt后进行续写:\n序号-姓名-班级-联系方式（QQ）-提供笔记与资料介绍\n0.王志博-人工智能81-QQ:572701190-介绍文件的使用规范，并且希望每位同学们提交的资料上也编有相同序号，方便学弟学妹们查找。" >> "Intro.txt"
    cd ..
done
echo "Make Detailed Class in $workdir"

