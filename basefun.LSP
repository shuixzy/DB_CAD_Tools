
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

;2D点转3D点
(defun DB_2Dto3D(pt /)
  (list (car pt) (cadr pt) 0))
;3D点转2D点
(defun DB_3Dto2D(pt /)
  (list (car pt) (cadr pt)))
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
(defun DB_snapmark (inpt / ptc hsc snaplist n m ptt)
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
(defun DB_moveblock (blk pt / cont ssl s1 px py pt0 redr)
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
(defun DB_moveblock3 (blk pt1 pt2 / cont ssl s1 px py pt0 yx yy pt redr)
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
(defun DB_dis_WD (#k / %k i gr n pt pt_ stp lv fx angr redr)  
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
(defun DB_get_per_ent(ent pt / ang1 ang2 angx @pt pt1 pt2 pto arclength ptl m n len lenmin)
  (setq @pt nil)
  (cond
    ((= (DB_get_ent ent 0) "LINE")
     (setq pt1 (DB_get_ent ent 10)
           pt2 (DB_get_ent ent 11) 
           @pt (DB_get_per_point pt1 pt2 pt t)))
    ((= (DB_get_ent ent 0) "ARC")
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
            (setq @pt pt2)))))
    ((= (DB_get_ent ent 0) "LWPOLYLINE")
     (setq ptl (mapcar 'cdr (vl-remove-if-not '(lambda (x) (= (car x) 10)) (entget ent)))
           m 1
           n (length ptl))
     (while (< m n)
        (setq pt1 (nth (- m 1) ptl)
              pt2 (nth m ptl))
        (setq pto (DB_get_per_point pt1 pt2 pt t))
        (if pto
          (progn
            (setq len (distance pto pt))
            (if lenmin
              (if (< len lenmin)
                (setq lenmin len
                      @pt pto))
              (setq lenmin len
                    @pt pto)))) 
        (setq m (1+ m)))))
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
(defun DB_get_Plpoints3d (pl / pts z)
  (setq pts (vl-remove-if-not '(lambda (x) (= 10 (car x))) (entget pl)))
  (setq pts (mapcar 'cdr pts))
  (setq pts (mapcar '(lambda (x) (DB_conslast (if (setq z (assoc 38 (entget pl))) (cdr z) 0.0) x)) pts))
  pts)

;转换坐标 nentsel换成WUCS
(defun DB_get_trans (pts m /)
  (setq pts (mapcar '(lambda (x) (DB_conslast 1.0 x)) pts))
  (mapcar '(lambda (x) (DB_get_VXM x m)) pts))

;;在表的末尾加个元素
(defun DB_conslast (x l /)
  (reverse (cons x (reverse l))))

;;向量乘以矩阵
(defun DB_get_VXM (v m / i sum)
  (setq i 1 sum nil)
  (repeat (DB_get_collen m)
    (setq sum (cons (DB_get_VXU v (DB_get_colindex m i)) sum))
    (setq i (1+ i)))
  
  (reverse sum))

;;获取矩阵的列数
(defun DB_get_collen (m /)
  (apply 'max (mapcar 'length m)))

;;向量乘以向量
(defun DB_get_VXU (v u /)
  (apply '+ (mapcar '(lambda (x y) (* x y)) u v)))

;;获取矩阵的某一列
(defun DB_get_colindex (m col-index /)
  (if (and (> col-index 0) (<= col-index (DB_get_collen m)))
    (mapcar '(lambda (x) (nth (1- col-index) x)) m)))
;平面坐标转换
(defun DB_change_posi(cs cx cy ca / ptx pty ang lx ly m n sty)
  (setq sty (DB_get_ent cs 0))
  (setq ptx (DB_get_ent cs 10))
  (if (wcmatch sty "LWPOLYLINE")
    (setq ptx (mapcar '(lambda (pt) (polar cy (+ ca (angle cx pt)) (distance cx pt))) ptx))
    (setq ptx (polar cy (+ ca (angle cx ptx)) (distance cx ptx))))
  (DB_change_ent cs 10 ptx)
  (setq pty (DB_get_ent cs 11))
  (if pty
    (progn
      (if (wcmatch sty "LWPOLYLINE")
        (setq pty (mapcar '(lambda (pt) (polar cy (+ ca (angle cx pt)) (distance cx pt))) pty))
        (setq pty (polar cy (+ ca (angle cx pty)) (distance cx pty))))
      (DB_change_ent cs 11 pty)))
  (setq ang (DB_get_ent cs 50))
  (if ang
    (progn
      (setq ang (+ ang ca))
      (DB_change_ent cs 50 ang)))
  (setq ang (DB_get_ent cs 51))
  (if ang
    (progn
      (setq ang (+ ang ca))
      (DB_change_ent cs 51 ang))))

;获取离多段线最近段定点
(defun DB_get_PLnear (ss pt / ln li chuidis chuidis_ pl lx ly dx dy)
  (if (listp ss)
    (setq pl ss)
    (setq pl (DB_get_Plpoints ss)))
  (setq ln (length pl)
        li 0
        chuidis nil)
  (while (< (1+ li) ln)             ;逐段查找和选取点最近的线段，确定选取段角度
    (setq lx (nth li pl)
          ly (nth (+ 1 li) pl)
          chuidis_ (DB_get_per_point lx ly pt t))
    (if (or (= chuidis nil) (and chuidis_ (< (distance pt chuidis_) (distance pt chuidis))))
      (setq chuidis chuidis_
            dx lx
            dy ly))
    (setq li (+ 1 li)))
  (if (> ln 2)
    (progn
      (setq lx (last pl)
            ly (car pl)
            chuidis_ (DB_get_per_point lx ly pt t))
      (if (or (= chuidis nil) (and chuidis_ (< (distance pt chuidis_) (distance pt chuidis))))
        (setq chuidis chuidis_
              dx lx
              dy ly))))
  (list dx dy))
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


;选择参考线,返回两个端点
(defun DB_get_referline(/ sline sel pl po px ang)
  (setq sel (nentsel "\n选择参考线：") 
        sline (car sel))
  (cond
    ((wcmatch (DB_get_ent sline 0) "LWPOLYLINE")
     (if (= (length sel) 4)
      ;; (setq pl (DB_get_blocktrans (DB_get_Plpoints sline) (caddr sel) (DB_get_pt_1p (last (last sel)))) 
       (setq pl (DB_get_trans (DB_get_Plpoints3d sline) (caddr sel))
             pl (DB_get_PLnear pl (cadr sel)))                                  
       (setq pl (DB_get_PLnear sline (cadr sel))))
     (setq po (DB_get_per_point (car pl) (cadr pl) (cadr sel) nil)
           px (cadr pl)))
    ((wcmatch (DB_get_ent sline 0) "ARC")
     (if (= (length sel) 4)
       (setq px (car (DB_get_trans (list (DB_get_ent sline 10)) (caddr sel))))
       (setq px (DB_get_ent sline 10))) 
     (setq po (polar px (angle px (cadr sel)) (DB_get_ent sline 40))
           ang (+ (angle po px ) (/ pi 2))
           px (polar po ang (distance po px))))                                 
    (t 
     (if (= (length sel) 4)
      ;; (setq po (car (DB_get_blocktrans (list (DB_get_ent sline 10)) (caddr sel) (DB_get_pt_1p (last (last sel)))))
      ;;       px (car (DB_get_blocktrans (list (DB_get_ent sline 11)) (caddr sel) (DB_get_pt_1p (last (last sel))))))
       (setq po (car (DB_get_trans (list (DB_get_ent sline 10)) (caddr sel)))
             px (car (DB_get_trans (list (DB_get_ent sline 11)) (caddr sel))))
       (setq po (DB_get_per_ent sline (cadr sel))
             px (DB_get_ent sline 11)))))
  (list (DB_3Dto2D po) (DB_3Dto2D px)))
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
;遍历选择集对所包含的图元进行指定函数操作,返回操作后的表
(defun DB_Mapcar (ss Fun / nn rtn)
  (if ss
   (repeat (setq nn (sslength ss))
    (setq rtn (cons (apply Fun (list (ssname ss (setq nn (1- nn))))) rtn)))))
;自动成组
(defun DB_make_group (ss /)
  (princ))
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

;复制属性
(defun DB_match_ssl ( ent / ssl matchlist m retssl conts)
  (setq matchlist '(6 7 8 39 40 41 42 43 44 45 46 47 48 70 71 72 73 74 75 76 77 78 49 50 51 52 53 54 55 56 57 58 60 62 210 220 230 330))
  (setq ssl (entget ent))
  (foreach m matchlist
    (setq conts (assoc m ssl))
    (if conts
      (setq retssl (append retssl (list conts)))))
  retssl)
;打断直线
(defun DB_break_line(line pt1 pt2 / &x &y p1 p2 ssl_ po)
  (DB_get_pt_2p line)
  (if &x
    (progn
      (setq p1 (DB_get_per_ent line pt1))
      (if (= p1 nil)
        (if (< (distance pt1 &x) (distance pt1 &y))
          (setq p1 &x)
          (setq p1 &y)))

      (if pt2
        (progn
          (setq p2 (DB_get_per_ent line pt2))
          (if (= p2 nil)
            (if (< (distance pt2 &x) (distance pt2 &y))
              (setq p2 &x)
              (setq p2 &y))))
        (setq p2 p1))
      (setq ssl_ (entget line))
      (if (< (distance p2 &x) (distance p1 &x))
        (setq po p1
              p1 p2
              p2 po))
      ;; (if (> (distance p1 &x) *zl)
      ;;   (entmake (append (list '(0 . "LINE")
      ;;                          (cons 10 &x)
      ;;                          (cons 11 p1))
      ;;                    (DB_match_ssl line))))
      ;; (if (> (distance p2 &y) *zl)
      ;;   (entmake (append (list '(0 . "LINE")
      ;;                          (cons 10 p2)
      ;;                          (cons 11 &y))
      ;;                    (db_match_ssl line))))
      ;; (entdel line))))
      (if (> (distance p1 &x) 0)
        (progn
          (DB_change_ent line 11 p1)
          (if (> (distance p2 &y) 0)
            (progn
              (setq en (append (list '(0 . "LINE")
                                     (cons 10 p2) 
                                     (cons 11 &y))
                               (DB_match_ssl line)))
              (entmake en))))
        (if (> (distance p2 &y) 0)
          (progn
            (DB_change_ent line 10 p2)))))))
        
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
;重新加载工具包
(defun c:reload()
  (setq *loadlsp nil)
  (if (/= (findfile "main.fas") nil)
    (load "main.fas")))
