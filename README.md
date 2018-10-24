# DB_CAD_Tools
使用方法：
1.命令op，文件页面:支持文件搜索路径。右边点添加，然后点浏览，选择fas文件夹。
2.受信任的位置，同样添加fas文件夹。
3.auotcad菜单中选择“工具-autolisp-加载应用程序”，选择“fas”目录中的main.fas。
4.可以在“启动组，内容”里添加main.fas，这样以后开图会自动载入。

功能扩展：
1.fas文件夹中，“DB_lsp_list.DBM“文件为加载模块的文件名和模块名称。可自行添加新编lsp文件或fas文件。文件名不要不添加lsp或fas后缀。
2.载入main.fas后，会加载“DB_lsp_list.DBM“文件中列出的fas文件。若需要加载lsp文件，使用reloadlsp命令。若需重新加载fas文件，使用reload命令。
3.“DB_lsp_list.DBM“文件要以新起一行结束，否则无法读取最后一行。
4.在fas文件夹添加与fas或lsp文件对应的cmd文件，则可以添加命令说明。cmd文件格式如下：

命令名	命令中文	说明	类型

各项以tab分割，每个命令单独一行，同样以新起一行结束文件。
加载插件时会同时加载命令说明，用hh命令查看。
5.“通用函数.lsp"中包含了main.fas中所有已定义的函数，放在一个无用函数中，类似头文件。可以直接放在新建lsp文件中，方便引用。

本工具包为了能够在Mac os下使用，全部为纯autolisp命令编写。欢迎指教和交流，也希望有大神能够共同完善此工具包，为mac os的cad用户带来更好体验。
源码地址：https://github.com/shuixzy/DB_CAD_Tools.git
作者CSDN：https://me.csdn.net/shuixzy
