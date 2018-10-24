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
(defun setwdwidth_ (str / w__)    ;设置门窗宽度
    (prompt (strcat "\n" str "宽：<" (rtos width_ 2 0)))
    (setq w__ (getint ">:"))
    (if (/= w__ nil)
        (setq width_ w__))
    
    (if (> (+ width_ duo_) wallwidth) 
        (setq width_ (- wallwidth duo_)))
    
    (if (= str "门")
        (setq *wall_menkuan width_)
        (setq *wall_chuangkuan width_))
    
    (setq pt1 nil))
(defun setwdstep_ (str / w__)    ;设置门垛递进
    (prompt (strcat "\n" str "递进：<" (rtos duo_ 2 0)))
    (setq w__ (getint ">:"))
    (if (/= w__ nil)
        (setq duo_ w__))
    
    (if (> (+ width_ duo_) wallwidth) 
        (setq width_ (- wallwidth duo_)))
    
    (if (= str "门")
        (setq *wall_menkuan width_
              *wall_menduo duo_)
        (setq *wall_chuangkuan width_
              *wall_chuangduo duo_))
    
    (setq pt1 nil))


(defun setduowidth_ (str / w__ dk dkn)    ;设置门窗垛宽度
    (if (< duo_ 0)
        (setq dk (strcat (rtos (- 0 duo_) 2 0) "等分"))
        (setq dk (rtos duo_ 2 0)))
    (prompt (strcat "\n设置" str "垛宽(输入负数表示等分个数)：<" dk))
    (setq w__ (getint ">:"))
    (if (/= w__ nil)
        (setq duo_ w__))
    
    (if (> (+ width_ duo_) wallwidth) 
        (setq width_ (- wallwidth duo_)))

    (if (< duo_ 0)
        (progn (setq dkn (- 0 duo_))
            (if (> dkn (/ wallwidth width_)) 
                (setq duo_ (- 0 (fix (/ wallwidth width_)))))))
                
    
    (if (= str "门") 
        (progn 
            (setq *wall_menkuan width_)
            (setq *wall_menduo duo_))
        
        (progn
            (setq *wall_chuangkuan width_)
            (setq *wall_chuangduo duo_)))
        
    
    (setq pt1 nil))


(defun changestyle(/ getlx clist)
    (if (= str "门")
        (setq clist *Door_list)
        (setq clist *Window_list))
    (DB_show_list clist 1)
    (setq getlx (atoi (DB_get_input "输入门窗类型代号" (rtos sty_ 2 0))))
    (if (= (assoc getlx clist) nil)
        (setq getlx 1))
    (setq sty_ getlx)
    (if (= str "门")
        (setq *Door_style sty_)
        (setq *Window_style sty_))
    
    (setq pt1 nil))


(defun getmid(x y / m_x m_y)
    (setq m_x (* (+ (car x) (car y)) 0.5))
    (setq m_y (* (+ (cadr x) (cadr y)) 0.5))
    ;(setq &pt (list m_x m_y))
    (list m_x m_y))


(defun open_wd(str style / ep line_open pt1 sty_ lx ly %l0 &x &y width_ wallwidth duo_ &x1 &x2 &y1 &y2 s1 s2 dk m &sx1  &sy1    &sx2    &sy2)     ;选墙开洞
    (setq line_open nil)
    (while (= line_open nil)
        (setq ep (entsel (strcat "\n选择你要插入<" str ">的墙：")))
        (setq line_open (car ep))
        (setq ssl (ENTGET line_open))
        (if (or (/= (cdr (assoc 0 ssl)) "LINE") (not (wcmatch (cdr (assoc 8 ssl)) "建筑-墙体*")))
            (setq line_open nil)
            (progn
                (setq ept (cadr ep))
                (setq lx (cdr (assoc 11 ssl))
                      ly (cdr (assoc 10 ssl)))
                (pickwall lx ly ept)
                (setq lx &sx1 ly &sy1))))
                

    (setq wallwidth (distance lx ly))
    
    
    (if (= str "门") 
        (progn 
            (setq width_ *wall_menkuan)
            (setq duo_ *wall_menduo)
            (setq sty_ *Door_style))
        
        (progn
            (setq width_ *wall_chuangkuan)
            (setq duo_ *wall_chuangduo)
            (setq sty_ *Window_style)))
        
    
 
    (if (> (+ width_ duo_) wallwidth) 
        (progn
            (setq width_ (- wallwidth duo_))
            (if (= str "门")
                (setq *wall_menkuan width_)
                (setq *wall_chuangkuan width_))))
            
        
    
    
    (while (= pt1 nil)
         (if (< duo_ 0)
           (setq dk (strcat (rtos (- 0 duo_) 2 0) "等分"))
           (setq dk (rtos duo_ 2 0)))
     (prompt (strcat "\n" 
                     str
                     "宽：<"
                     (rtos width_ 2 0)
                     ">;   墙垛宽：<"
                     dk
                     ">;   "
                     str
                     "型：["
                     (nth 1 (assoc sty_ style))
                     "]"))
                
        
     (initget "Width Duo Style")
     (setq pt1 (getpoint "\n宽度【W】 ／ 墙垛【D】 / 换型【S】 ／ < 插入 >:"))
     (cond
         ((= pt1 "Width") (setwdwidth_ str))
         ((= pt1 "Duo") (setduowidth_ str))
         ((= pt1 "Style") (changestyle))
         (t nil)))
        
    
    (if (> (distance pt1 lx) (distance pt1 ly))      
        (setq %l0 lx
                lx ly
                ly %l0))
        
  
    (setq wallang (angle lx ly))
    (setq y_ 1)
    (if (< duo_ 0)
     (setq dz_ (/ (- wallwidth (* width_ (- 0 duo_))) (- 1 duo_)) 
        &x (polar lx wallang dz_)
        y_ (- 0 duo_))
    
     (setq &x (polar lx wallang duo_)))
    (setq &y (polar &x wallang width_))
    
   
 (if (and (= str "窗") (= sty_ 2))
     (if (suandong_ &x &y)
      (progn
            
         (setq x_ (getmid &x1 &x2))
            
         ;(setq y_ (getmid &y1 &y2))
         (setq xy_ (distance &x1 &x2))))
          
        
    
     (if (kaidong_ &x &y) 
         (progn
                
             (setq x_ (getmid &x1 &x2))
                
             ;(setq y_ (getmid &y1 &y2))
             (setq xy_ (distance &x1 &x2))
             (setq m 1)
             (if (> y_ 1)
              (while (< m y_)
               (setq &x (polar &y wallang dz_)
                     &y (polar &x wallang width_))
               (kaidong_ &x &y)
               (setq m (+ 1 m))))))))
            
(defun dtopen_wd(str style / ep line_open pt1 sty_ lx ly %l0 &x &y width_ wallwidth duo_ &x1 &x2 &y1 &y2 s1 s2 m &sx1  &sy1    &sx2    &sy2)     ;选墙开洞
    (setq line_open nil)
    (while (= line_open nil)
        (setq ep (entsel (strcat "\n选择你要插入<" str ">的墙：")))
        (setq line_open (car ep))
        (setq ssl (ENTGET line_open))
        (if (or (/= (cdr (assoc 0 ssl)) "LINE") (not (wcmatch (cdr (assoc 8 ssl)) "建筑-墙体*")))
            (setq line_open nil)
            (progn
                (setq ept (cadr ep))
                (setq lx (cdr (assoc 11 ssl))
                      ly (cdr (assoc 10 ssl)))
                (pickwall lx ly ept)
                (setq lx &sx1 ly &sy1))))
                

    (setq wallwidth (distance lx ly))
    
    
    (if (= str "门") 
        (progn 
            (setq width_ *wall_menkuan)
            (setq duo_ *wall_menduo)
            (setq sty_ *Door_style))
        
        (progn
            (setq width_ *wall_chuangkuan)
            (setq duo_ *wall_chuangduo)
            (setq sty_ *Window_style)))
        
    
 
    (if (> (+ width_ duo_) wallwidth) 
        (progn
            (setq width_ (- wallwidth duo_))
            (if (= str "门")
                (setq *wall_menkuan width_)
                (setq *wall_chuangkuan width_))))
            
        
    
    
    (while (= pt1 nil)
     (prompt (strcat "\n" 
                     str
                     "宽：<"
                     (rtos width_ 2 0)
                     ">;   "
                     "递进：<"
                     (rtos duo_ 2 0)
                     ">;   "
                     str
                     "型：["
                     (nth 1 (assoc sty_ style))
                     "]"))
                
        
     (initget 1 "Width sTep Style  ")
     (setq pt1 (getkword "\n宽度【W】 / 递进【T】 / 换型【S】 ／ < 插入 >:"))
     (cond
         ((= pt1 "Width") (setwdwidth_ str))
         ((= pt1 "sTep") (setwdstep_ str))
         ((= pt1 "Style") (changestyle))
         ((= pt1 "")
          (if (= str "门")
            (setdoor width_)
            (setwindow))
          (DB_dis_WD (nth 2 (assoc sty_ style))))
         (t (setq pt1 nil)))))

(defun setdoor(menkuan)
    
    ;(if (= *wall_chuangduo nil) (setq *wall_chuangduo 500))
    ;(if (= *wall_chuangkuan nil) (setq *wall_chuangkuan 1500))
    


    (if (= *Door_style 4)
        (if (>= menkuan 2400) 
            (setq doorname "DB_Door3-2.dwg")
            (if (>= menkuan 1800) 
                (setq doorname "DB_Door3-3.dwg")
                (if (<= menkuan 800)
                    (setq doorname "DB_Door3-4.dwg")
                    (setq doorname "DB_Door3.dwg"))))
                
                
               
        
        (setq doorname (nth 2 (assoc *Door_style *Door_list)))))
    


(defun setwindow()

    
    (setq doorname (nth 2 (assoc *Window_style *Window_list))))
    

(defun c:crm(/ x_ y_ xy_ wallang doorname dz_ m)           ;插入门
    (setdoor *wall_menkuan)
    (command "undo" "be")
    (setq dz_ 0)
    (open_wd "门" *Door_list)
    (setq m 0)

    
    (if (/= x_ nil)
        (progn
            (setdoor *wall_menkuan)
            (while (< m y_)
                (DB_closesnap)
                (if (and (/= *Door_style 4) (/= *Door_style 7) (/= *Door_style 8))
                    (setq xy_ "")
                    (setq xy_ (/ xy_ 200.0)))
                (command "INSERT" 
                    doorname  ;块名
                    x_                                    ;插入点
                    (/ *wall_menkuan 1000.0)  xy_        ;比例
                    (atof (angtos wallang 0 4)))           ;角度
                (DB_releasesnap)
                (DB_movelayer "me" (entlast))
                (setq x_ (polar x_ wallang (+ dz_ *wall_menkuan)))
                (setq m (+ 1 m)))))
                
            ;(DB_make_block5 doorname x_ "me" wallang (/ *wall_menkuan 1000.0))))

    
    (command "undo" "e")
    (princ))
(defun c:dtm(/ doorname x_ xy_ wallang)
    (command "UNDO" "be")
    (DB_closesnap)
    (setq xy_ 1)
    (setdoor *wall_menkuan)
    (dtopen_wd "门" *Door_list)

    (DB_releasesnap)
    (command "undo" "e")
    (princ))    
(defun c:dtc(/ doorname x_ xy_ wallang)
    (command "UNDO" "be")
    (DB_closesnap)
    (setq xy_ 1)
    (setwindow)
    (dtopen_wd "窗" *Window_list)

    (DB_releasesnap)
    (command "undo" "e")
    (princ))          

(defun c:gmk(/ ss ssl ed w__ width_)  
     
    (prompt "\n选择修改门窗的宽度：")
    (setq ss (ssname (ssget ":S" '((0 . "INSERT") (8 . "建筑-门窗*"))) 0))
    (setq ssl (ENTGET ss))
    (setq width_ (* (cdr (assoc 41 ssl)) 1000))
    (prompt (strcat "\n新的宽度：<" (rtos width_ 2 0)))
    (setq w__ (getint ">:"))
    (if (/= w__ nil)
        (setq width_ w__))
    
    (setq ed (/ width_ 1000.0))
    (setq ssl (subst (cons 41 ed) (assoc 41 ssl) ssl))
    (if (wcmatch (cdr (assoc 8 ssl)) "*门")
        (setq ssl (subst (cons 42 ed) (assoc 42 ssl) ssl)))
    
    (setq ssl (subst (cons 43 ed) (assoc 43 ssl) ssl))
    (entmod ssl)
    (princ)
    (princ))
    

(defun c:gml(/ ss ssl doorname width_ ang_ pt hou_ lay_ str sty_)
     
    (DB_closesnap)
    (command "undo" "be")
    (prompt "\n选择修改类型的门窗：")
    (setq ss (ssname (ssget ":S" '((0 . "INSERT") (8 . "建筑-门窗*"))) 0))
    (setq ssl (ENTGET ss))
    (setq width_ (cdr (assoc 41 ssl))
          ang_ (cdr (assoc 50 ssl))
          hou_ (cdr (assoc 42 ssl))
          pt (cdr (assoc 10 ssl))
          lay_ (cdr (assoc 8 ssl)))
    (if (wcmatch (DB_get_realname ss) "DB_Door*,Door*")
        (progn
            (setdoor (* width_ 1000))
            (setq str "门")
            (setq sty_ *Door_style)
            (changestyle)   
            (setdoor (* width_ 1000)))
        
        (progn
            (setwindow)
            (setq str "窗")
            (setq sty_ *Window_style)
            (changestyle)
            (setwindow)))
        
    
    (entdel ss)
    
    (command "INSERT" 
            doorname  ;块名
            pt                                    ;插入点
            width_  hou_         ;比例
            (atof (angtos ang_ 0 4)))           ;角度
    
    (DB_movelayer lay_ (entlast))
    (command "undo" "e")
    (DB_releasesnap)
    (princ))


(defun c:crc(/ x_ y_ xy_ wallang doorname dz_ m)
    (setwindow)
    (command "undo" "be")
    (setq dz_ 0)
    (open_wd "窗" *Window_list)
    (setq m 0)
    (if (/= x_ nil)
        (progn
            (setwindow)
            (while (< m y_)
                (DB_closesnap)
                (command "INSERT" 
                    doorname  ;块名
                    x_                                    ;插入点
                    (/ *wall_chuangkuan 1000.0)  (/ xy_ 200.0)         ;比例
                    (atof (angtos wallang 0 4)))           ;角度
                (DB_releasesnap)
                (DB_movelayer "wi" (entlast))
                (setq x_ (polar x_ wallang (+ dz_ *wall_chuangkuan)))
                (setq m (+ 1 m)))))
        
    
    (command "undo" "e")
    (princ))


;补插门
(defun c:bcm(/ s1 s2 ss n m px py doorname)
    (prompt "\n选择要插入门的墙洞边线：")
    (prompt "\n")
    (setq s1 nil
          s2 nil)  
  
    (while (= s2 nil)
        (setq ss (ssget '((0 . "LINE") (8 . "建筑-墙体*")))
              n (SSlength ss)
              m 0)
    
        (while (< m n)
            (if (= s1 nil)
                (setq s1 (ssname ss m))
                (setq s2 (ssname ss m)))
            
            (setq m (+ 1 m))))
    (setq px (DB_get_midpoint s1)
          py (DB_get_midpoint s2))

    (setdoor (distance px py))
    (DB_closesnap)
    (command "INSERT" 
        doorname  ;块名
        px                                    ;插入点
        (/ (distance px py) 1000.0) ""     ;比例
        (atof (angtos (angle px py) 0 4)))           ;角度
    (DB_releasesnap)
    (DB_movelayer "me" (entlast))
    (princ))
;补插窗
(defun c:bcc(/ s1 s2 ss n m px py doorname &x &y)
    (prompt "\n选择要插入窗的墙洞边线：")
    (prompt "\n")
    (setq s1 nil
          s2 nil)  
  
    (while (= s2 nil)
        (setq ss (ssget '((0 . "LINE") (8 . "建筑-墙体*")))
              n (SSlength ss)
              m 0)
    
        (while (< m n)
            (if (= s1 nil)
                (setq s1 (ssname ss m))
                (setq s2 (ssname ss m)))
            
            (setq m (+ 1 m))))
    (setq px (DB_get_midpoint s1)
          py (DB_get_midpoint s2))
    (DB_get_pt_2p s1)
    (setwindow)
    (DB_closesnap)
    (command "INSERT" 
        doorname  ;块名
        px                                    ;插入点
        (/ (distance px py) 1000.0) (/ (distance &x &y) 200.0)     ;比例
        (atof (angtos (angle px py) 0 4)))           ;角度
    (DB_releasesnap)
    (DB_movelayer "me" (entlast))
    (princ))
(defun setwindhigh_(/ int_)
    (setq int_ (getint (strcat "\n层高:[" (rtos *lvh 2 0) "]")))
    (if (/= int_ nil) (setq *lvh int_))
    (setq int_ (getint (strcat "\n梁高（结构高度）:[" (rtos *liangh 2 0) "]")))
    (if (/= int_ nil) (setq *liangh int_))
    (if (/= sty_ "门") 
        (progn
            (setq int_ (getint (strcat "\n窗台高:[" (rtos *chuangt 2 0) "]")))
            (if (/= int_ nil) (setq *chuangt int_))
            (setq *chuangh (- *lvh *liangh 50 *chuangt)
                  gaodu_ *chuangh))
            
        
        (setq *menh (- *lvh *liangh 50)
                  gaodu_ *menh))
        
        
    
    
    (setq pt1 nil))


(defun c:mcbh(/ ss ssl gaodu_ width_ ang_ pt hou_ str pt1 sty_ bh_a bh_b)            ;门窗标号
     
    ;(DB_closesnap)
    (command "undo" "be")
    (setq str nil)
    (setq pt1 nil)
    
    
    
    (prompt "\n选择要标注的门窗：")
    (setq ss (ssname (ssget ":S" '((0 . "INSERT") (8 . "建筑-门窗*"))) 0))
    (setq ssl (ENTGET ss))
    (setq width_ (fix (* (cdr (assoc 41 ssl)) 1002))
          ang_ (cdr (assoc 50 ssl))
          hou_ (fix (+ (* (cdr (assoc 42 ssl)) 100.2) *h))
          pt (cdr (assoc 10 ssl)))
    
    (setq gaodu_ *chuangh)
    (if (= (cdr (assoc 8 ssl)) "建筑-门窗-门")
        (setq sty_ "门"
              gaodu_ *menh)
        
        (if (wcmatch (cdr (assoc 2 ssl)) "DB_Window2,Window2")
            (setq sty_ "高窗")
            (setq sty_ "窗")))
        
    
    
    (while (= pt1 nil)
        (prompt (strcat
                 "\n绘图比例： 1:<"
                 (rtos *h 2 0)
                 ">    "
                 sty_
                 "高：【"
                 (rtos gaodu_ 2 0)
                 "】   防火门窗：【"
                 *fire
                 "】"))
        
        (initget 1 "Sethigh Disp Fire  ")
        (setq pt1 (getint (strcat "\n绘图比例【D】 / 计算高度【S】 / 防火门窗【F】 / 输入高度<" (rtos gaodu_ 2 0) ">:")))
        
        (cond
            ((= pt1 "Disp") (DB_set_scale_pt1))
            ((= pt1 "Sethigh") (setwindhigh_))
            ((= pt1 "Fire") 
             (alert "选择门窗防火等级：\n\n【0】  --------    普通门窗
                                      \n【1】  --------    甲级
                                      \n【2】  --------    乙级
                                      \n【3】  --------    丙级 
                                      ")
             (cond 
                ((= *fire "甲") (setq cs 1))
                ((= *fire "乙") (setq cs 2))
                ((= *fire "丙") (setq cs 3))
                ((= *fire "非") (setq cs 0)))
             (setq cs (DB_get_input "输入防火门类型" (rtos cs 2 0)))
             (cond
                ((= cs "1") (setq *fire "甲"))
                ((= cs "2") (setq *fire "乙"))
                ((= cs "3") (setq *fire "丙"))
                (t (setq *fire "非")))
             (setq pt1 nil))
            
            ((= pt1 "") nil)
            (T 
                (if (/= pt1 nil)
                    (setq gaodu_ pt1)
                    (setq pt1 nil)))))
                
            
        
    
    (if (and (> ang_ (/ pi 2)) (<= ang_ (* (/ pi 2) 3)))
        (setq pt (polar (polar pt ang_ (/ width_ 2)) (- ang_ (/ pi 2)) hou_) 
              ang_ (+ ang_ pi))       
        
        (setq pt (polar (polar pt ang_ (/ width_ 2)) (+ ang_ (/ pi 2)) hou_)))
    
    (if (= *fire "非")
        (setq str "")
        (setq str "F"))
    
    (if (= sty_ "高窗")
        (setq str (strcat str "GC"))
        (if (= sty_ "门")
            (setq str (strcat str "M"))
            (setq str (strcat str "C"))))
        
    
    (if (/= *fire "非")
        (setq str (strcat str *fire)))
    
    (setq bh_a (rtos (fix (/ (abs width_) 100)) 2 0))
    (if (wcmatch bh_a "#") (setq bh_a (strcat "0" bh_a)))
    (setq bh_b (rtos (fix (/ (abs gaodu_) 100)) 2 0))
    (if (wcmatch bh_b "#") (setq bh_b (strcat "0" bh_b)))
    (setq str (strcat str bh_a bh_b))

    (if (> *zl (abs (- (rem (abs width_) 100) 50)))
        (setq str (strcat str "a"))
        (if (> (rem (abs width_) 100) 20)
            (setq str (strcat str "c"))))

    (if (> *zl (abs (- (rem (abs gaodu_) 100) 50)))
        (setq str (strcat str "b"))
        (if (> (rem (abs gaodu_) 100) 20)
            (setq str (strcat str "d"))))
        
    
    (if (= sty_ "门")
        (setq *menh gaodu_)
        (setq *chuangh gaodu_))
    
    ;; (command "INSERT" 
    ;;     "MCstring.dwg"
    ;;     pt
    ;;     *h
    ;;     ""
    ;;     (angtos ang_ 0 4) 
    ;;     str
    ;; )
    ;(DB_movelayer "mc" (entlast))
    (DB_make_text8 pt str "DB文字" (* *h 3.5) 0.8 ang_ "mc" 1)
    (command "undo" "e")
    ;(DB_releasesnap)
    (princ))

;门窗洞口
(defun mcdk (str / dkstr h_ w_)
    (if (> (strlen str) 4)
        (progn
            ;(setq dkstr (vl-string-trim "M" (vl-string-trim "F" str)))
            (setq dkstr (vl-string-left-trim "FMLCG" str))
            (if (wcmatch dkstr "甲*") (setq dkstr (substr dkstr 3)))
            (if (wcmatch dkstr "乙*") (setq dkstr (substr dkstr 3)))
            (if (wcmatch dkstr "丙*") (setq dkstr (substr dkstr 3)))
            (setq w_ (substr dkstr 1 2))
            (if (wcmatch w_ "0#")
                (setq w_ (substr w_ 2)))
            
            (setq h_ (substr dkstr 3 2))
            (if (wcmatch h_ "0#")
                (setq h_ (substr h_ 2)))
            
            (if (wcmatch dkstr "*a*")
                (setq w_ (strcat w_ "50"))
                (if (wcmatch dkstr "*c*")
                    (setq w_ (strcat w_ "**"))
                    (setq w_ (strcat w_ "00"))))
                
            
            (if (wcmatch dkstr "*b")
                (setq h_ (strcat h_ "50"))
                (if (wcmatch dkstr "*d")
                    (setq h_ (strcat h_ "**"))
                    (setq h_ (strcat h_ "00"))))
                
            
            (setq dkstr (strcat w_ "X" h_)))
        
        (setq dkstr "******"))
    
    dkstr)

;添加门窗
(defun tjmc (name mclist / mcnmb newlist)
    (if (/= mclist nil)
        (if  (/= (assoc name mclist) nil)
            (progn
                (setq mcnmb (+ (nth 1 (assoc name mclist)) 1))
                (setq newlist (vl-remove (assoc name mclist) mclist))
                (setq newlist (cons (list name mcnmb (mcdk name)) newlist)))
            
            (setq newlist (cons (list name 1 (mcdk name)) mclist)))
        
        (setq newlist (list)
              newlist (cons (list name 1 (mcdk name)) newlist)))
        
    
    newlist)

;门窗列表
(defun c:mctj(/ list_m list_c ss n m s1 mcn i pt1 pt2)
   
    (setq ss (ssget '((0 . "TEXT") (8 . "建筑-标注-门窗"))))
    
    (setq n (sslength ss)
          m 0)   
    
    (if (> n 0)
        (while (< m n)
            (setq s1 (ssname ss m))
            ;(setq mcn (cdr (assoc 1 (entget (entnext (cdr (assoc -1 (ENTGET s1))))))))
            (setq mcn (cdr (assoc 1 (entget s1))))
            (if (wcmatch mcn "*M*")
                (setq list_m (tjmc mcn list_m))
                (setq list_c (tjmc mcn list_c)))
            
            (setq m (+ m 1))))
        
    
    (setq pt1 nil)
    (while (= pt1 nil)
        (initget "Disp")
        (setq pt1 (getpoint "\n显示比例【D】/ 放置点："))
        (cond
            ((= pt1 "Disp") (DB_set_scale_pt1))
            (t nil)))
        
    
    ;(DB_closesnap)
    (DB_make_midtext4 (DB_offset_pt pt1 42 2.5) "门 窗 表" (* *h 1.5 3.5) "wz")
    ;(DB_movelayer "wz" (entlast))
    (DB_line3 pt1 (DB_offset_pt pt1 84 0) "wz")
    (setq pt2 (DB_offset_pt pt1 5 -4))
    (DB_offset_text pt2 0 0 "类型")
    (DB_offset_text pt2 14 0 "设计编号")
    (DB_offset_text pt2 35 0 "洞口尺寸(mm)")
    (DB_offset_text pt2 51 0 "数量")
    (DB_offset_text pt2 67 0 "备注")
    (DB_line3 (DB_offset_pt pt1 0 -5) (DB_offset_pt pt1 84 -5) "wz")
    (setq pt2 (DB_offset_pt pt1 10 -10))
    (foreach i list_m
        (DB_offset_text pt2 9 1 (nth 0 i))
        (DB_offset_text pt2 30 1 (nth 2 i))
        (DB_offset_text pt2 46 1 (rtos (nth 1 i) 2 0))
        (DB_line3 pt2 (DB_offset_pt pt2 74 0) "wz")
        (setq pt2 (DB_offset_pt pt2 0 -5)))
    
    (DB_line3 (DB_offset_pt pt2 -10 5) (DB_offset_pt pt2 0 5) "wz")
    (if (/= list_m nil)
        (DB_offset_text pt1 5 (- -4 (* (+ (length list_m) 1) 2.5)) "门"))
    
    (foreach i list_c
        (DB_offset_text pt2 9 1 (nth 0 i))
        (DB_offset_text pt2 30 1 (nth 2 i))
        (DB_offset_text pt2 46 1 (rtos (nth 1 i) 2 0))
        (DB_line3 pt2 (DB_offset_pt pt2 74 0) "wz")
        (setq pt2 (DB_offset_pt pt2 0 -5)))
    
    (if (/= list_c nil) 
        (DB_offset_text pt2 -5 (+ 6 (* (- (length list_c) 1) 2.5)) "窗"))
    
    (DB_line3 (DB_offset_pt pt2 -10 5) (DB_offset_pt pt2 0 5) "wz")
    (DB_line3 pt1 (DB_offset_pt pt2 -10 5) "wz")
    (DB_line3 (DB_offset_pt pt1 10 0) (DB_offset_pt pt2 0 5) "wz")
    (DB_line3 (DB_offset_pt pt1 28 0) (DB_offset_pt pt2 18 5) "wz")
    (DB_line3 (DB_offset_pt pt1 52 0) (DB_offset_pt pt2 42 5) "wz")
    (DB_line3 (DB_offset_pt pt1 60 0) (DB_offset_pt pt2 50 5) "wz")
    (DB_line3 (DB_offset_pt pt1 84 0) (DB_offset_pt pt2 74 5) "wz")
    (if (DB_yesorno "是否输出为文件" nil)
        (DB_write_file "w&d.xls" (append (list (list "门") (list "编号" "数量" "尺寸")) list_m (list (list "窗") (list "编号" "数量" "尺寸")) list_c) t))
    (princ)
    (princ))
    ;(DB_releasesnap)
;计算门窗门洞
(defun mendong_( mc / ssl width_ ang_ pt pt2 s1 s2 &x &y s1x s1y s2x s2y &pt1 &pt2)
    (setq ssl (ENTGET mc))
    (setq width_ (* (cdr (assoc 41 ssl)) 1000)
          ang_ (cdr (assoc 50 ssl))
          pt (cdr (assoc 10 ssl)))
    (if (or (wcmatch (DB_get_realname mc) "DB_Door*,Door*") (wcmatch (DB_get_realname mc) "DB_Window*,Window*"))
        (progn
            (setq pt2 (polar pt ang_ width_))

            (setq s1 (getwall_ pt))
            (setq s2 (getwall_ pt2))
            (if (and s1 s2)
                (progn
                    (DB_get_pt_2p s1)
                    (DB_array_2pt &x &y)
                    (setq s1x &pt1
                            s1y &pt2)
                    
                    (DB_get_pt_2p s2)
                    (DB_array_2pt &x &y)
                    (setq s2x &pt1
                            s2y &pt2)
                    (if (and (< (abs (- (angle s1x s1y) (angle s2x s2y))) *zl)
                            (< (abs (- (distance s1x s1y) (distance s2x s2y))) *zl))
                        (list s1 s2 s1x s1y s2x s2y)
                        nil))
                nil))
        nil))
            
(defun c:scmc(/ ss m n s0 ps nm xm)
    (DB_closesnap)
    (setq nm 0
          xm 0)
    (command "undo" "be")
    (prompt "\n选择删除的门窗：")
    (setq ss (ssget '((0 . "INSERT") (8 . "建筑-门窗*"))))
    (if ss
        (progn
            (setq m 0
                  n (sslength ss))
            (while (< m n)
                (setq s0 (ssname ss m))
                (setq ps (mendong_ s0))
                (entdel s0)
                (if ps
                    (progn           
                        (entdel (nth 0 ps))
                        (entdel (nth 1 ps))
                        (if (= (buxian_ (nth 2 ps) (nth 3 ps) (nth 4 ps) (nth 5 ps)) nil)
                            (progn
                                (entdel (nth 0 ps))
                                (entdel (nth 1 ps))
                                (setq xm (+ xm 1)))
                            (setq nm (+ nm 1))))
                    (setq xm (+ xm 1)))
                (setq m (+ m 1)))))
    (prompt (strcat "\n删除" (rtos nm 2 0) "个门窗。"))
    (if (> xm 0)
        (prompt (strcat "有" (rtos xm 2 0) "个门窗没有自动修补墙洞，需要手动修补。")))
    (command "undo" "e")
    (DB_releasesnap)
    (princ)(princ))

(defun c:kc (/ pt1 pt2 &x1 &x2 &y1 &y2 doorname)
   
  (command "undo" "be")
  (setq pt1 (getpoint "\n选取想要开窗的起点："))
  (setq pt2 (getpoint pt1 "\n选取想要开窗的终点："))

  (if (kaidong_ pt1 pt2)
    (progn
        (setwindow)
        (DB_closesnap)
        (command "INSERT" 
                doorname  ;块名
                (getmid &x1 &x2)                                    ;插入点
                (/ (distance &x1 &y1) 1000.0)  (/ (distance &x1 &x2) 200.0)         ;比例
                (atof (angtos (angle &x1 &y1) 0 4)))           ;角度
        (DB_releasesnap)
        (DB_movelayer "wi" (entlast))
        (prompt "\n开窗成功!"))
    (prompt "\n没有选取墙！"))
  
  (command "undo" "e")
  (princ)
  (princ))

(defun c:km (/ pt1 pt2 &x1 &x2 &y1 &y2 doorname)
   
  (command "undo" "be")
  (setq pt1 (getpoint "\n选取想要开门的起点："))
  (setq pt2 (getpoint pt1 "\n选取想要开门的终点："))

  (if (kaidong_ pt1 pt2)
    (progn
        (setdoor (distance &x1 &x2))
        (DB_closesnap)
        (command "INSERT" 
                doorname  ;块名
                (getmid &x1 &x2)                                    ;插入点
                (/ (distance &x1 &y1) 1000.0) ""                  ;比例
                (atof (angtos (angle &x1 &y1) 0 4)))           ;角度
        (DB_releasesnap)
        (DB_movelayer "me" (entlast))
        (prompt "\n开门成功!"))
    (prompt "\n没有选取墙！"))
  
  (command "undo" "e")
  (princ)
  (princ))
(defun mcdb(nm menkuan)
    (cond
        ((wcmatch nm "*002,*004,*011,*012") (setq doorname (nth 2 (assoc 2 *Door_list))))              ;双扇
        ((wcmatch nm "*001,*009,*003,*010") (setq doorname (nth 2 (assoc 1 *Door_list))))              ;单扇
        ((wcmatch nm "*122,*114,*228") (setq doorname (nth 2 (assoc 5 *Door_list))))              ;半开单扇
        ((wcmatch nm "*116,*231,*120") (setq doorname (nth 2 (assoc 6 *Door_list))))              ;半开双扇
        ((wcmatch nm "*222,*223,*221,*224,*226,*225") (setq doorname (nth 2 (assoc 3 *Door_list))))              ;子母
        ((wcmatch nm "*127,*128") (setq doorname (nth 2 (assoc 7 *Door_list))))              ;电梯
        ((wcmatch nm "*131,*129,*130,*132,*134,*135,*138") (if (>= menkuan 2400) 
                                                            (setq doorname "DB_Door3-2.dwg")
                                                            (if (>= menkuan 1800) 
                                                                (setq doorname "DB_Door3-3.dwg")
                                                                (if (<= menkuan 800)
                                                                    (setq doorname "DB_Door3-4.dwg")
                                                                    (setq doorname "DB_Door3.dwg")))))
        (t (setq doorname (nth 2 (assoc 1 *Door_list))))))
    
(defun c:hmc (/ ss m1 ang kd hd doorname)
  (prompt "\n选择要替换的门窗：")
  (prompt "\n")
  (setq ss (ssname (ssget ":S" '((0 . "INSERT") (8 . "建筑-门窗*,WINDOW,建筑-防火门窗*"))) 0))
  (setq m1 (DB_get_ent ss 10))
  (setq kd (DB_get_ent ss 41))
  (setq hd (DB_get_ent ss 42))
  (setq ang (+ pi (DB_get_ent ss 50)))
  (if (and (wcmatch (DB_get_realname ss) "Door*,Window*,DB_Door*,DB_Window*") (< kd 100))
    (prompt "\n已经是DB门窗。")
    (progn
      (setq m1 (polar m1 ang (- 0 (/ kd 2))))
      (if (wcmatch (DB_get_realname ss) "*Do*")
        (progn
          (mcdb (DB_get_realname ss) kd)
          (DB_closesnap)
          (command "INSERT" 
              doorname  ;块名
              m1                                    ;插入点
              (/ kd 1000.0)  (/ hd 1000.0)         ;比例
              (atof (angtos ang 0 4)))           ;角度
          (DB_releasesnap)
          (DB_movelayer "me" (entlast)))
        (progn
          (setwindow)
          (DB_closesnap)
          (command "INSERT" 
              doorname  ;块名
              m1                                    ;插入点
              (/ kd 1000.0)  (/ hd 200.0)         ;比例
              (atof (angtos ang 0 4)))           ;角度
          (DB_releasesnap)
          (DB_movelayer "wi" (entlast))))
      
      (entdel ss))))
