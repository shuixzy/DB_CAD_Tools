;help命令
(defun c:hh ( / helpcmd cp class cmdclass m n c i classi fid cmdname alt)              
  ;; (setq *helplist '( ;zbbz.lsp
  ;;                   ("szbl" "设置比例" "设置当前文字、标注等比例，以及图中1单位所代表的长度。\n如以毫米位单位绘图则设置为0.001，以米位单位，则设置为1.")
  ;;                   ("reload" "重载工具" "重新加载整个工具包，优先加载lsp文件，其次是fas文件。")
  ;;                   ("zbbz" "坐标标注" "输入命令后D设置比例，S设置图中1单位所代表的长度（米），按空格或回车开始标注坐标。\n标注过程中按空格或回车退出，按鼠标右键切换开关捕捉。\n如图较大，发生卡顿，可以在缩放时暂时关闭捕捉。")
  ;;                   ("zbxz" "坐标修正" "输入命令后D设置比例，S设置图中1单位所代表的长度（米），选择要修正的坐标标注以后空格或回车，按再选择参照坐标，可以将所选坐标修正为参照坐标相同的坐标系。若直接按回车，则修正为图中世界坐标系。")
  ;;                   ("bgbz" "标高标注" "输入命令后D设置比例，E输入标高值，C切换连续标注（动态标注），S切换标高类型（默认为空心）。按空格或回车开始放置标高。\n标注过程中按空格或回车退出，按鼠标右键切换开关捕捉。\n如图较大，发生卡顿，可以在缩放时暂时关闭捕捉。")
  ;;                   ("mjjs" "面积计算" "输入命令后选择要计算面积的闭合多段线、表示面积的文字或标注。回车或空格后D设置比例，S切换正负值，U切换图中单位（毫米或米）。点击放置面积标注。\n注意：面积标注默认放置在不打印的面积图层，如需打印，请自行修改图层。")
  ;;                   ("yd" "移动标高" "移动标高标注，并且根据标高所移动的Y坐标改变标高值。")
  ;;                   ("sxcx" "属性查询" "该命令为编程辅助命令，用于查询图元点对值。")
  ;;                   ("sxdb" "属性对比" "该命令为编程辅助命令，用于对比两个图元的点对值。")
  ;;                   ("dd" "打断于点" "先选择要打断的线，再选择要在哪个点打断。")
  ;;                   ("gbbl" "改变比例" "改变坐标标注、标高标注等比例。")
  ;;                   ("crwz" "插入文字" "按比例插入单行文字。输入命令后D设置比例，S设置要插入的文字内容，点击插入文字。")
  ;;                   ("zhwz" "转换文字" "把所选文字转换为标准字体和当前比例的文字。")
  ;;                   ("dzsz" "递增数字" "输入命令后D设置比例，P设置前缀，S设置后缀，N设置起始数。点击在图中生成数字。从起始数开始，每点击一下递增1。")
  ;;                   ("zbgl" "坐标归零" "把所选图元Z坐标设置为0，多段线高度归零。注意图块内的无法设置。")
  ;;                   ("jdxz" "角度修正" "将轴号修正为指定角度。")
  ;;                   ("ljwz" "连接文字" "将多个单行文字连接为一行。以文字起始字X坐标顺序连接。")
  ;;                   ("qs" "快速选择" "先选择参照图元，再框选需要过滤的所有内容。按S可设置过滤条件。可多次叠加选择，选完后按空格选取最终结果。")
  ;;                   ("crtm" "插入图名" "按比例插入图名。")
  ;;                   ("tt" "图层归零" "把0图层设置为当前图层。")
  ;;                   ("tc" "设置图层" "把图元所在图层设置为当前图层。")
  ;;                   ("tg" "放置当前" "把所选图元放置到当前图层。")
  ;;                   ("xztm" "修正图名" "把所选文字设置为当前比例的图名，并标注比例。")
  ;;                   ("cd" "标注长度" "标注直线或多段线的长度。注意多段线只计算各端点之间直线距离之和，非弧长。")
  ;;                   ("tkbj" "图框标记" "设置图名、图号、比例、图幅，用于批量打印。")
  ;;                   ("pldy" "批量打印" "选择设置好的标记，批量打印制作pdf文件。")
  ;;                   ("tzml" "图纸目录" "根据图框标记建立图纸目录。")
  ;;                   ("ltpd" "楼梯剖断" "绘制楼梯梯段的剖面剖断。")
  ;;                   ("zbjs" "指标计算" "选择综合技术指标，自动计算和修改容积率、建筑密度、绿地率。")
  ;;                   ("kmqh" "块名切换" "点击块生成块名，或者根据文字内容为块改名。")
  ;;                   ("per" "绘制垂线" "绘制点至直线或弧线的垂线。")
  ;;                   ;podu.lsp
  ;;                   ("pd" "坡度标注" "选择两个总图标高，自动标注之间的坡度、长度。选择标高后直接按空格或回车坡长以两点间直线计算；选择标高后选择多段线坡长以所选多段线长度计算。")
  ;;                   ("bg" "自动标高" "选择两个总图标高，然后在图中任意点点击标注标高。所生成的标高按照两点为平面计算。")
  ;;                   ("quan" "递增轴号" "生成各类轴号、详图图号。按S切换图号类型，按C设置内容。每点击一次，圈内上标会递增1。如内容为字母，递增时不会出现I，O等不适合做轴号的字母。")
  ;;                   ("gs" "切换编组" "切换开关编组。")
  ;;                   ("ga" "编组添加" "为编组添加元素。")
  ;;                   ("gr" "编组删除" "将元素从编组中去除。")
  ;;                   ("jzdx" "加折断线" "按比例绘制折断线。")
  ;;                   ("szdx" "双折断线" "按比例绘制双折断线。")
  ;;                   ("pu" "清理图纸" "purge命令的简化。不会出现选择界面。")
  ;;                   ("gc" "内外高差" "根据室内（室外）标高，按制定高差直接生成室外（室内）标高。")
  ;;                   ("hzjt" "绘制箭头" "绘制箭头标记。")
  ;;                   ("hxfg" "弧线分割" "根据弧线绘制平面等分线。")
  ;;                   ("hzlt" "绘制楼梯" "绘制双跑楼梯。")
  ;;                   ("bj" "绘制标记" "用修订云线绘制修改标记。")
  ;;                   ("bjdz" "标记递增" "将原有标记依次递增修改颜色。")
  ;;                   ("xzx" "批量修线" "选择边线，批量修正直线。")
  ;;                   ;wall.lsp
  ;;                   ("ww" "绘制墙体" "W设置内外墙宽，N切换内外墙，Z切换生成墙中心线，C闭合。")
  ;;                   ("xqj" "修整墙角" "打断框选范围内所有墙线的交点，并且删除包含在框选范围内的线段。")
  ;;                   ("kd" "墙上开洞" "在墙上生成墙洞。")
  ;;                   ("qz" "墙中心线" "选择墙线，自动生成墙中心线。")
  ;;                   ("xccx" "消除重线" "根据容差率设置，自动消除、合并重叠的线。注意一次不要选过多。")
  ;;                   ("xbqd" "修补墙洞" "选择墙洞的两个边线，自动修补墙洞。如不成功，可先用消除重线（xccx）命令整理一下。")
  ;;                   ("tcq" "填充墙体" "填充墙体，按P列出图案代码。")
  ;;                   ("tcx" "填充直线" "根据直线生成填充。按P列出图案代码。选择后设置填充宽度及方向。")
  ;;                   ("gxc" "改线段长" "点击线段，可以将靠近选取点的一段的端点修改到指定位置的长度。")
  ;;                   ("crz" "插入柱子" "插入标准柱或异形柱。")
  ;;                   ;windowdoor.lsp
  ;;                   ("crm" "墙上插门" "先选择墙线，然后在其上插入门，D设置墙垛宽，W设置门宽度，S切换门的类型。\n注意：优先满足墙垛宽度，如设置的总宽度超过可开的最大宽度，则开最大。墙垛设置为负数，则表示按相应数量等分插入。")
  ;;                   ("gmk" "门窗改宽" "选择门窗，输入新的宽度。")
  ;;                   ("gml" "门窗改型" "选择门窗，修改门窗类型。会在各类型中循环，多次使用该命令直到选择所需门窗类型。")
  ;;                   ("crc" "墙上插窗" "先选择墙线，然后在其上插入窗，D设置墙垛宽，W设置窗宽度，S切换窗的类型。\n注意：优先满足墙垛宽度，如设置的总宽度超过可开的最大宽度，则开最大。墙垛设置为负数，则表示按相应数量等分插入。")
  ;;                   ("mcbh" "门窗编号" "选择门窗后输入高度，或按S通过层高、梁高和窗台计算门窗高度。按F切换防火门窗。")
  ;;                   ("mctj" "门窗统计" "选择门窗编号，自动生成门窗表。")
  ;;                   ("bcm" "门洞插门" "选择墙洞的两个边线，自动插门。")
  ;;                   ("bcc" "门洞插窗" "选择墙洞的两个边线，自动插窗。")
  ;;                   ("scmc" "删除门窗" "删除墙上门窗，并且自动修补墙洞。")
  ;;                   ("hmc" "替换门窗" "将天正插入的门窗替换为DB门窗。")
  ;;                   ("dtm" "动态插门" "动态插入门。")
  ;;                   ("dtc" "动态插窗" "动态插入窗。")
  ;;                   ;tufang.lsp
  ;;                   ("fgw" "绘方格网" "绘制方格网。绘制前提前用（szbl）命令设置好出图比例。")
  ;;                   ("ysbg" "原始标高" "点击标高标注或标高文字，然后点击方格网交叉点附近，生成原始标高。")
  ;;                   ("sjbg" "设计标高" "点击标高标注或标高文字，然后点击方格网交叉点附近，生成设计标高。")
  ;;                   ("sgbg" "施工标高" "选择交叉点的设计标高，计算施工标高。\n注意：生成设计标高时，会自动生成施工标高。此命令用于修改后重新计算。")
  ;;                   ("jstf" "计算土方" "点击方格中心，可自动根据角点标高计算该网格土方。\n注意：如果出现双向找坡的网格，无法自动计算，需要手动计算。")
  ;;                   ("tftj" "土方统计" "选择土方数据，自动生成土方平衡表。")))

  ;; (setq zblist '(
  ;;                 "zbbz"
  ;;                 "zbxz"
  ;;                 "bgbz"
  ;;                 "yd"
  ;;                 "pd"
  ;;                 "bg"
  ;;                 "gc"))
                  
                  
  ;; (setq mclist '(
  ;;                 "ww"
  ;;                 "qz"
  ;;                 "xqj"
  ;;                 "kd"
  ;;                 "xbqd"
  ;;                 "tcq"
  ;;                 "crm"
  ;;                 "crc"
  ;;                 "bcm"
  ;;                 "bcc"
  ;;                 "scmc"
  ;;                 "gmk"
  ;;                 "gml"
  ;;                 "hmc"
  ;;                 "mcbh"
  ;;                 "dtm"
  ;;                 "dtc"
  ;;                 "crz"
  ;;                 "mctj"))
      
  ;; (setq wzlist '(
  ;;                 "crwz"
  ;;                 "zhwz"
  ;;                 "dzsz"
  ;;                 "ljwz"
  ;;                 "crtm"
  ;;                 "xztm"
  ;;                 "quan"
  ;;                 "zbjs"
  ;;                 "jdxz"))

  ;; (setq tclist '(
  ;;                 "tt"
  ;;                 "tc"
  ;;                 "tg"
  ;;                 "gs"
  ;;                 "ga"
  ;;                 "gr"))
  
  ;; (setq tflist '(
  ;;                 "fgw"
  ;;                 "ysbg"
  ;;                 "sjbg"
  ;;                 "sgbg"
  ;;                 "jstf"
  ;;                 "tftj"))

  ;; (setq qtlist '(
  ;;                 "szbl"
  ;;                 "gbbl"
  ;;                 "reload"
  ;;                 "sxcx"
  ;;                 "sxdb"
  ;;                 "mjjs"
  ;;                 "dd"
  ;;                 "cd"
  ;;                 "tcx"
  ;;                 "gxc"
  ;;                 "jzdx"
  ;;                 "szdx"
  ;;                 "hzjt"
  ;;                 "zbgl"
  ;;                 "xccx"
  ;;                 "pu"
  ;;                 "qs"
  ;;                 "bj"
  ;;                 "bjdz"
  ;;                 "xzx"
  ;;                 "per"
  ;;                 "kmqh"
  ;;                 "ltpd"
  ;;                 "tkbj"
  ;;                 "hxfg"
  ;;                 "hzlt"
  ;;                 "pldy"
  ;;                 "tzml"))
  (setq n (length *helplist)
        m 0
        class (list))
  (while (< m n)
    (setq cmdclass (nth 3 (nth m *helplist))
          cmdname (nth 0 (nth m *helplist)))
    (if (or (= cmdclass "") (= cmdclass nil))
      (setq cmdclass "未分类"))
    (setq c (length class)
          fid nil)
    (if (> c 0)
      (progn
        (setq i 0)
        (while (< i c)
          (setq classi (nth i class))
          (if (wcmatch cmdclass (car classi))
            (setq class (subst (append classi (list cmdname)) classi class)
                  fid t))
          (setq i (1+ i)))
        (if (= fid nil)
          (setq class (append class (list (list cmdclass cmdname)))
                fid t)))
      (setq class (list (list cmdclass cmdname))))
          
    (setq m (1+ m)))
  (setq c (length class)
        i 0)
  (setq alt (strcat "目前比例:<1:" (rtos *h 2 0) ">          图中1单位相当于<" (rtos *sca_ 2 3) ">米
                  \n按确定后，输入需要查询的命令或类别查询相关命令。"))
  (while (< i c)
    (setq alt (strcat alt "\n【" (rtos (1+ i) 2 0) "】  --------    " (car (nth i class))))
    (setq i (1+ i)))
  (alert alt)

  (setq helpcmd (DB_get_input "输入命令列表编号或命令" "1"))
  (setq i (atoi helpcmd))
  (if (and (> i 0) (< i c))
    (DB_helpinfo (nth (1- i) class)))
  (setq cp (assoc helpcmd *helplist))
  (if cp
    (alert (strcat "【" (strcase helpcmd) "】  --------   " (nth 1 cp) "\n\n" (nth 2 cp)))))

  

;设置比例命令
(defun c:szbl( / pt1)       
  (if (= *h nil)
      (setq *h 100))
  (if (= *sca_ nil)
      (setq *sca_ 0.001))
    
  (DB_set_scale_pt1)
  (DB_set_unit_pt1)
  (princ)
  (princ))


;加载lisp
(defun c:reloadlsp()
  (setq *loadlsp t)
  (if (/= (findfile "main.lsp") nil) 
    (load "main.lsp")
    (if (/= (findfile "main.fas") nil)
      (load "main.fas"))))
;重新加载工具包
(defun c:reload()
  (setq *loadlsp nil)
  (if (/= (findfile "main.fas") nil)
    (load "main.fas")))
;属性查询命令
(defun c:sxcx (/ SS1 s1 cont SSL str sxlist i n)    
   
  (setq &text "")
  (setq cont t)
  (SETQ SS1 (ssget "_:S+."))
  (setq s1 (ssname ss1 0))
  (SETQ SSL (ENTGET S1))
  (setq str (DB_cx ssl))
  (setq sxlist (DB_tysx s1))
  (setq n 1)
  (if sxlist
    (foreach i sxlist
      (setq str (strcat str "\n" "属性名[" (rtos n 2 0) "]：\t" (nth 1 i) "\n" "内容[" (rtos n 2 0) "]：\t\t" (nth 2 i)))
      (setq n (+ n 1))))
  ;; (if  (= (CDR (ASSOC 66 SSL)) 1)

  ;;   (progn
  ;;     (while cont
  ;;       (setq ssl (DB_dizhen ssl))
  ;;       (if (= (CDR (ASSOC 0 SSL)) "ATTRIB")
  ;;         (setq str (strcat str (cxx_ ssl)))
  ;;         (setq cont nil)))))
  (alert str))
(defun c:sxcxp (/ SS1 s1 cont SSL str sxlist i n)    
   
  (setq &text "")
  (setq cont t)
  (SETQ SS1 (nentsel))
  (setq s1 (car ss1))
  (SETQ SSL (ENTGET S1))
  (setq str (DB_cx ssl))
  (setq sxlist (DB_tysx s1))
  (setq n 1)
  (if sxlist
    (foreach i sxlist
      (setq str (strcat str "\n" "属性名[" (rtos n 2 0) "]：\t" (nth 1 i) "\n" "内容[" (rtos n 2 0) "]：\t\t" (nth 2 i)))
      (setq n (+ n 1))))
  ;; (if  (= (CDR (ASSOC 66 SSL)) 1)

  ;;   (progn
  ;;     (while cont
  ;;       (setq ssl (DB_dizhen ssl))
  ;;       (if (= (CDR (ASSOC 0 SSL)) "ATTRIB")
  ;;         (setq str (strcat str (cxx_ ssl)))
  ;;         (setq cont nil)))))
  (alert str))
;属性对比
(defun c:sxdb(/ ss1 ss2 s1 s2 cont ssl1 ssl2 str)
  (setq &text "")
  (setq cont t)
  (princ "\n选择第一个图元：")
  (setq ss1 (ssget "_:S+."))
  (princ "\n选择要对比的图元：")
  (setq ss2 (ssget "_:S+."))
  (setq s1 (ssname ss1 0))
  (setq s2 (ssname ss2 0))
  (setq ssl1 (entget s1)
        ssl2 (entget s2))
  (setq str (DB_dbxx ssl1 ssl2))
  (alert str))
