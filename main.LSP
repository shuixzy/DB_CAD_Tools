;函数引用
(defun nouse()
  ;测试
  (DB_debug)
  ;命令列表
  (DB_helpinfo)
  ;;;;;;;;;;;;设置;;;;;;;;;;;;;
  ;初始设置 
  (DB_svar)
  ;设置填充图层
  (DB_sethatch)

  ;关闭捕捉 
  (DB_closesnap)
  ;恢复捕捉 
  (DB_releasesnap)

  ;设置容错值全局变量*zl
  (DB_setzl)
  ;设置总图测量比例全局变量*sca_ 
  (DB_set_unit_pt1)
  ;设置绘图比例全局变量*h 
  (DB_set_scale_pt1)
  (DB_set_scale_inpt)
  ;设置全局变量标高*eva_ 
  (DB_set_eva_pt1)
  ;如果没有初始比例则设置，并设置显示比例
  (DB_init_scale int)

  ;;;;;;;;;;;;;;输入输出;;;;;;;;;;;
  ;输入整数
  (DB_get_int_pt1 str def)
  ;输入实数
  (DB_get_real_pt1 str def)
  ;读取文件数据
  (DB_read_file filename)
  ;创建或打开文件，mode为"d",filename为目录名，返回完整目录名,mode为"f",返回文件名,mode为"a,w,r"直接打开文件。
  (DB_open_file filename mode)
  ;输出数据,out为真则显示输出目录.
  (DB_write_file filename str out)
  ;对话框输入数据
  (DB_get_input tag def)
  ;对话框输入多项参数
  (DB_get_Minput tags)
  ;确认是否
  (DB_yesorno str def)
  ;显示列表
  (DB_show_list lst)

  ;;;;;;;;;;;;;;计算;;;;;;;;;;;;;
  ;获取图元属性
  (DB_cx ssl)
  ;对比图元属性
  (DB_dbxx ssl1 ssl2)
  ;显示进度(REPEAT (SETQ i 0) (DB_progress (SETQ i (1+ i)) 100000))
  (DB_progress i n)
  ;获取属性文字内容,返回表
  (DB_cxb s1)
  ;获取下一图元（块内的属性），(DB_dizhen 图元表) 返回图元表
  (DB_dizhen ssl)
  ;获取图元属性(DB_tysx 图元名)返回表
  (DB_tysx s1)
  ;获取图元所有属性(DB_get_att 图元名)返回表
  (DB_get_att s1)
  ;拾取框大小
  (DB_getPickboxHeight)
  ;求直线垂点。
  (DB_get_per_point pt1 pt2 pt onseg)
  ;求点到直线或圆弧垂点。如无垂点，则返回nil
  (DB_get_per_ent s1 pt)
  ;取得图元坐标
  (DB_get_pt_2p s1)
  (DB_get_pt_1p s1)
  ;获取险段中点
  (DB_get_midpoint line)
  ;重新排列两点  返回 &pt1 &pt2
  (DB_array_2pt pt1 pt2)
  ;合并选择集
  (DB_merge_ss ss1 ss2)
  ;根据两个角点获得矩形四个角点坐标，从左下角逆时针顺序。
  (DB_get_box pt1 pt2)
  ;获取图元某一参数
  (DB_get_ent s1 int)
  ;获取多段线顶点
  (DB_get_Plpoints s1)
  ;更改图元某一参数
  (DB_change_ent s1 int cont)
  ;取得动态块原名
  (DB_get_realname blk)
  ;按比例偏移坐标
  (DB_offset_pt pt x y)
  ;取得随机数值
  (DB_random site)

  ;;;;;;;;;;;;;;;绘制;;;;;;;;;;;;;;
  ;根据点表画线
  (DB_drawlist pts)
  ;绘制捕捉标记
  (DB_snapmark pt)
  ;移动属性块
  (DB_moveblock blk pt)
  (DB_moveblock blk pt1 pt2)
  ;动态显示坐标标注
  (DB_dis_zb blk)
  ;动态显示属性块
  (DB_dis_block blk str1 str2)
  ;动态显示门窗
  (DB_dis_WD blk)
  ;动态显示标高标注
  (DB_dis_bg)
  ;画线
  (DB_line2 pt1 pt2)
  (DB_line3 pt1 pt2 layer)
  ;画多段线
  (DB_pline1 lst)
  (DB_plinel lst layer)
  (DB_plinew lst width)
  (DB_pline3 lst width layer)
  ;画闭合pl线
  (DB_plinebh lst width layer)
  (DB_plinejt lst layer)
  ;批量画线
  (DB_draw_lines lst layer)
  
  ;打断直线 //未完成
  (DB_break_line line pt1 pt2)
  ;字母递增
  (DB_nextnum str)

  ;创建图层
  (DB_EntmakeLayer name color width)
  ;新建图层
  (DB_makelayer layer)
  ;移动到指定图层 
  (DB_movelayer layer s1)
  (DB_makelayer_name name s1)
  
  ;生成文字
  (DB_make_text2 pt str)
  (DB_make_text3 pt str layer)
  (DB_make_text4 pt str heigh layer)
  (DB_make_midtext2 pt str)
  (DB_make_midtext3 pt str layer)
  (DB_make_midtext4 pt str heigh layer)
  (DB_make_text8 pt str style heigh weigth ang layer pos)
  ;偏移坐标打字
  (DB_offset_text pt x y)

  ;生成文字样式 
  (DB_make_style style)
  (DB_make_style3 style heigh width)
  (DB_make_style5 style heigh width shx shx)
  
  ;生成无名块
  (DB_make_block_noname ss pt)
  ;自动生成块
  (DB_make_block)
  ;插入块
  (DB_insert_block2 blk pt)
  (DB_insert_block3 blk pt layer)
  (DB_insert_block4 blk pt layer ang)
  (DB_insert_block5 blk pt layer ang scale)
  (DB_insert_block blk pt layer ang x y z)
  
  ;生成点
  (DB_make_pt pt)
  ;生成属性
  (DB_make_att (pt tag def style layer h w color))

  ;生成标注样式 //未完成
  (DB_make_dimstyle name style))
  
;=============
;错误处理
(defun *error*(st)
  (if (and (/= st "Function cancelled")
       (/= st "quit / exit abort"))
      
      (princ (strcat "错误: " st)))
  
  (if (/= *snap nil) 
    (progn
      (setvar "OSMODE" *snap)
      (setq *snap nil)))
    
  
  (setq *error* old_err)
  (princ))

;测试 (debug 字符串)
(defun DB_debug(str)  
  (princ "\n")
  (princ str)
  (princ "\n"))
  
;命令列表 (DB_helpinfo)
(defun DB_helpinfo( hlist / pp n string)   
  (setq string (strcat (car hlist) "类命令有：\n"))
  (foreach n (cdr hlist) 
    (setq pp (assoc n *helplist))
    (if pp
      (progn
        (if (< (strlen n) 4) 
          (setq string (strcat string "\n【" (strcase n) "】\t"))
          (setq string (strcat string "\n【" (strcase n) "】\t")))
        (setq string (strcat string "--------   " (nth 1 pp))))))
  (alert string)
  ;; (alert (strcat "目前比例:<1:" (rtos *h 2 0) ">" 
  ;;         "\n
  ;;   \n  [szbl] -- 设置绘图比例	 	[ww]   -- 绘制墙体
  ;;   \n  [gbbl] -- 改变比例			[xqj]  -- 修整墙线
  ;;   \n  [xccx] -- 消除重线			[xbqd] -- 修补墙洞 
  ;;   \n  ------------------------ 		[kd]   -- 墙上开洞
  ;;   \n  [zbbz] -- 坐标标注 			[crm]  -- 墙上插门 
  ;;   \n  [zbxz] -- 坐标修正             
  ;;   \n  [bgbz] -- 标高标注 			[crc]  -- 墙上插窗
  ;;   \n  [yd]   -- 标高移动 			[gmk]  -- 修改门窗宽 
  ;;   \n  [pd]   -- 坡度标注 			[gml]  -- 修改门窗类型 
  ;;   \n  [bg]   -- 自动标高计算		[qz]   -- 绘墙中心线
  ;;   \n  [gc]   -- 室内外高差 			[mctj] -- 门窗统计
  ;;   \n  [ga] [gr]  					[tcq]   -- 填充墙体
  ;;   \n       -- 添加／删除编组元素 	[tcx]   -- 填充线
  ;;   \n  [gs]   -- 切换编组  			[mcbh]   -- 门窗标号
  ;;   \n  ------------------------ 		----------------------
  ;;   \n  [quan] -- 递增轴号／图号		[mjjs] -- 面积计算
  ;;   \n  [dzsz] -- 递增数字			[dd]   -- 打断于点     
  ;;   \n  [jdxz] -- 角度修正			[zbgl] -- 坐标归零
  ;;   \n  [gxc] -- 改线段长			[jzdx] -- 绘制折断线 
  ;;   \n  ------------------------ 		----------------------
  ;;   \n  [crwz] -- 插入文字			[sxcx] -- 代码查询                 
  ;;   \n  [ljwz] -- 连接文字			[crtm] -- 插入图名
  ;;   \n  [ad]   -- 编辑属性文字		[xztm] -- 修整图名
  ;;   \n  [zhwz] -- 文字转换
  ;;   \n  [qs]   -- 快速选择
  ;;   \n  ------------------------ 		----------------------
  ;;   \n  [ysbg] -- 原始标高			[sjbg] -- 设计标高
  ;;   \n  [sgbg] -- 施工标高			[jstf] -- 计算土方
  ;;   \n  [tftj] -- 土方统计			[fgw]  -- 绘制方格网
  ;; "))
  
  (princ)
  (princ))

;获取图元属性 (DB_cx 图元表)
(defun DB_cx (SSL_ / trs text nm)         
  (setq trs '(
              (-5 "APP永久反应链")
              (-4 "APP条件运算符")
              (-3 "APP扩展数据 (XDATA) 标记")
              (-2 "APP图元名参照")
              (-1 "图元名")
              (0 "类型")
              (1 "文字")
              (2 "名称")
              (3 "文字、名称")
              (4 "文字、名称")
              (5 "句柄")
              (6 "线型")
              (7 "文字样式")
              (8 "图层")
              (9 "变量名标识符")
              (10 "坐标")
              (11 "坐标2")
              (12 "坐标3")
              (13 "坐标4")
              (14 "坐标5")
              (38 "标高")
              (39 "厚度")
              (40 "字高/PL线起点宽")
              (41 "X比例/pl线终点宽")
              (42 "Y比例")
              (43 "Z比例")
              (48 "线型缩放")
              (50 "角度")
              (60 "可见性")
              (62 "颜色")
              (63 "背景色")
              (66 "含属性")
              (67 "空间")
              (68 "视口可见性")
              (69 "视口")
              (70 "闭合")
              (72 "UCS")
              (102 "动态块已编辑")
              (110 "UCS原点")
              (111 "UCS X轴")
              (112 "UCS Y轴")
              (210 "拉伸方向")
              (330 "上级图元")
              (370 "线宽")
              (440 "透明度")))
    
  
  (setq text ""
        nm -5)
  
  (repeat 1077
    (if  (/= (CDR (ASSOC nm SSL_)) nil)
      (progn
  ;; (if (= (rem &n 4) 0)
       (setq text (strcat text "\n"))
  ;; (setq &text (strcat &text "	"))
  ;; )
       (setq text (strcat text (rtos nm 2 0)))
       (if (/= (assoc nm trs) nil)
         (setq text (strcat text "<" (nth 1 (assoc nm trs)) ">")))
  
       (setq text (strcat text ":" (vl-princ-to-string (CDR (ASSOC nm SSL_)))))))
  ;(setq &n (+ &n 1))
      
    
    (setq nm (+ 1 nm)))
  
  text)
;对比图元属性(DB_dbxx 图元表1 图元表2)
(defun DB_dbxx (SSL_1 SSL_2 / trs text nm)         
  (setq trs '(
              (-5 "APP永久反应链")
              (-4 "APP条件运算符")
              (-3 "APP扩展数据 (XDATA) 标记")
              (-2 "APP图元名参照")
              (-1 "图元名")
              (0 "类型")
              (1 "文字")
              (2 "名称")
              (3 "文字、名称")
              (4 "文字、名称")
              (5 "句柄")
              (6 "线型")
              (7 "文字样式")
              (8 "图层")
              (9 "变量名标识符")
              (10 "坐标")
              (11 "坐标2")
              (12 "坐标3")
              (13 "坐标4")
              (14 "坐标5")
              (38 "标高")
              (39 "厚度")
              (40 "字高/PL线起点宽")
              (41 "X比例/pl线终点宽")
              (42 "Y比例")
              (43 "Z比例")
              (48 "线型缩放")
              (50 "角度")
              (60 "可见性")
              (62 "颜色")
              (63 "背景色")
              (66 "含属性")
              (67 "空间")
              (68 "视口可见性")
              (69 "视口")
              (70 "闭合")
              (72 "UCS")
              (102 "动态块已编辑")
              (110 "UCS原点")
              (111 "UCS X轴")
              (112 "UCS Y轴")
              (210 "拉伸方向")
              (330 "上级图元")
              (370 "线宽")
              (440 "透明度")))
    
  
  (setq text ""
        nm -5)
  
  (repeat 1077
    (if  (/= (CDR (ASSOC nm SSL_1)) (CDR (ASSOC nm SSL_2)))
      (progn
  ;; (if (= (rem &n 4) 0)
       (setq text (strcat text "\n"))
  ;; (setq &text (strcat &text "	"))
  ;; )
       (setq text (strcat text (rtos nm 2 0)))
       (if (/= (assoc nm trs) nil)
         (setq text (strcat text "<" (nth 1 (assoc nm trs)) ">")))
  
       (setq text (strcat text ":" (vl-princ-to-string (CDR (ASSOC nm SSL_1))) "----" (vl-princ-to-string (CDR (ASSOC nm SSL_2)))))))
  ;(setq &n (+ &n 1))
      
    
    (setq nm (+ 1 nm)))
  
  text)

;; ;获取属性文字内容,(cxx_ 图元表)
;; (defun cxx_(ssl_ / text)
;;   (setq text (strcat 
;;               "\n"
;;               "属性名：" (vl-princ-to-string (CDR (ASSOC 2 SSL_)))
;;               "\n"
;;               "内容：  " (vl-princ-to-string (CDR (ASSOC 1 SSL_)))))
    
  
;;   text)
;;显示进度(REPEAT (SETQ i 0) (DB_progress (SETQ i (1+ i)) 100000))
(DEFUN DB_progress (i n / BOX In Re)
  (SETQ box '("" "▏" "▎" "▍" "▌" "▋" "▊" "▉"))
  (SETQ In (FIX (/ (* 160 i) n)))
  (SETQ Re (REM In 8))
  (setq In (* 2 (FIX (/ In 8))))
  (setq Re (NTH Re box))
  (GRTEXT -2
   (STRCAT (SUBSTR "████████████████████" 1 In)
    
    Re)))
  
;获取属性文字内容,返回表(DB_cxb 图元)
(defun DB_cxb(sz / clist ssl)
  (setq ssl (ENTGET sz))
  (setq clist (list 
                    sz 
                    (vl-princ-to-string (CDR (ASSOC 2 SSL))) 
                    (vl-princ-to-string (CDR (ASSOC 1 SSL)))))
  clist)
;获取下一图元（块内的属性），(DB_dizhen 图元表) 返回图元表					
(defun DB_dizhen (ssl_ / ssl_re)      
  (if (/= (entnext (cdr (assoc -1 ssl_))) nil)
    (setq SSL_re (entget (entnext (cdr (assoc -1 SSL_))))))
  
  ssl_re)
;获取图元属性(DB_tysx 图元名)返回表
(defun DB_tysx (ss_ / tylist ssl cont s1)
  (setq ssl (ENTGET ss_))
  (setq cont t)
  (setq tylist (list))
  (if (= (cdr (assoc 66 ssl)) 1)
    (progn
      (while cont
        (setq s1 (entnext (cdr (assoc -1 ssl))))
        (setq ssl (ENTGET s1))
        (if (= (cdr (assoc 0 ssl)) "ATTRIB")
          (setq tylist (cons (DB_cxb s1) tylist))
          (setq cont nil)))))
  (reverse tylist))
;获取图元属性(DB_get_att 图元名)返回表
(defun DB_get_att (ss_ / attlist ssl cont s1)
  (setq ssl (ENTGET ss_))
  (setq cont t)
  (setq attlist (list))
  (if (= (cdr (assoc 66 ssl)) 1)
    (progn
      (while cont
        (setq s1 (entnext (cdr (assoc -1 ssl))))
        (setq ssl (ENTGET s1))
        (if (= (cdr (assoc 0 ssl)) "ATTRIB")
          (setq attlist (cons (CDR (ASSOC 1 SSL)) attlist))
          (setq cont nil)))))
  (reverse attlist))
;初始设置 (DB_svar)
(defun DB_svar ()     
  (setvar "cmdecho" 0)      ;控制在 AutoLISP 的 command 函数运行时 AutoCAD 是否回显提示和输入：0.关闭回显 1.打开回显
  (setvar "unitmode" 0)      ;控制单位的显示格式。
  (setvar "MIRRTEXT" 0)      ;控制 MIRROR 命令影响文字的方式。0 保持文字方向 1 镜像显示文字
  (setvar "ATTREQ" 1)      ;确定 INSERT 命令在插入块时默认属性设置。0.所有属性均采用各自的默认值；1.使用对话框获取属性值
  (setvar "ATTDIA" 0)      ;控制 INSERT 命令是否使用对话框用于属性值的输入:0.给出命令行提示 1.使用对话框
  ;(setq *snap (getvar "OSMODE"))
  (setq old_err *error*))




;拾取框大小
(defun DB_getPickboxHeight ()
 (* (/ (getvar "pickbox") (cadr (getvar "screensize"))) (getvar "viewsize")))

;根据点表画线
(defun DB_drawlist(pts /)
  (mapcar '(lambda (x y) (grdraw x y 2 0)) pts (cdr pts)))
;绘制捕捉标记
(defun DB_snapmark (inpt / ptc hsc snaplist n m ptt redr)
  (setq m 0
        n -1
        ptc nil
        ptt nil)
  (setq snaplist '(
                    "int"
                    "end"
                    "mid"
                    "ins"
                    "cen"))
                    ;"per"))
  (if redr 
    (progn
      (redraw)
      (setq redr nil)))
  (if i
    (redraw i 2))
  (while (< m (length snaplist))
    (setq ptt (osnap inpt (nth m snaplist)))
    (if (/= ptt nil)
      (if (= ptc nil) 
        (setq ptc ptt 
              n m)
        (if (< (distance ptt inpt) (distance ptc inpt))
          (setq ptc ptt 
                n m))))
    (setq m (+ 1 m)))
      
            
    
  
  (if (/= ptc nil)
    (progn
      (setq redr t)
      (setq hsc (/ (DB_getPickboxHeight) *h))
      (cond   
        ((= n 0) (DB_drawlist (list (DB_offset_pt ptc hsc hsc) 
                                  (DB_offset_pt ptc (- 0 hsc) (- 0 hsc))
                                  ptc
                                  (DB_offset_pt ptc hsc (- 0 hsc))
                                  (DB_offset_pt ptc (- 0 hsc) hsc))))

        
        ((= n 1) (DB_drawlist (list (DB_offset_pt ptc hsc hsc)
                                  (DB_offset_pt ptc hsc (- 0 hsc))
                                  (DB_offset_pt ptc (- 0 hsc) (- 0 hsc))
                                  (DB_offset_pt ptc (- 0 hsc) hsc) 
                                  (DB_offset_pt ptc hsc hsc))))

        ((= n 2) (DB_drawlist (list (DB_offset_pt ptc 0 (* hsc 1.5))
                                  (DB_offset_pt ptc (* hsc 1.3) (* hsc -0.75))
                                  (DB_offset_pt ptc (* hsc -1.3) (* hsc -0.75)) 
                                  (DB_offset_pt ptc 0 (* hsc 1.5)))))
        ((= n 3) (DB_drawlist (list ptc
                                  (DB_offset_pt ptc 0 hsc) 
                                  (DB_offset_pt ptc hsc hsc)
                                  (DB_offset_pt ptc hsc 0)
                                  ptc
                                  (DB_offset_pt ptc 0 (* hsc -1))
                                  (DB_offset_pt ptc (* hsc -1) (* hsc -1))
                                  (DB_offset_pt ptc (* hsc -1) 0)
                                  ptc)))
        ((= n 4) (DB_drawlist (list (DB_offset_pt ptc (* hsc -1) 0)
                                  (DB_offset_pt ptc (* hsc 1) 0)
                                  ptc 
                                  (DB_offset_pt ptc 0 hsc)
                                  (DB_offset_pt ptc 0 (* hsc -1))))))))

  (if i
    (redraw i 1))
  ptc)


;移动属性块
(defun DB_moveblock (blk pt / cont ssl s1 px py pt0)
  (setq cont t)
  (setq ssl (entget blk))
  (setq pt0 (DB_get_ent blk 10))
  (DB_change_ent blk 10 pt)
  (if (= (cdr (assoc 66 ssl)) 1)
    (progn
      (while cont
        (setq s1 (entnext (cdr (assoc -1 ssl))))
        (setq ssl (ENTGET s1))
        (if (= (cdr (assoc 0 ssl)) "ATTRIB")
          (progn
            (setq px (- (car (cdr (assoc 11 ssl))) (car pt0)))
            (setq py (- (cadr (cdr (assoc 11 ssl))) (cadr pt0)))
            (DB_change_ent s1 11 (DB_offset_pt pt (/ px *h) (/ py *h))))
          (setq cont nil))))))
(defun DB_moveblock3 (blk pt1 pt2 / cont ssl s1 px py pt0 yx yy pt)
  (setq cont t)
  (setq yx (- (car pt2) (car pt1)))
  (setq yy (- (cadr pt2) (cadr pt1)))
  (setq ssl (entget blk))
  (setq pt0 (DB_get_ent blk 10))
  (setq pt (DB_offset_pt pt0 (/ yx *h) (/ yy *h)))
  (DB_change_ent blk 10 pt)
  (if (= (cdr (assoc 66 ssl)) 1)
    (progn
      (while cont
        (setq s1 (entnext (cdr (assoc -1 ssl))))
        (setq ssl (ENTGET s1))
        (if (= (cdr (assoc 0 ssl)) "ATTRIB")
          (progn
            (setq px (- (car (cdr (assoc 11 ssl))) (car pt0)))
            (setq py (- (cadr (cdr (assoc 11 ssl))) (cadr pt0)))
            (DB_change_ent s1 11 (DB_offset_pt pt (/ px *h) (/ py *h))))
          (setq cont nil))))))    
  
;动态显示坐标标注 (DB_dis_zb 块名)
(defun DB_dis_zb (#k / %k i gr n pt pt_ pt0 pt1x pt1y sx sy px py px2 py2 &x &y pyl redr)   
 (setq %k T  ;循环条件
       mark nil
       i nil) ;初始设置
 
 (while %k
  (setq  gr (grread t 4 0);;取得鼠标操作及坐标
         n (car gr)       ;;鼠标操作
         pt (cadr gr)     ;;鼠标坐标
         pt_ nil)
  
  ;; (if (/= mark nil) 
  ;;     (progn 
  ;;       (entdel mark)
  ;;       (setq mark nil)))
  (if (= n 25)
    (if snap_ (setq snap_ nil) (setq snap_ T)))
  (if (= n 5);;没有操作
   (progn
    
    (if snap_ 
      (progn 
        (setq pt_ (DB_snapmark pt))
        (if (/= pt_ nil) (setq pt pt_))))
    
    (setq pt0 (trans pt 1 0))
    
    (setq pt1x (rtos (* (cadr pt0) *sca_) 2 3)
      pt1y (rtos (* (car pt0) *sca_) 2 3))
    
    (setq pt1x (strcat "X=" pt1x)
      pt1y (strcat "Y=" pt1y))
    ;; (setq pyl (/ (DB_getPickboxHeight) *h 0.3))
    ;; (setq pt0 (DB_offset_pt pt0 pyl pyl))
    (if (= i nil) 
      (progn 
        (vl-cmdf "INSERT" #k pt0 *h "" "" pt1x pt1y)
        (setq i (entlast))
        (setq sx (entnext (cdr (assoc -1 (ENTGET i))))
          sy (entnext (cdr (assoc -1 (ENTGET sx)))))
        (DB_get_pt_2p sx) 
        (setq px (- (car &y) (car pt0))
              py (- (cadr &y) (cadr pt0)))
        (DB_get_pt_2p sy)
        (setq px2 (- (car &y) (car pt0))
              py2 (- (cadr &y) (cadr pt0)))
        (DB_movelayer "zb" i)));;如果没有就插入
    ;(command "INSERT" #k pt0 *h "" "" pt1x pt1y)
    
    ;; (DB_change_ent i 10 pt0)
    ;; (DB_change_ent sx 11 (DB_offset_pt pt0 (/ px *h) (/ py *h)))      
    ;; (DB_change_ent sy 11 (DB_offset_pt pt0 (/ px2 *h) (/ py2 *h)))
    (DB_moveblock i pt0)
    (DB_change_ent sx 1 pt1x)
    (DB_change_ent sy 1 pt1y)))
    
   
  
  (if (= n 3)
    (progn  
      (setq %k nil)
      ;(setq pt0 (DB_offset_pt pt0 (- 0 pyl) (- 0 pyl)))
      (if (= snap_ nil)
        (progn
          (redraw i 2)
          (setq pt0 (osnap pt0 "int,end,mid,ins,cen"))
          (redraw i 1)
          (if pt0
            (progn
              (setq pt1x (rtos (* (cadr pt0) *sca_) 2 3)
                    pt1y (rtos (* (car pt0) *sca_) 2 3))
        
              (setq pt1x (strcat "X=" pt1x)
                    pt1y (strcat "Y=" pt1y))
              ;; (DB_change_ent i 10 pt0)
              ;; (DB_change_ent sx 11 (DB_offset_pt pt0 (/ px *h) (/ py *h)))      
              ;; (DB_change_ent sy 11 (DB_offset_pt pt0 (/ px2 *h) (/ py2 *h)))
              (DB_moveblock i pt0)
              (DB_change_ent sx 1 pt1x)
              (DB_change_ent sy 1 pt1y)))))
      (redraw)))
      
      ;;3表示左键;结束循环
  (if (= n 2);;2表示空格;25表示右键;结束循环并删除文字
   (progn
    (setq %k nil)
    (setq pt1 t)
    (entdel i)))))
;动态显示属性块 (DB_dis_block 块名 属性1 属性2)
(defun DB_dis_block (#k #x1 #x2 / %k i gr n pt pt_ redr)  
 (setq %k T  ;循环条件
       mark nil
       i nil) ;初始设置
 
 (while %k
  (setq  gr (grread t 4 0);;取得鼠标操作及坐标
         n (car gr)       ;;鼠标操作
         pt (cadr gr)     ;;鼠标坐标
         pt_ nil)
  ;; (if (/= mark nil) 
  ;;   (progn 
  ;;     (entdel mark)
  ;;     (setq mark nil)))
  (if (= n 25)
    (if snap_ (setq snap_ nil) (setq snap_ T)))
  (if (= n 5);;没有操作
   (progn 
    (if (/= i nil) (entdel i));;如果有文字就删除
    (if snap_ 
      (progn 
        (setq pt_ (DB_snapmark pt))
        (if (/= pt_ nil) (setq pt pt_))))
    
    (if (= #x2 "") (command "INSERT" #k pt *h "" "" #x1) (command "INSERT" #k pt *h "" "" #x1 #x2))
    (setq i (entlast))));;得到文字图元名
   
  
  (if (= n 3) 

    (setq %k nil));;3表示左键;结束循环
  (if (= n 2);;2表示空格;25表示右键;结束循环并删除文字
   (progn
    (setq %k nil)
    (entdel i)))))
;动态显示门窗
(defun DB_dis_WD (#k / %k i gr n pt pt_ stp lv fx angr)  
 (setq %k T  ;循环条件
       i nil) ;初始设置
 
 (while %k
  (setq  gr (grread t 4 0);;取得鼠标操作及坐标
         n (car gr)       ;;鼠标操作
         pt (cadr gr))     ;;鼠标坐标
         
  ;; (if (/= mark nil) 
  ;;   (progn 
  ;;     (entdel mark)
  ;;     (setq mark nil)))
  ;; (if (= n 25)
  ;;   (if snap_ (setq snap_ nil) (setq snap_ T)))
  (cond
    ((= n 5);;没有操作
     (setq pt_ (DB_get_per_point lx ly pt nil))
     
     (if (/= i nil) (entdel i));;如果有文字就删除
     (if (> (distance pt_ lx) (distance pt_ ly))      
        (setq %l0 lx
              lx ly
              ly %l0))
     (setq wallang (angle lx ly))
     (setq angr (angtof (angtos (- (angle pt_ pt) wallang) 0)))
     (if (and (>= angr 0) (< angr pi))
      (setq fx -1)
      (setq fx 1))
     (if (> (+ (distance pt_ lx) (distance pt_ ly)) (distance lx ly))
      (setq pt_ lx)) 
     (setq stp (fix (/ (distance pt_ lx) duo_)))
     (setq &x (polar lx wallang (* duo_ stp)))
     (setq &y (polar &x wallang width_))
     (if (suandong_ &x &y)
      (progn
        (setq x_ (getmid &x1 &x2))
        (setq xy_ (/ (distance &x1 &x2) 200.0))))
     (if (= str "门")
      (if (and (/= *Door_style 4) (/= *Door_style 7) (/= *Door_style 8))
        (setq xy_ (/ width_ 1000.0)
              lv "me")
        (setq lv "me"))
      (setq lv "wi"))
     
     (command "INSERT" 
        doorname  ;块名
        x_                                    ;插入点
        (/ width_ 1000.0)  (* xy_ fx)        ;比例
        (atof (angtos wallang 0 4)))           ;角度
     
     (setq i (entlast));;得到文字图元名
     (DB_movelayer lv i))
    
    ((= n 3)  
     (setq %k nil);;3表示左键;结束循环
     (if (or (/= str "窗") (/= sty_ 2))
        (kaidong_ &x &y)))
    ((or (= n 25) (= n 2)) 
     (setq %k nil
           pt1 t)
     (entdel i)))))
;动态显示标高标注 (DB_dis_bg)
(defun DB_dis_bg ( / %k i gr n pt pt_ pt0 noweva evachange fn eva_t dot sx px py &x &y pyl eva_ redr)  
 (setq %k T  ;循环条件
       mark nil
       i nil) ;初始设置
 
 (while %k
  (setq  gr (grread t 4 0);;取得鼠标操作及坐标
         n (car gr)       ;;鼠标操作
         pt (cadr gr)     ;;鼠标坐标
         pt_ nil)
  ;; (if (/= mark nil) 
  ;;     (progn 
  ;;       (entdel mark)
  ;;       (setq mark nil)))
  (if (= n 25)
    (if snap_ (setq snap_ nil) (setq snap_ T)))
  (if (= n 5);;没有操作
   (progn
    
    (if snap_ 
      (progn 
        (setq pt_ (DB_snapmark pt))
        (if (/= pt_ nil) (setq pt pt_))))
    (setq noweva (* (cadr pt) 0.001))
    (if  (= *ctn "开")
      (setq evachange (- noweva *lasteva)
            eva_ (+ evachange *eva_))
      (setq eva_ *eva_))
        

    (if  (= *evast "实心")
      (setq fn  "ElevaPos.dwg"
            dot  2)
      
      (setq fn  "EvaPos2.dwg"
            dot  3))
      
    
    (if  (= eva_ 0)
      (if (= *evast "实心")
        (setq eva_t "%%p0.00")
        (setq eva_t "%%p0.000"))
      
      (setq eva_t (rtos eva_ 2 dot)))

    
    ;; (setq pyl (/ (DB_getPickboxHeight) *h 0.3))
    ;; (setq pt0 (DB_offset_pt pt pyl pyl))
    (setq pt0 pt)
    (if (= i nil) 
      (progn
        (command "INSERT" fn pt0 *h "" "" eva_t)
        (setq i (entlast))
        (DB_movelayer "bg" i)
        (setq sx (entnext (cdr (assoc -1 (ENTGET i)))))
        (DB_get_pt_2p sx)
        (setq px (- (car &y) (car pt0))
              py (- (cadr &y) (cadr pt0))))
      (progn
        ;; (DB_change_ent i 10 pt0)
        ;; (DB_change_ent sx 11 (DB_offset_pt pt0 (/ px *h) (/ py *h)))
        (DB_moveblock i pt0)
        (DB_change_ent sx 1 eva_t)))))
   
  
  (if (= n 3)  ;;3表示左键;结束循环
    (progn 
      (setq %k nil)
      ;(setq pt0 (DB_offset_pt pt0 (- 0 pyl) (- 0 pyl)))
      (setq *lasteva noweva)
      (setq *eva_ eva_)
      ;; (DB_change_ent i 10 pt0)
      ;; (DB_change_ent sx 11 (DB_offset_pt pt0 (/ px *h) (/ py *h)))
      (DB_moveblock i pt0)
      (redraw)))
  (if (= n 2);;2表示空格;25表示右键;结束循环并删除文字
   (progn
    (setq %k nil)
    (setq pt1 t)
    (entdel i)))))

;画线 (line_ 点1 点2 图层)
(defun DB_line2 (pt1_ pt2_)
  (DB_line3 pt1_ pt2_ ""))

(defun DB_line3 (pt1_ pt2_ layer_ / lay_str)
 (if (/= layer_ "")
   (progn
      (setq lay_str (DB_makelayer layer_)))
    
   (setq lay_str "0"))
 (if (and pt1_ pt2_)
  (entmake (list '(0 . "LINE") (cons 8 lay_str) (cons 10 pt1_) (cons 11 pt2_)))))

;画多段线 (DB_pline_ 点表 宽度 图层)
(defun DB_pline1 (lst)
  (DB_pline3 lst 0 ""))

(defun DB_plinel (lst layer)
  (DB_pline3 lst 0 layer))

(defun DB_plinew (lst wigth_)
  (DB_pline3 lst wigth_ ""))

(defun DB_pline3 (lst wigth_ layer_ / lay_str PT)
  (if (/= layer_ "")
   (progn
      (setq lay_str (DB_makelayer layer_)))
    
   (setq lay_str "0"))
  
  (entmake
    (append
      (list '(0 . "LWPOLYLINE")
       '(100 . "AcDbEntity")
       '(100 . "AcDbPolyline")
       (cons 90 (length lst))
       (cons 43 wigth_)
       (cons 8 lay_str))
      
      (mapcar '(lambda (pt) (cons 10 pt)) lst))))
    

;画闭合pl线
(defun DB_plinebh (lst wigth_ layer_ / lay_str PT)
  (if (/= layer_ "")
   (progn
      (setq lay_str (DB_makelayer layer_)))
    
   (setq lay_str "0"))
  
  (entmake
    (append
      (list '(0 . "LWPOLYLINE")
       '(100 . "AcDbEntity")
       '(100 . "AcDbPolyline")
       (cons 90 (length lst))
       (cons 43 wigth_)
       (cons 70 1)
       (cons 8 lay_str))
      
      (mapcar '(lambda (pt) (cons 10 pt)) lst))))
    

(defun DB_plinejt (lst layer_ / lay_str PT entlist pt1 pt2 other n)
  (if (/= layer_ "")
   (progn
      (setq lay_str (DB_makelayer layer_)))
    
   (setq lay_str "0"))
  (setq pt1 (car lst)
        pt2 (cadr lst))
  (setq other (cddr lst))
  (setq entlist (list '(0 . "LWPOLYLINE")
                      '(100 . "AcDbEntity")
                      '(100 . "AcDbPolyline")
                      (cons 90 (length lst))
                      (cons 8 lay_str)
                      (cons 10 pt1)
                      '(40 . 0)
                      (cons 41 *h)
                      '(42 . 0)
                      (cons 10 pt2)
                      (cons 40 0)
                      (cons 41 0)
                      '(42 . 0)))
  (foreach n other (setq entlist (append entlist (list (cons 10 n) '(40 . 0) '(41 . 0) '(42 . 0)))))
  (entmake entlist))
      
;根据两个角点获得矩形四个角点坐标，从左下角逆时针顺序。
(defun DB_get_box (pt1 pt2 / pta ptb ptc ptd)
  (setq pta (list (min (car pt1) (car pt2)) (min (cadr pt1) (cadr pt2)))
        ptb (list (max (car pt1) (car pt2)) (min (cadr pt1) (cadr pt2)))
        ptc (list (max (car pt1) (car pt2)) (max (cadr pt1) (cadr pt2)))
        ptd (list (min (car pt1) (car pt2)) (max (cadr pt1) (cadr pt2))))
  (list pta ptb ptc ptd))
  
;批量画线
(defun DB_draw_lines (lst layer_ / blk m n i j pt1_ pt2_ lines)
  (setq m 0)
  (setq n (length lst))
  (setq blk (ssadd))
  (while (< m n)
    (setq i 0)
    (setq lines (nth m lst))
    (setq j (length lines))
    (while (< i (1- j))
      (setq pt1_ (nth i lines))
      (setq pt2_ (nth (1+ i) lines))
      (DB_line3 pt1_ pt2_ layer_)
      (setq blk (ssadd (entlast) blk))
      (setq i (1+ i)))
    (setq m (1+ m)))
  blk)
;创建图层 (DB_EntmakeLayer 图层名 颜色)
(defun DB_EntmakeLayer (LayerName layercolor weigth)
  (entmake
    (list '(0 . "LAYER")
     '(100 . "AcDbSymbolTableRecord")
     '(100 . "AcDbLayerTableRecord")
     '(70 . 0)   
     (cons 2 LayerName)
     (cons 62 layercolor)
     (cons 370 weigth))))
    
  

;设置填充图层 (DB_sethatch)
(defun DB_sethatch()    
  (if (= *h nil)
    (setq *h 100)
    (if (and (<= *h 70) (> *h 30))
        (setvar "HPLAYER" (DB_makelayer "h50"))
        (if (> *h 70)
          (setvar "HPLAYER" (DB_makelayer "h100"))
          (setvar "HPLAYER" (DB_makelayer "h20"))))))
        
      
  
  

;关闭捕捉 (DB_closesnap)
(defun DB_closesnap()
  (setq *snap (getvar "OSMODE"))
  (if (< *snap 16384)
    (setvar "OSMODE" (+ *snap 16384))))
  
  

;恢复捕捉 (DB_releasesnap)
(defun DB_releasesnap()
  (setvar "OSMODE" *snap))

;字母递增 (DB_nextnum 起始字母) 返回单个字母，跳过I，o，l等，z过后为～
(defun DB_nextnum(stri / num)
  (setq num (ascii stri))
  (setq num (+ 1 num))
  (if (or (= num 73) (= num 79) (= num 108) (= num 111))
    (setq num (+ 1 num)))  
  
  (if (= num 90)
    (setq num 97))
  
  (if (= num 122)
    (setq num 126))
  
  (chr num))

;设置容错值全局变量*zl (DB_setzl)
(defun DB_setzl (/ zl)          
  (princ "\n容错值:<")
  (princ *zl)
  (setq zl (getint ">:"))
  (if (/= zl nil)
    (setq *zl zl)))
  

;设置绘图比例全局变量*h (DB_set_scale_pt1)  会设置变量pt1为nil
(defun DB_set_scale_pt1 (/ h__)          
  (princ "\n显示比例 1:<")
  (princ *h)
  (setq h__ (getint ">:"))
  (if (/= h__ nil)
    (setq *h h__))
  
  (setq pt1 nil))
;输入整数
(defun DB_get_int_pt1 (str def / i__ re)          
  (setq i__ (getint (strcat "\n" str "< " (rtos def 2 0) " >:")))
  (if (/= i__ nil)
    (setq re i__)
    (progn
      (princ (strcat "\n输入错误！仍然为< " (rtos def 2 0) " >:"))
      (setq re def)))
  (setq pt1 nil)
  re)
;输入实数
(defun DB_get_real_pt1 (str def / i__ re)          
  (setq i__ (getreal (strcat "\n" str "< " (rtos def 2 3) " >:")))
  (if (/= i__ nil)
    (setq re i__)
    (progn
      (princ (strcat "\n输入错误！仍然为< " (rtos def 2 3) " >:"))
      (setq re def)))
  (setq pt1 nil)
  re)
;设置绘图比例全局变量*h (DB_set_scale_inpt)  会设置变量inpt为nil
(defun DB_set_scale_inpt (/ h__)          
  (princ "\n显示比例 1:<")
  (princ *h)
  (setq h__ (getint ">:"))
  (if (/= h__ nil)
    (setq *h h__))
  
  (setq inpt nil))

;设置总图测量比例全局变量*sca_ (DB_set_unit_pt1)  会设置变量pt1为nil
(defun DB_set_unit_pt1 (/ sca__)
  (princ "\n测量比例 <")
  (princ *sca_)
  (setq sca__ (getreal ">: "))
  (if (/= sca__ nil)
    (setq *sca_ sca__))
  
  (setq pt1 nil))

;移动到指定图层 (DB_movelayer 图层代号 图元名)
(defun DB_movelayer (moveto movewhat / ssl_l move_str)    
  (setq move_str (DB_makelayer moveto))
  (setq ssl_l (entget movewhat))
  (setq ssl_l (subst (cons 8 move_str) (assoc 8 ssl_l) ssl_l))
  ;; (princ "/n")
  ;; (princ movewhat)
  ;; (princ "/n")
  ;; (princ moveto)
  (entmod ssl_l))

;新建图层 (DB_makelayer 图层代码或图层名) 返回图层名
(defun DB_makelayer(newlayer / color lay_str lay_weight)    
  (if (/= (assoc newlayer *color_list) nil)
      (progn
        (setq color (nth 2 (assoc newlayer *color_list)))
        (setq lay_str (nth 1 (assoc newlayer *color_list)))
        (setq lay_weight (nth 3 (assoc newlayer *color_list))))
      
      (setq lay_str newlayer))
    
  (if (= color nil) (setq color 0))
  (if (= lay_weight nil) (setq lay_weight 18))
  (if (null (tblsearch "layer" lay_str))
    (progn
        ;(command "-layer" "n" lay_str "c" color lay_str "")
        (DB_EntmakeLayer lay_str color lay_weight)
        (if (wcmatch lay_str "建筑-辅助*")
            (command "-layer" "p" "n" lay_str ""))))
        
    
   
  lay_str)

;移动到指定图层 (DB_movelayer_name 图层名 图元名)
(defun DB_movelayer_name(moveto movewhat / ssl_l)
  (setq ssl_l (entget movewhat))
  (setq ssl_l (subst (cons 8 moveto) (assoc 8 ssl_l) ssl_l))
  (entmod ssl_l))

;设置全局变量标高*eva_ (DB_set_eva_pt1) 会设置变量pt1为nil
(defun DB_set_eva_pt1 (/ eva__)          
  (princ "\n标高 <")
  (princ *eva_)
  (setq eva__ (getreal ">: "))

  (if (/= eva__ nil)
    (setq *eva_ eva__))
  (setq *ctn "关")
  (setq pt1 nil))
;求直线垂点。(DB_get_per_point 直线第一端点坐标 直线第二端点坐标 做垂点起点 是否在直线上) onseg为t则要求垂点在线段上，否则返回nil
(defun DB_get_per_point (linex liney pt onseg / ang_ @pt lindis)
  (setq ang_ (angle linex liney))
  (setq lindis (distance linex liney))
  (inters linex
          liney
          (polar pt (- ang_ (* pi 0.5)) lindis)
          (polar pt (+ ang_ (* pi 0.5)) lindis)
          onseg))

;求点到直线或圆弧垂点。如无垂点，则返回nil
(defun DB_get_per_ent(ent pt / ang1 ang2 angx @pt pt1 pt2 pto arclength)
  (setq @pt nil)
  (if (= (DB_get_ent ent 0) "LINE")
    (setq pt1 (DB_get_ent ent 10)
          pt2 (DB_get_ent ent 11) 
          @pt (DB_get_per_point pt1 pt2 pt t))
    (if (= (DB_get_ent ent 0) "ARC")
      (progn
        (setq ang1 (DB_get_ent ent 50)
              ang2 (DB_get_ent ent 51)
              pto (DB_get_ent ent 10)
              arclength (DB_get_ent ent 40)
              angx (angle pto pt)
              @pt nil
              pt1 nil
              pt2 nil)
        ;; (if (and (> angx pi) (< ang1 pi))
        ;;   (setq angx (- angx pi)))
        (if (< ang2 ang1)
          (setq ang2 (+ ang2 (* pi 2))))
        (if (and (< angx ang2) (> angx ang1))
          (setq pt1 (polar pto angx arclength)))
        (setq angx (+ angx pi))
        (if (and (< angx ang2) (> angx ang1))
          (setq pt2 (polar pto angx arclength)))
        (if (and pt1 pt2)
          (progn
            (if (< (distance pt1 pt) (distance pt2 pt))
              (setq @pt pt1)
              (setq @pt pt2)))
          (if pt1
            (setq @pt pt1)
            (if pt2
              (setq @pt pt2)))))))
  @pt)
      

;取得图元坐标，(DB_get_pt_2p 图元名) 第一点传递至&x，第二点传递至变量&y
(defun DB_get_pt_2p(seg /)
  (setq &x (cdr (assoc 10 (ENTGET seg))))
  (setq &y (cdr (assoc 11 (ENTGET seg))))
  (if (= (getvar "WORLDUCS") 0) 
      (progn
        (setq &x (trans &x 0 1))
        (setq &y (trans &y 0 1))))
  (list &x &y))
      
  

;取得图元第一个坐标，(DB_get_pt_1p 图元名) 返回坐标点。
(defun DB_get_pt_1p(seg / x)
  (setq x (cdr (assoc 10 (ENTGET seg))))
  (if (= (getvar "WORLDUCS") 0)    
    (setq x (trans x 0 1))
    (setq x x))
  
  x)


;获取线段中点
(defun DB_get_midpoint (line / &x &y)
  (DB_get_pt_2p line)
  (mapcar '(lambda (X Y) (* (+ X Y) 0.5)) &x &y))
;按方向重新排列两点，使其角度在0-pi之间。 (DB_array_2pt  第一点坐标 第二点坐标) 传递新的坐标点到 &pt1 &pt2
(defun DB_array_2pt(pt1 pt2 /)
  (if (or (>= (angle pt1 pt2) pi) (< (angle pt1 pt2) 0))
    (setq &pt1 pt2
          &pt2 pt1)
    
    (setq &pt1 pt1
          &pt2 pt2)))
    
  

;将两个选择集合并为一个选择集返回
(defun DB_merge_ss(Xss1 Xss2 / Xss i e)
  (setq Xss (ssadd)
        i 0)
  (while (setq e (ssname Xss1 i))
    (ssadd e Xss)
    (setq i (1+ i)))
  (setq i 0)
  (while (setq e (ssname Xss2 i))
    (if (= (ssmemb e Xss) nil)
      (ssadd e Xss))
    (setq i (1+ i)))
  Xss) 
;获取图元某一参数，(DB_get_ent 图元名 属性点对指)返回属性内容
(defun DB_get_ent (seg num / ssl_)
  (setq ssl_ (entget seg))
  (cdr (assoc num ssl_)))
;获取多段线顶点 示例 (DB_get_Plpoints 图元名)
(defun DB_get_Plpoints (ss)
  (apply 'append (mapcar '(lambda (x) (if (eq (car x) 10) (list (cdr x)))) (entget ss))))
;更改图元某一参数，(DB_change_ent 图元名 属性点对值 属性内容)
(defun DB_change_ent(seg num conts / ssl_ cont)
    (setq ssl_ (entget seg)
          cont (assoc num ssl_))
    (if cont
      (setq ssl_ (subst (cons num conts) cont ssl_))
      (setq ssl_ (append ssl_ (list (cons num conts)))))
    ;(setq ssl_ (subst (cons num conts) (assoc num ssl_) ssl_))
    (entmod ssl_)
    (entupd seg))

;取得动态块原名(DB_get_realname 块图元名) 返回块名 字符串。
(defun DB_get_realname (blk / tem blkname)
  (setq blkname (cdr (assoc 2 (entget blk))))
  (if (wcmatch blkname "`**");;如果是匿名块 
    (if (and
          (setq tem
            (cdadr (assoc -3 (entget (cdr (assoc 330 (entget (tblobjname "block" blkname))));;根据动态块名称取得图元名
                      ;;根据图元名取得实体
                    
                  
                              '("AcDbBlockRepBTag")))))
                
              
            
          
          (setq tem (handent (cdr (assoc 1005 tem)))))
        
     (setq blkname (cdr (assoc 2 (entget tem))))))
    
  
  blkname)

;确认是否
(defun DB_yesorno (contents def / yn str ret)
  (initget "Yes No")
  (if def
    (setq str "Y")
    (setq str "N"))
  (setq yn (getkword (strcat "\n" contents "[是(Y)/否(N)]:<" str ">")))
  (cond
    ((= yn "Yes") (setq ret t))
    ((= yn "No") (setq ret nil))
    (t (setq ret def)))
  ret)

;读取文件数据
(defun DB_read_file (filename / fm li tzlist linelist se)
  (setq fm (open filename "r"))
  (setq li (read-char fm))
  (setq tzlist nil)
  (setq linelist nil)
  (setq se "")
  (while li
    (cond
      (
        (= li 10) 
        (setq linelist (append linelist (list se)))
        (setq tzlist (append tzlist (list linelist)))
        (setq linelist nil)
        (setq se ""))
      (
        (= li 9)
        (setq linelist (append linelist (list se)))
        (setq se ""))
      (t 
        (setq se (strcat se (chr li)))))
    (setq li (read-char fm)))    
  
  (close fm)
  tzlist)
;I/O文件 (DB_open_file filename mode)根据系统创建文件目录，或打开文件。mode为"d",filename为目录名，返回完整目录名,mode为"f",返回文件名,mode为"a,w,r"直接打开文件。
(defun DB_open_file (filename mode / dir fm)
  (if (= mode "d")
    (setq dir filename)
    (setq dir "AutocadOutput"))
  (if (wcmatch (getvar "PLATFORM") "Mac*")
    (progn 
      (vl-mkdir dir)
      (setq fm (strcat dir "/")))
    (progn
      (vl-mkdir (strcat (getvar "DWGPREFIX") dir))
      (setq fm (strcat (getvar "DWGPREFIX") dir "\\"))))
  (if (= mode "d")
    fm
    (if (= mode "f")
      (strcat fm filename)
      (open (STRCAT fm filename) mode))))
;输出数据
(defun DB_write_file (filename contents out / fm i e)
  (setq fm (DB_open_file filename "w"))
      
  (foreach i contents
    (foreach e i
      (princ e fm)
      (princ "\t" fm))
    (princ "\n" fm))
  (close fm)
  (if out
    (if (wcmatch (getvar "PLATFORM") "Mac*")
      (alert (strcat "输出数据，放置在<文稿/AutocadOutput/" filename ">。"))
      (alert (strcat "输出数据，放置在<" (getvar "DWGPREFIX") "AutocadOutput" filename ">。"))))
  (princ)
  (princ))
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


;取得随机数值
(defun DB_random (@site / @random rep);@site作为随机数位数，定义为1，2，3分别对应0-9，0-99，0-999
  (if (= *ran_seed nil)
    (setq *ran_seed (rem (* (getvar "date") 100000000.0) 1000000.0)))
  (if (and (> @site 0) (> 7 @site)) ;如果@site大于6输出nil
    (progn
      (setq *ran_seed (rem (+ (* *ran_seed 532919) 625979.0) 994271))
      (setq rep 1)
      (repeat @site
        (setq rep (* rep 10)))
      (setq @random (fix (rem *ran_seed rep))))
    (setq @random nil))
  @random)
;生成文字
(defun DB_make_text2 (pt str)
  (DB_make_text8 pt str "DB文字" (* *h 3.5) 0.8 0 "wz" 0))

(defun DB_make_text3 (pt str layer)
  (DB_make_text8 pt str "DB文字" (* *h 3.5) 0.8 0 layer 0))

(defun DB_make_text4 (pt str Textheigh layer)
  (DB_make_text8 pt str "DB文字" Textheigh 0.8 0 layer 0))

(defun DB_make_midtext2 (pt str)
  (DB_make_text8 pt str "DB文字" (* *h 3.5) 0.8 0 "wz" 1))

(defun DB_make_midtext3 (pt str layer)
  (DB_make_text8 pt str "DB文字" (* *h 3.5) 0.8 0 layer 1))

(defun DB_make_midtext4 (pt str Textheigh layer)
  (DB_make_text8 pt str "DB文字" Textheigh 0.8 0 layer 1))

(defun DB_make_text8 (pt str style Textheigh textw ang layer pos / lay_str pos2)
  (if (/= layer "")
   (progn
      (setq lay_str (DB_makelayer layer)))
    
   (setq lay_str "0"))
  (if (null (tblsearch "style" style))
    (DB_make_style style))
  (setq pos2 0)
  (if (> pos 8)
    (setq pos (- pos 9)
          pos 2))
  (if (> pos 5)
    (setq pos (- pos 6)
          pos2 3))

  (entmake
    (list 
      '(0 . "TEXT") 
      (cons 1 str)
      (cons 7 style) 
      (cons 8 lay_str)
      (cons 10 pt) 
      (cons 11 pt)
      (cons 40 Textheigh)
      (cons 41 textw)
      (cons 50 ang)
      (cons 72 pos)
      (cons 73 pos2))))

  

;按比例偏移坐标 (DB_offset_pt 原始点 x方向偏移比例 y方向比例)返回新点
(defun DB_offset_pt(pt x y / npt)
  (setq npt (polar (polar pt 0 (* *h x)) (* pi 0.5) (* *h y)))
  npt)

;偏移坐标打字 (DB_offset_text 原始点 x方向偏移比例 y方向比例 文字)
(defun DB_offset_text(pt x y text)
  ;(command "INSERT" "SingleString.dwg" (DB_offset_pt pt x y) *h "" "" text)
  ;(DB_movelayer "wz" (entlast))
  (DB_make_midtext2 (DB_offset_pt pt x y) text))

;如果没有初始比例则设置，并显示比例 (DB_init_scale 比例)
(defun DB_init_scale(scale)        
  (if (= *h nil)
    (setq *h scale))
  
  (princ (strcat "\n显示比例:  1:" (rtos *h 2 0)))
  (princ *h))

;生成文字样式 (DB_make_style 样式名)
(defun DB_make_style (name)
  (DB_make_style3 name 3.5 0.8))

(defun DB_make_style3 (name h w)
  (DB_make_style5 name h w "gbenor.shx" "gbcbig.shx"))
(defun DB_make_style5 (name h w txt hztxt)
  (entmake
    (list
      '(0 . "STYLE")
      '(100 . "AcDbSymbolTableRecord")
      '(100 . "AcDbTextStyleTableRecord")
      (cons 2 name)
      '(70 . 0)
      (cons 40 h)
      (cons 41 w)
      (cons 3 txt)
      (cons 4 hztxt))))

;(DB_make_block_noname (ssget) (getpoint))生成无名块
(defun DB_make_block_noname (ss pt / e en i name)
  (entmake (list '(0 . "block") '(2 . "*U") '(70 . 1) (cons 10 pt)))
  (repeat (setq i (sslength ss))
    (setq e (ssname ss (setq i (1- i))))
    (setq en (entget e))
    (cond (en (entmake (cdr en)) (entdel e))))
  
  (setq name (entmake '((0 . "ENDBLK"))))
  (entmake (list '(0 . "INSERT") (cons 2 name) (cons 10 pt))))
;自动生成块
(defun DB_make_block (ss pt att / e en i name)
  (if *DBblocknm
    (setq *DBblocknm (1+ *DBblocknm))
    (setq *DBblocknm (DB_random 6)))
  (setq name (strcat "_DB_" (rtos *DBblocknm 2 0)))
  (if att
    (entmake (list '(0 . "block") '(66 . 1) (cons 2 name) '(70 . 2) (cons 10 pt)))
    (entmake (list '(0 . "block") (cons 2 name) '(70 . 0) (cons 10 pt))))
  (repeat (setq i (sslength ss))
    (setq e (ssname ss (setq i (1- i))))
    (setq en (entget e))
    (cond (en (entmake (cdr en)) (entdel e))))
  
  (entmake '((0 . "ENDBLK")))
  (entmake (list '(0 . "INSERT") (cons 2 name) (cons 10 pt)))
  name)
;插入块 (DB_insert_block "图块名" 坐标 图层 角度 x比例 y比例 z比例)
(defun DB_insert_block2 (name pt) 
  (DB_insert_block name pt "" 0 1 1 1))
(defun DB_insert_block3 (name pt layer_)
  (DB_insert_block name pt layer_ 0 1 1 1))
(defun DB_insert_block4 (name pt layer_ ang_)
  (DB_insert_block name pt layer_ ang_ 1 1 1))
(defun DB_insert_block5 (name pt layer_ ang_ scale)
  (DB_insert_block name pt layer_ ang_ scale scale scale))
(defun DB_insert_block (name pt layer_ ang_ sx sy sz / lay_str)
  (if (/= layer "")
   (progn
      (setq lay_str (DB_makelayer layer)))
    
   (setq lay_str "0"))
  
  (entmake (list '(0 . "INSERT") 
                  (cons 2 name) 
                  (cons 8 lay_str) 
                  (cons 10 pt) 
                  (cons 41 sx) 
                  (cons 42 sy) 
                  (cons 43 sz) 
                  (cons 50 ang_))))



;生成点
(defun DB_make_pt (Pt)
  (entmakeX (list '(0 . "POINT") (cons 10 pt))))
;生成属性
(defun DB_make_att (pt tag def style layer high wigth color / lay_str)
  (if (/= layer "")
   (progn
      (setq lay_str (DB_makelayer layer)))  
   (setq lay_str "0"))
  (if (null (tblsearch "style" style))
    (DB_make_style style))
  
  (entmakex (list '(0 . "ATTDEF") 
                  (cons 1 def) 
                  (cons 2 tag)
                  (cons 3 "")
                  (cons 7 style)
                  (cons 8 lay_str) 
                  (cons 10 pt) 
                  (cons 11 pt)
                  (cons 40 high) 
                  (cons 41 wigth) 
                  (cons 62 color)
                  '(70 . 0))))
;获取文字
(defun DB_get_input (tag def / str att bname l ed)
  (setq att (ssadd))
  (setq att (ssadd (DB_make_att '(0 0 0) tag def "DB文字" "" 300 1 7) att))
  (setq bname (DB_make_block att '(0 0 0) t))
  (entdel (entlast))
  (setvar "ATTDIA" 1)
  (command "INSERT" bname '(0 0 0) 1 "" "")
  (while (= 1 (getvar 'cmdactive))
    (command "\\"))
  (setq l (entlast))
  (if (= (DB_get_realname l) bname)
    (progn
      (setq ed (entget (entnext (cdr (assoc -1 (entget l))))))
      (setq str (cdr (assoc 1 ed)))
      (entdel l)))
  (setvar "ATTDIA" 0)
  str)
;获取多参数
(defun DB_get_Minput (tags / m tag def str strlist att bname l ed)
  (setq m (1- (/ (length tags) 2)))
  ;(setq m n)
  (setq att (ssadd))
  (while (<= 0 m)
    (setq tag (nth (* m 2) tags)
          def (nth (1+ (* m 2)) tags))
    (setq att (ssadd (DB_make_att '(0 0 0) tag def "DB文字" "" 300 1 7) att))
    (setq m (1- m)))
  (setq bname (DB_make_block att '(0 0 0) t))
  (entdel (entlast))
  (setvar "ATTDIA" 1)
  (command "INSERT" bname '(0 0 0) 1 "" "")
  (while (= 1 (getvar 'cmdactive))
    (command "\\"))
  (setq l (entlast))
  (if (= (DB_get_realname l) bname)
    (progn
      (setq strlist (DB_get_att l))
      (entdel l)))
  (setvar "ATTDIA" 0)
  strlist)
;获取文字
(defun DB_get_str ( blkname / str l ed)
  (setvar "ATTDIA" 1)
  (command "INSERT" (strcat blkname ".dwg") '(0 0 0) 1 "" "") 
  (while (= 1 (getvar 'cmdactive))
    (command "\\"))
  (setq l (entlast))
  (if (= (DB_get_realname l) blkname)
    (progn
      (setq ed (entget (entnext (cdr (assoc -1 (entget l))))))
      (setq str (cdr (assoc 1 ed)))
      (entdel l)))
  (setvar "ATTDIA" 0)
  str)
;显示列表
(defun DB_show_list( slist n / m str len nlist i j)
  (setq m 0)
  (setq str "")
  (while (> m -1)
    (setq nlist (assoc m slist))
    (if nlist
      (progn
        (setq len (length nlist))
        (cond
          ((<= n 0) (setq j len))
          ((> n (1- len) (setq j len)))
          (t (setq j (1+ n))))
        (setq i 1)
        (setq str (strcat str "\n[" (rtos m 2 0) "]"))
        (while (< i j)
          (setq str (strcat str "\t" (nth i nlist)))
          (setq i (1+ i)))
        (setq m (+ 1 m)))
      
      (if (= m 0)
        (setq m 1)
        (setq m -1))))
    
  (alert str)
  (setq pt1 nil))        
;打断直线
(defun DB_break_line(line pt1 pt2)
  ())

;生成标注样式
(defun DB_make_dimstyle (name style)
  (entmake
    (list
      '(0 . "DIMSTYLE")
      '(100 . "AcDbSymbolTableRecord")
      '(100 . "AcDbDimStyleTableRecord")
      '(70 . 0)
      (cons 340 (tblobjname "style" style))     ; 文字样式名
      (cons 2 name)         ; 标注样式名
      '(3 . "")         ; 标注前缀
      '(40 . 0.0)         ; 标注特征比例，缩放到布局
      '(41 . 1.0)         ; 箭头尺寸
      '(42 . 1.25)         ; 起点偏移量
      '(43 . 5.5)         ; 基线间距
      '(44 . 1.5)         ; 超出尺寸线
      '(47 . 0.000)         ; 上偏差
      '(48 . 0.000)         ; 下偏差
      '(71 . 0)          ; 公差无
      '(77 . 1)          ; 文字在尺寸线上方
      '(74 . 1)          ;
      '(140 . 3.0)         ; 文字高度
      '(141 . -2.5)         ; 圆心标记
      '(144 . 1.0)         ; 测量比例单位
      '(146 . 0.7)         ; 公差高度比例
      '(147 . 1.0)         ; 文字从尺寸线偏移
      '(172 . 2)         ; 尺寸界线间连线
      '(176 . 256)         ; 随层
      '(177 . 256)         ; 随层
      '(178 . 256)         ; 随层
      '(271 . 3)         ; 尺寸标注精度
      '(272 . 3)         ; 公差标注精度
      '(275 . 0)         ; 角度标注制式，十进制。
      '(288 . 1))))         ; 手动放置尺寸
;加载lisp
(defun c:reloadlsp()
  (setq *loadlsp t)
  (if (/= (findfile "main.lsp") nil) 
    (load "main.lsp")
    (if (/= (findfile "main.fas") nil)
      (load "main.fas"))))
;加载模块
(defun loadmods(loadlsp / DB_lsplist fn n m lspinfo dsp alt flsp ffas nm cmdlist cmds)
  (setq DB_lsplist (DB_read_file (findfile "DB_lsp_list.DBM")))
  (setq n (length DB_lsplist)
        m 0
        nm 0
        cmdlist (list)
        alt "已成功加载命令集：")
  (while (< m n)
    (setq lspinfo (nth m DB_lsplist))
    (setq fn (nth 0 lspinfo)
          flsp (findfile (strcat fn ".lsp"))
          ffas (findfile (strcat fn ".fas"))
          cmds (DB_read_file (findfile (strcat fn ".cmd"))))
    (setq dsp (nth 1 lspinfo))
    (if cmds
      (setq cmdlist (append cmdlist cmds)))
    (if (and loadlsp flsp)
      (progn 
        (load flsp)
        (setq alt (strcat alt "\n     " dsp "模块(lisp)")
              nm (1+ nm)))
      (if ffas
        (progn
          (load ffas)
          (setq alt (strcat alt "\n     " dsp "模块")
                nm (1+ nm)))))
    (setq m (1+ m)))
  (if (> nm 0)
    (setq alt (strcat alt "\n\n一共加载[" (rtos nm 2 0) "]个模块，[" (rtos (length cmdlist) 2 0) "]个命令。\n输入命令【hh】显示命令列表。")
          *helplist cmdlist)
    (setq alt "加载失败！请检查模块文件及Autocad查找目录设置。"))
  (alert alt))
    
;重新加载工具包
(defun c:reload()
  (setq *loadlsp nil)
  (if (/= (findfile "main.fas") nil)
    (load "main.fas")))
  
;以下为加载后自动执行部分
(textscr)
(loadmods *loadlsp)
;初始化数据
(DB_svar)
;绘图比例
(if (= *h nil)
    (setq *h 100))
;绘图单位
(if (= *sca_ nil)
  (setq *sca_ 0.001))
;目前编号
(if (= *num nil)
  (setq *num 1))
;前缀
(if (= *prefix nil)
  (setq *prefix ""))
;后缀
(if (= *suffix nil)
  (setq *suffix ""))
;默认修正角度
(if (= *fixang nil) 
  (setq *fixang 0))
;选择过滤，类型开，图层关
(if (= *s_o nil) (setq *s_o "开"))
(if (= *s_l nil) (setq *s_l "关"))
;整理误差
(if (= *zl nil)
  (setq *zl 3))
;默认填充墙图案编号
(if (= *patt nil) 
  (setq *patt 1))
;填充线图案编号
(if (= *patt_x nil) 
  (setq *patt_x 18))
;默认偏移距离
(if (= *offdis nil)
  (setq *offdis 200))
;默认图圈上标
(if (= *cont nil)
  (setq *cont "1"))
;默认图标下标
(if (= *contd nil)
  (setq *contd "A"))
;图圈类型
(if (= *sty nil)
  (setq *sty "O"))
;默认室内外高差
(if (= *gc nil)
  (setq *gc 300))
;门类型表
(setq *Door_list '(
                   (1 "单扇" "DB_Door1.dwg")
                   (2 "双扇" "DB_Door2.dwg")
                   (3 "子母" "DB_Door4.dwg")
                   (4 "推拉" "DB_Door3.dwg")
                   (5 "半开单扇" "DB_Door1-2.dwg")
                   (6 "半开双扇" "DB_Door2-2.dwg")
                   (7 "电梯门" "DB_Door5.dwg")
                   (8 "卷帘门" "DB_Door6.dwg")))
  

;门类型编号
(if (= *Door_style nil) (setq *Door_style 1))
;门宽
(if (= *wall_menkuan nil) (setq *wall_menkuan 900))
;门剁
(if (= *wall_menduo nil) (setq *wall_menduo 100))
;窗垛
(if (= *wall_chuangduo nil) (setq *wall_chuangduo 500))
;窗宽
(if (= *wall_chuangkuan nil) (setq *wall_chuangkuan 1500))
;窗类
(if (= *Window_style nil) (setq *Window_style 1))
;楼梯类型
(setq *Stairs_list '(
                      (1 "住宅楼梯" 260 175 0 1100)
                      (2 "幼儿园小学楼梯" 260 150 150 1150)
                      (3 "人员密集" 280 160 150 1150)
                      (4 "其他公建" 260 170 150 1150)
                      (5 "专用楼梯" 250 180 0 1150)
                      (6 "套内楼梯" 220 200 0 900)))
(if (= *Stairs_style nil) (setq *Stairs_style 1))
;窗类型表
(setq *Window_list '(
                     (1 "普通窗" "DB_Window1.dwg")
                     (2 "高窗" "DB_Window2.dwg")
                     (3 "窗靠墙" "DB_Window3.dwg")
                     (4 "带护窗栏杆" "DB_Window4.dwg")
                     (5 "百叶窗" "DB_Window5.dwg")))
  
;防火门窗
(if (= *fire nil)
    (setq *fire "非"))
;层高
(if (= *lvh nil)
    (setq *lvh 3000))
;梁高
(if (= *liangh nil)
    (setq *liangh 550))
;门高
(if (= *menh nil)
    (setq *menh (- *lvh *liangh 50)))
;窗台
(if (= *chuangt nil)
    (setq *chuangt 900))
;窗高
(if (= *chuangh nil)
    (setq *chuangh (- *lvh *liangh 50 *chuangt)))
;图层列表
(setq *color_list '(
                    ("bg" "建筑-标注-标高" 3 18) 
                    ("zb" "建筑-标注-坐标" 72 18) 
                    ("pd" "建筑-标注-坡度" 82 18) 
                    ("zh" "建筑-标注-轴号" 103 18) 
                    ("fh" "建筑-标注-符号" 92 18)
                    ("cc" "建筑-标注-尺寸" 62 18)
                    ("mj" "建筑-辅助-面积" 6 18)
                    ("nq" "建筑-墙体" 53 35)
                    ("wq" "建筑-墙体-外墙" 50 35)
                    ("zz" "建筑-柱子" 8 35)
                    ("qz" "建筑-辅助-墙中心线" 181 18)
                    ("me" "建筑-门窗-门" 140 18)
                    ("wz" "建筑-公用-文字" 11 18)
                    ("wi" "建筑-门窗-窗" 142 18)
                    ("h50" "建筑-填充-50" 67 9)
                    ("h100" "建筑-填充-100" 37 9)
                    ("h20" "建筑-填充-20" 107 9)
                    ("mc" "建筑-标注-门窗" 151 18)
                    ("tm" "建筑-标注-图名" 72 25)
                    ("fg" "建筑-土方-网格" 42 18)
                    ("ys" "建筑-土方-原始" 75 18)
                    ("sj" "建筑-土方-设计" 120 18)
                    ("sg" "建筑-土方-施工" 203 18)
                    ("tf" "建筑-土方-土量" 24 18)
                    ("ld" "建筑-土方-零线" 37 18)
                    ("pmpd" "建筑-墙体-剖面" 61 35)
                    ("pmmc" "建筑-剖面-面层" 183 18)
                    ("pmkx" "建筑-剖面-看线" 153 18)
                    ("pmfs" "建筑-剖面-扶手" 60 13)
                    ("pmbm" "建筑-剖面-后面扶手" 76 9)
                    ("tk" "建筑-辅助-打印区域" 212 18)
                    ("ck" "建筑-辅助-参考线" 222 18)
                    ("bj" "建筑-辅助-标记" 1 70)
                    ("lt" "建筑-楼梯" 2 18)))

;创建标注尺寸图层    
(if (>= (atof (getvar "ACADVER")) 20) 
  (setvar "DIMLAYER" (DB_makelayer "cc")))


(princ)
(princ)