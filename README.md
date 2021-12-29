# XJTU-AI
此项目的意义是为了促进人工智能试验班同学们的学习兴趣，减少同学们查找资料所需要花费的时间，更好的获取学长学姐们的学习经验。
有问题的话，欢迎大家到issue里提问。
## 项目及基本操作介绍
项目基本情况介绍请参考《※人工智能试验班资料库建设计划书.docx》，如果介绍部分与项目本身相冲突，请以项目为准;
通过Make_Project.sh生成XJTU-AI项目的整体文件结构;
项目中具体学科所在位置，请同学们打开ehall后进入“学业完成查询”中进行查看;
每种资料的使用说明，请进入具体课程中，寻找Intro.txt文件。
## 项目包含内容
构建项目（这一条指令就够了）：
bash Make_Project.sh
构建具体单科科目：
bash Make_Detailed_Class.sh $dir
## git上传简单流程
1) 下载文件：
git clone git@github.com:zub12/XJTU-AI.git
2) 对进行资料补充
3) 新增 SSH 密钥到 GitHub 帐户（如果已有私钥不用添加）:
https://docs.github.com/cn/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
4) 添加文件到仓库：
git.add
5) 提交暂存区到本地仓库:
git commit -m '具体时间-提交简介'
e.g.'2021-12-29-15:22-大类平台课程-专业大类基础课程-人工智能的哲学基础与伦理_AUTO300127-学长提示-课外拓展、课程学习'
6) 上传远程代码并合并:
第一次上传：
git push -u origin main
之后：
git push

## 注意事项
上传资料一定要编有编码，方便查阅。
在上传文件时，请注意不要覆盖掉其他人写的文件。

