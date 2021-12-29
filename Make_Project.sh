#!/bin/bash
# Copyright (c) 2021 zub12. All rights reserved.
# InitialFiles判断是否要构建项目 或 删除项目
workdir="$(pwd)"
echo "$workdir"
# 构建5大类别课程
A="$workdir/大类平台课程"; B="$workdir/专业课程"; C="$workdir/集中实践"; D="$workdir/大学体育目标教学"; E="$workdir/通识类教育课程/公共课程"
# 每大类课程细分成具体小类
A1="$A/数学和基础科学类课程"; A2="$A/专业大类基础课程"
B1="$B/专业选修课程"; B2="$B/专业必修课程"
E1="$E/国防教育"; E2="$E/综合英语类"; E3="$E/体育"; E4="$E/思想政治理论"
# 创建项目
# 删除旧项目
rm -r "$A" "$B" "$C" "$D" "$E"
# 建立具体课程框架
mkdir -p "$A" "$B" "$C" "$D" "$E" "$A1" "$A2" "$B1" "$B2" "$C" "$D" "$E1" "$E2" "$E3" "$E4"
# 每一小类添加具体课程
cd "$A1"
mkdir -p "大学物理II1_PHYS260609" "计算机科学的数学基础II_AUTO200105" "概率统计与随机过程_MATH201007" "大学物理II2_PHYS260709" "高等数学1_MATH291707" "线性代数与解析几何II_MATH200607" "复变函数与积分变换_MATH201107" "高等数学2_MATH292407" "大学物理实验III2_PHYS280309" "计算机科学的数学基础_COMP250305" "大学物理实验III1_PHYS280409"
cd "$A2"
mkdir -p "电子技术与系统_AUTO300505" "计算机体系结构_COMP200327" "认知心理学基础_PSYL300105" "数字信号处理_AUTO300627" "理论计算机科学的重要思想_COMP300227" "现代控制工程_AUTO300727" "数据结构与算法A（拔尖班）_COMP350405" "计算机程序设计_COMP250205" "人工智能的哲学基础与伦理_AUTO300127" "神经生物学与脑科学_BIOL511313"
cd "$B1"
mkdir -p "智能感知与移动计算_AUTO501127" "博弈论_COMP200127" "毛泽东思想和中国特色社会主义理论体系概论_COMP200127" "仿生机器人—仿生技术与机器人的结合_MACH503301" "人工智能芯片设计导论_AUTO500327" "信息论_AUTO500327" "3D计算机图形学_AUTO500327" "虚拟现实与增强现实_AUTO500327" "游戏AI设计与开发_AUTO500327" "人工智能的科学理解_AUTO500627" "认知机器人_AUTO500627" "无人驾驶平台_AUTO500527" "三维深度感知_AUTO500527" "无人驾驶平台_AUTO500527" "认知机器人_AUTO500227" "游戏AI设计与开发_AUTO500227"

cd "$B2"
mkdir -p "人工智能的现代方法II-机器学习_AUTO300527" "人工智能的现代方法I-问题表达与求解_AUTO401327" "自然语言处理_AUTO401927" "机器人导航技术实验_AUTO400427" "人工智能工具、平台与系统_AUTO402127" "机器人学基础_AUTO400927" "计算神经工程_AUTO401627" "多智能体与人机混合智能_AUTO401027" "脑信号处理实验_AUTO400627" "强化学习与自然计算_AUTO400727" "人工智能的社会风险与法律_AUTO300427" "计算机视觉与模式识别_AUTO401827" "自主无人系统实验_AUTO400127"
cd "$C"
mkdir -p "专业实习II_PRAC400205" "军训_MILI100254" "课外实践8学分_SOCP100190" "毕业设计_GRDE400105"
cd "$D"
mkdir -p "24式太极拳_0H00200100" "200米游泳_PHED900250" "长跑_PHED900150"
cd "$E1"
mkdir -p "国防教育_MILI100154"
cd "$E2"
mkdir -p "大学综合英语（钱学森实验班）1_ENGL106612" "大学综合英语（钱学森实验班）2_ENGL106712"
cd "$E3"
mkdir -p "体育_PHED109050、PHED109150、PHED109250、PHED109350"
cd "$E4"
mkdir -p "思想道德修养与法律基础_MLMD100114" "马克思主义哲学_PHLS101610" "形势与政策_MLMD100514"

# 建立具体文件
cd "$workdir"
# 取出所有课程文件的绝对路径
temp=`ls $A1|sed "s:^:$A1/: "`,`ls $A2|sed "s:^:$A2/:"`,`ls $B1|sed "s:^:$B1/: "`,`ls $B2|sed "s:^:$B2/: "`,`ls $E1|sed "s:^:$E1/: "`,`ls $E2|sed "s:^:$E2/: "`,`ls $E3|sed "s:^:$E3/: "`,`ls $E4|sed "s:^:$E4/: "`,`ls $C|sed "s:^:$C/: "`,`ls $D|sed "s:^:$D/: "` 
Main_class_files=`echo $temp | sed "s#,$workdir# $workdir#g"`
# 遍历这些文件，并建立具体课程文件夹
for files in $Main_class_files
do
    cd "$files"
    bash "$workdir/Make_Detailed_Class.sh" $(pwd)
done
    
