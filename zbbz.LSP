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
;坐标标注命令
(defun c:zbbz (/ pt0 pt1 pt1x pt1y sca__ space snap_)
  (DB_closesnap)
  (setvar "cmdecho" 0)
  (setq space (getvar "CTAB"))

  (if (/= space "Model")
    (command "_.mspace"))
  (setq snap_ nil)
  (setq pt1 nil)
  
  (princ (strcat "\n显示比例:  1:"
          (rtos *h 2 0)
          ";  测量比例:"
          (rtos *sca_ 2 3)
          "."))
    
  (while (= pt1 nil)
    (initget 1 "Disp Scale  ")
    (setq pt1 (getkword "\n显示比例【D】 / 测量比例【S】 / < 开始标注 >: "))
    (cond
      ((= pt1 "Disp") (DB_set_scale_pt1))
      ((= pt1 "Scale") (DB_set_unit_pt1))
      ((= pt1 "") (setq pt1 t))
      (T (setq pt1 t))))
  (setq pt1 nil)
  (princ "\n<左键>点击标注坐标  <右键>实时捕捉(默认为自动捕捉到附近端点或交叉点)  <空格>退出")
  (while (= pt1 nil)
    (DB_dis_zb "ArchPos.dwg"))
    
         
        ;; (setq pt0 (trans pt1 1 0))

        ;; (setq pt1x (rtos (* (cadr pt0) *sca_) 2 3)
        ;;  pt1y (rtos (* (car pt0) *sca_) 2 3))
        
        ;; (setq pt1x (strcat "X=" pt1x)
        ;;  pt1y (strcat "Y=" pt1y))
        


        ;(command "INSERT" "ArchPos.dwg" pt1 *h "" "" pt1x pt1y)
        
      
              ;cond
            ;while
  (DB_releasesnap)
  (princ))

;坐标修正命令
(defun c:zbxz(/ ss sp n m s1 sx sy px py nx ny pt space pt1 ox oy ot)
   
  (setq space (getvar "CTAB"))

  (if (/= space "Model")
    (command "_.mspace"))
  
  (setq pt1 nil)
  (prompt "\n选择要修正的坐标标注：")
  (setq ss (ssget '((0 . "INSERT"))))
  (setq sp (ssadd)
        n (SSlength ss)
        m 0)
  
  (while (< m n)
    (setq s1 (ssname ss m))
    (if (= (DB_get_realname s1) "ArchPos")
      (setq sp (ssadd s1 sp)))
    
    (setq m (+ m 1)))
  
  (if (> (SSlength sp) 0)
    (progn
      (while (= pt1 nil)
        (princ (strcat "\n显示比例:  1:"
                (rtos *h 2 0)
                ";  测量比例:"
                (rtos *sca_ 2 3)
                "."))
          
        
        (initget 1 "Disp Scale  ")
        (setq pt1 (entsel "\n显示比例【D】 / 测量比例【S】 / < 参考坐标 >: "))
        (cond
          ((= pt1 "Disp") (DB_set_scale_pt1))
          ((= pt1 "Scale") (DB_set_unit_pt1))
          ((= pt1 "") (setq ox 0 oy 0))
          (t
            (setq ot (car pt1))
            (if (= (DB_get_realname ot) "ArchPos")
              (setq sx (entnext (cdr (assoc -1 (ENTGET ot))))
                    sy (entnext (cdr (assoc -1 (ENTGET sx))))
                    ox (- (atof (vl-string-left-trim "X=" (cdr (assoc 1 (entget sx))))) (* (cadr (DB_get_pt_1p ot)) *sca_))
                    oy (- (atof (vl-string-left-trim "Y=" (cdr (assoc 1 (entget sy))))) (* (car (DB_get_pt_1p ot)) *sca_)))
              
              (setq pt1 nil)))))
            
          
        
      
      (setq m 0
            n (SSlength sp))
      
      (while (< m n)
        (setq s1 (ssname ss m))
        (setq sx (entnext (cdr (assoc -1 (ENTGET s1))))
              sy (entnext (cdr (assoc -1 (ENTGET sx))))
              pt (DB_get_pt_1p s1))
        
        (setq px (strcat "X=" (rtos (+ (* (cadr pt) *sca_) ox) 2 3)))
        (setq py (strcat "Y=" (rtos (+ (* (car pt) *sca_) oy) 2 3)))
        (DB_change_ent sx 1 px)
        (DB_change_ent sy 1 py)
        (setq m (+ m 1)))))
      
    
  
  (princ)
  (princ))

;;标高标注命令
(defun c:bgbz (/ evachange old_err pt1 snap_)
  (DB_closesnap)
  (setvar "cmdecho" 0)
  (if (= *lasteva nil)
    (setq *lasteva 0))
  (if (= *eva_ nil)
    (setq *eva_ 0))
  (if (= *evast nil)
    (setq *evast "空心"))
  
  (if (= *ctn nil)
    (setq *ctn "关"))
  
  (setq  pt1 nil)
  (if (= *h nil)
    (setq *h 500))
  (setq snap_ nil)
  
  (while t
    (setq pt1 nil)
    (while (= pt1 nil)
      (princ (strcat "\n显示比例:  1:"
              (rtos *h 2 0)
              ";  标高:"
              (rtos *eva_ 2 2)
              ";  连续标注:"
              *ctn
              ";  类型:"
              *evast
              "."))
       
      
      (initget 1 "Evevation Disp Continue Style  ")
      (setq pt1
       (getkword
         "\n显示比例【D】 / 标高【E】 / 连续标注【C】 / 类型【S】 / < 开始标注 >: "))
       
      
      (cond
       ((= pt1 "Evevation") (DB_set_eva_pt1))
       ((= pt1 "Disp") (DB_set_scale_pt1))
       ((= pt1 "Continue")
        (if (= *ctn "开")
          (setq *ctn "关")
          (setq *ctn "开"))
   
        (setq pt1 nil))
  
       ((= pt1 "Style")
        (if (= *evast "空心")
          (setq *evast "实心")
          (setq *evast "空心"))
   
        (setq pt1 nil))
  
       ((= pt1 "") (setq pt1 T))))
    (setq pt1 nil)
    (princ "\n<左键>点击标注坐标  <右键>切换捕捉  <空格>退出") 
    (while (= pt1 nil)
      (DB_dis_bg)))
  
  (DB_releasesnap)
  (princ)(princ))

;;面积计算命令
(defun c:mjjs (/ SS1 n m pt1 s1 aaaa total nums addsub mit ssl numc_ str)
  
   
   
  (setq addsub "正")
  (setq mit "MM")
  (princ "\n选择数字或闭合线：")
  (SETQ SS1 (SSGET))
  (setq n (SSlength ss1))
  (SETQ m 0)
          ;(setq nm 0)
  (setq aaaa 0)
  (setq total 0)
  (setq pt1 nil)
  (while (< m n)
    (setq s1 (ssname ss1 m))
    (SETQ SSL (ENTGET S1))
    ;;  (IF (/= (CDR (ASSOC 0 SSL)) "LWPOLYLINE")
    ;;     (progn
    ;;     (command "change" s1 "" "p" "la" "0" "")
    ;;     (setq nm0 (+ 1 nm0))
    ;;     )
    ;;  )
    ;;  (if (= (cdr (assoc 70  SSL)) 0)
    ;;     (progn
    ;;     (command "change" s1 "" "p" "la" "0" "")
    ;;     (setq nm (+ 1 nm))
    ;;     )
    ;; )
    (if  (or (= (CDR (ASSOC 0 SSL)) "CIRCLE")
          (and (= (CDR (ASSOC 0 SSL)) "LWPOLYLINE")
            (/= (cdr (assoc 70 SSL)) 0)))
          
        
      (progn
        (command "area" "o" s1)
        (setq aaaa (/ (getvar "area") 1000000))
        (setq total (+ total aaaa))))
      
    
    (if  (and (= (cdr (assoc 0 SSL)) "INSERT") (wcmatch (CDR (ASSOC 2 SSL)) "AreaString,MCString,SingleString"))
      (progn
        (setq aaaa
              (atof
               (cdr (assoc 1 (entget (entnext (cdr (assoc -1 SSL))))))))
              
                ;获取属性
       (setq total (+ total aaaa))))
      
    
    (if  (= (cdr (assoc 0 SSL)) "TEXT")
      (progn
        (setq nums (cdr (assoc 1 SSL)))
        (if (wcmatch nums "*m")
          (setq nums (substr nums 1 (- (strlen nums) 1))))
        
        (setq aaaa (atof nums))
        (setq total (+ total aaaa))))
      
    
    (setq m (+ 1 m)))
  

  ;;  (if (or (/= nm 0) (/= nm0 0))
  ;;       (progn 
  ;;       (princ "\n[")
  ;;       (princ nm0)
  ;;       (princ "] Objects are not POLYLINE, [")
  ;;       (PRINC nm)
  ;;       (princ "] Objects are not closed POLYLINE.") 
  ;;       )
  ;;      (PROGN
  ;;      (setq m 0)
  ;;      (setq total 0)
  ;;       (while (< m n )
  ;;         (setq s1 (ssname ss1 m))
  ;;         (command "area" "e" s1)
  ;;         (setq aaaa (getvar "area"))
  ;;         (setq total ( + total aaaa))
  ;;         (setq m (+ 1 m))
  ;;       )
  ;;      (princ "\n Total area is ")
  ;;      (princ total)
  ;;      )
  ;;  )
  (if (null *num_scale)
    (setq *num_scale 1.0))
  (if (/= total 0)
    (progn
      (while (= pt1 nil)
       (princ (strcat "\n显示比例:  1:<"
                (rtos *h 2 0)
                "> ; ["
                addsub
                "]  ["
                mit
                "]."))
         
  
       (initget "Disp Sub Unit sCale")
       (setq
         pt1 (getpoint
              (strcat "\n显示比例【D】 / [正/负]【S】 / 单位【U】 / 放大系数【C】<" (rtos *num_scale 2 2) ">: ")))
        
  
       (cond
         ((= pt1 "Disp") (DB_set_scale_pt1))
         ((= pt1 "Sub")
          (if (= addsub "正")
            (setq addsub "负")
            (setq addsub "正"))
     
          (setq pt1 nil))
    
         ((= pt1 "Unit")
          (if (= mit "MM")
            (setq mit "M")
            (setq mit "MM"))
     
          (setq pt1 nil))
         ((= pt1 "sCale")
          (prompt "\n放大系数：<")
          (prompt (rtos *num_scale 2 2))
          (setq numc_ (getreal ">:"))
          (if (/= numc_ nil)
            (setq *num_scale numc_))
          (setq pt1 nil))
      
         (T nil)))
          ;cond
                ;while
      (if (= addsub "负")
       (setq total (- 0 total)))
      
      (if (= mit "M")
       (setq total (* total 1000000)))
      (if (/= *num_scale 1.0)
        (setq str (strcat (rtos total 2 2) "x" (rtos *num_scale 2 2) "=" (rtos (* total *num_scale) 2 2)))
        (setq str (rtos total 2 2)))
      (progn
       (command "INSERT"
          "AreaString.dwg"
          pt1
          *h
          ""
          ""
          str)
  
       (DB_movelayer "mj" (entlast)))))
      
    
  
  (SETQ SS1 NiL)

  (princ))

;移动标高命令
(defun c:yd (/ pt1 pt2 SS1 n m dis ed dot s1 org eva_t pp) 
   
   
  (setq pt1 nil)
  (setq pt2 nil
        pp 0)
  
  (command "undo" "be")
  (princ "\n选择要移动的标高：")
  (SETQ SS1 (SSGET '((0 . "INSERT"))))
  (setq  n (SSlength ss1)
   m 0)
  
  (setq pt1 (getpoint "\n起点: "))
  (setq pt2 (getpoint pt1 "\n终点: "))
  (if (and (/= pt1 nil) (/= pt2 nil))
    (progn
      (setq dis (- (* (cadr pt2) 0.001) (* (cadr pt1) 0.001)))
      (while (< m n)
        (setq s1 (ssname ss1 m))
        (SETQ SSL (ENTGET S1))
        (if (or (= (DB_get_realname s1) "EvaPos2") (= (DB_get_realname s1) "ElevaPos"))
          (progn
            (setq ed (entget (entnext (cdr (assoc -1 SSL)))))

            (if (or  (= (CDR (ASSOC 2 ed)) "%%P0.000")
                 (= (CDR (ASSOC 2 ed)) "%%P0.00"))
                
              (progn
                (if  (= (CDR (ASSOC 2 ed)) "%%P0.00")
                  (setq dot 2)
                  (setq dot 3))
                
                (if (wcmatch (cdr (assoc 1 ed)) "*=*")
                  (setq org (substr (cdr (assoc 1 ed)) (+ (vl-string-position (ascii "=") (cdr (assoc 1 ed))) 2))
                        pp 1)
                  (if (wcmatch (cdr (assoc 1 ed)) "*（结构）") 
                   (setq org (cdr (assoc 1 ed))
                     pp 2)
                
                   (setq org (cdr (assoc 1 ed))
                           pp 0)))
                    
                  
                
                ;获取属性
                ;; (if (= org "%%p0.000") (set aaaa 0) (setq aaaa (atof org)))
                (setq *eva_ (atof (rtos (+ (atof org) dis) 2 3)))
                (if  (= *eva_ 0)
                  (setq eva_t (CDR (ASSOC 2 ed)))
                  (setq eva_t (rtos *eva_ 2 dot)))
                
                (if (= pp 1)
                  (setq eva_t (strcat (CDR (ASSOC 2 ed)) "=" eva_t)))
                
               (if (= pp 2)
                 (setq eva_t (strcat eva_t "（结构）")))
              
               (setq ed (subst (cons 1 eva_t) (assoc 1 ed) ed))
               (entmod ed)
               (DB_moveblock3 s1 pt1 pt2)))))
              
            
          
        
        (setq m (+ 1 m)))))
      
    
  
  (SETQ SS1 NiL)
  (command "undo" "e")

  (princ))

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
;打断于点命令
(defun c:dd (/ SS1 pt1 s1 pt1 tp yn SSL)  
   
   
  (princ "\n选择要打断的线：")
  (SETQ SS1 (ssget "_:S+."))
  (setq s1 (ssname ss1 0))
  (SETQ SSL (ENTGET S1))
  (setq tp (CDR (ASSOC 0 SSL)))
  (setq yn (member tp '("ARC" "LWPOLYLINE" "LINE" "RAY" "XLINE")))
          ; (if (or (= (CDR (ASSOC 0 SSL)) "ARC") (or (= (CDR (ASSOC 0 SSL)) "LWPOLYLINE") (= (CDR (ASSOC 0 SSL)) "LINE") ))
  (if (/= yn nil)
    (progn
      (setq pt1 nil)
      (setq pt1 (getpoint "<打断于>:"))
      (command "break" s1 pt1 "@")
      (princ))))
    
  
(defun c:per( / ss pt1)
  (setq ss (ssname (ssget ":S") 0))
  (setq pt1 (getpoint))
  (DB_line2 pt1 (DB_get_per_ent ss pt1))
  (princ))
;改变比例命令
(defun c:gbbl(/ h__ ss ssl s1 m n h_old ins_p bname)
   
  (prompt "\n选择要改变比例的图元：")
  (setq ss (ssget '((0 . "INSERT"))))
  (prompt (strcat "\n新的比例：1:<" (rtos *h 2 0)))
  (setq h__ (getint ">:"))
  (if (/= h__ nil)
    (setq *h h__))
  
  (setq n (SSlength ss)
        m 0)
  
  (command "undo" "be")
  (DB_closesnap)
  (while (< m n)
    (setq s1 (ssname ss m))
    (SETQ SSL (ENTGET S1))
    (setq bname (DB_get_realname s1))
    (if (wcmatch bname "ArchPos,EvaPos2,ElevaPos,Podu,quan1,AreaString,quan2,quan3,SingleString,MCString")
      (progn
        (setq h_old (cdr (assoc 42 ssl)))
        (setq ins_p (cdr (assoc 10 ssl)))
        (command "scale" s1 "" ins_p (/ *h (* h_old 1.0)))))
      
    
    (setq m (+ 1 m)))
  
  (command "undo" "e")
  (DB_releasesnap)
  (princ)
  (princ))

;设置输入文字内容 全局变量*String_single (setstring_) 会设置变量pt1为nil
(defun setstring_(/ str)
  (setq str (DB_get_input "输入文字" *String_single))
  (if (/= str nil)
    (setq *String_single str))
  
  (setq pt1 nil))

;插入文字命令
(defun c:crwz(/ pt1)
   
  (if (= *String_single nil)
    (setq *String_single "文字"))
  
 

  (while (= pt1 nil)
    (princ (strcat "\n显示比例:  1:"
            (rtos *h 2 0)
            ";  文字内容:"
            *String_single))
       
      
    (initget 1 "Disp String  ")
    (setq pt1
     (getpoint
       "\n显示比例【D】 / 文字内容【S】 / < 点击标注 >: "))
       
      
    (cond
     ((= pt1 "Disp") (DB_set_scale_pt1))
     ((= pt1 "String")
      (setstring_))
  
     ((= pt1 "") (princ) (princ))
     (T 
      ;; (command "INSERT" "SingleString.dwg" pt1 *h "" "" *String_single) 
      ;; (DB_movelayer "wz" (entlast))
         (DB_make_text2 pt1 *String_single)
         (setq pt1 nil)))))
                ;cond
      
        
  

;转换文字命令
(defun c:zhwz(/ n m h__ ss s1 ssl textc pt lay ang)       
   
  (prompt "\n选择要转换的单行文字：")
  (setq ss (ssget '((0 . "TEXT"))))
  (prompt (strcat "\n文字比例：1:<" (rtos *h 2 0)))
  (setq h__ (getint ">:"))
  (if (/= h__ nil)
    (setq *h h__))
  
  (setq n (SSlength ss)
        m 0)
  
  ;(command "undo" "be")
  (while (< m n)
    (setq s1 (ssname ss m))
    (SETQ SSL (ENTGET S1))
    ;; (setq pt (DB_get_pt_1p s1))
    ;; (setq textc (cdr (assoc 1 ssl)))
    ;; (setq lay (cdr (assoc 8 ssl)))
    ;; (setq ang (atof (angtos (cdr (assoc 50 ssl)) 0 4)))
    ;; (command "INSERT" "SingleString.dwg" pt *h "" ang textc)
    ;; (entdel s1)
    ;; (DB_movelayer lay (entlast))
    (DB_change_ent s1 7 "DB文字")
    (DB_change_ent s1 40 (* *h 3.5))
    (DB_change_ent s1 41 0.8)
    (setq m (+ 1 m)))
  
  ;(command "undo" "e")
  (princ)
  (princ))

;设置递增数字的起始值 全局变量 *num (setcont_) 会设置变量pt1为nil
(defun setcont_ (/ cont__)
  (princ "\n计数起始值 <")
  (princ *num)
  (setq cont__ (getint ">: "))

  (if (/= cont__ nil)
    (setq *num cont__))
  

  (setq pt1 nil))

;设置文字前缀 全局变量 *prefix (setpre_) 会设置变量pt1为nil
(defun setpre_ (/ cont__)
  (princ "\n前缀 <")
  (princ *prefix)
  (setq cont__ (getstring ">: "))

  (if (/= cont__ nil)
    (setq *prefix cont__)
    (setq *prefix ""))
  

  (setq pt1 nil))

;设置文字后缀 全局变量 *suffix (setsuf_) 会设置变量pt1为nil
(defun setsuf_ (/ cont__)
  (princ "\n后缀 <")
  (princ *suffix)
  (setq cont__ (getstring ">: "))

  (if (/= cont__ nil)
    (setq *suffix cont__)
    (setq *suffix ""))
  

  (setq pt1 nil))

;递增数字命令
(defun c:dzsz(/ pt1 num)
   
  (setq pt1 nil)


  (while t
    (while (= pt1 nil)
      (princ (strcat "\n显示比例： 1:"
              (rtos *h 2 0)
              "；  文字： < "
              (strcat *prefix (rtos *num 2 0) *suffix)
              " >"))      
        
      
      (initget "Disp Prefix Suffix Number")
      (setq pt1 (getpoint "\n显示比例【D】 / 前缀【P】 / 后缀【S】 / 起始值【N】 < 放置点 >:"))
      (cond
        ((= pt1 "Disp") (DB_set_scale_pt1))
        ((= pt1 "Prefix") (setpre_))
        ((= pt1 "Suffix") (setsuf_))
        ((= pt1 "Number") (setcont_))
        (t 
          (setq num (strcat *prefix (rtos *num 2 0) *suffix))
          (DB_make_text2 pt1 num)
          ;(DB_movelayer "wz" (entlast))
          (setq *num (+ 1 *num))
          (setq pt1 nil)))))
        
      
      
    
  
  (princ))

;坐标归零命令
(defun c:zbgl(/ ss m n s1 ssl x y e nm)
   
  (prompt "\n选择要归零坐标的图元：")
  (setq ss (ssget))
  (setq m 0
        nm 0
        n (SSlength ss))
  
  (prompt "\n正在清理，请等待……\n")
  (while (< m n)
    (setq s1 (ssname ss m))
    (setq ssl (entget s1))
    (setq x (CDR (ASSOC 10 SSL)))
    (setq y (CDR (ASSOC 11 SSL)))
    (setq e (CDR (ASSOC 38 SSL)))
    (if (/= e nil)
      (progn
        (if (/= e 0)
          (setq nm (+ 1 nm)))
        (DB_change_ent s1 38 0)
        (DB_change_ent s1 39 0))
      
      (if (/= y nil)
        (progn
          (if (or (/= (caddr y) 0) (/= (caddr x) 0))
            (setq nm (+ 1 nm)))
          (DB_change_ent s1 11 (list (car y) (cadr y) 0))
          (DB_change_ent s1 10 (list (car x) (cadr x) 0)))
        
        (progn
          (if (/= (caddr x) 0)
            (setq nm (+ 1 nm)))
          (DB_change_ent s1 10 (list (car x) (cadr x) 0)))))
      
    (DB_progress m n)
    (setq m (+ 1 m)))
  
  (prompt "\n完成。")
  (prompt (strcat "\n共计修正" (rtos nm 2 0) "个图元。"))
  (princ)
  (princ))

;角度修正命令
(defun c:jdxz( / ss n m s1 s0 newang)     
       
  (prompt "\n选择要角度修正的图元：")
  (setq ss (ssget))

  (setq *fixang (getreal (strcat "\n新设定的角度：<" (rtos *fixang 2 2) ">")))
  (if (= *fixang nil) 
    (setq *fixang 0))
  
  (setq n (SSlength ss)
        m 0
        newang (angtof (rtos *fixang 2 2) 3))
  
  (while (< m n)
    (setq s1 (ssname ss m))
    ;(DB_change_ent s1 50 newang)
    (if (wcmatch (CDR (ASSOC 2 (entget s1))) "quan1")
      (progn
        (setq s0 (entnext (cdr (assoc -1 (ENTGET s1)))))
        (DB_change_ent s1 50 newang)
        (DB_change_ent s0 50 newang)))
      
    
    (setq m (+ 1 m)))
  
  (princ)
  (princ))

;连接文字命令
(defun c:ljwz(/ n m h__ ss s1 ssl textc texta pt lay sl)           
  ;(command "undo" "be")
  (prompt "\n选择要连接的单行文字：")
  (setq ss (ssget '((-4 . "<OR") 
                    (0 . "TEXT") 
                    (-4 . "<AND") 
                    (0 . "INSERT") 
                    (2 . "SingleString,MCString") 
                    (-4 . "AND>") 
                    (-4 . "OR>"))))
                  
                
    
  (prompt (strcat "\n文字比例：1:<" (rtos *h 2 0)))
  (setq h__ (getint ">:"))
  (if (/= h__ nil)
    (setq *h h__))
  
  (setq n (SSlength ss)
        m 0
        texta ""
        textc nil)
  
  (setq sl (list (car (DB_get_pt_1p (ssname ss (- n 1))))))
  (if (> n 1)
    (progn
      (setq m 1)
      (while (< m n)
       (setq m (+ 1 m))
       (setq sl (cons (car (DB_get_pt_1p (ssname ss (- n m)))) sl)))))
      
      
    
  
  (setq sl (vl-sort-i sl '<))
  
  (setq m 0)
  (setq pt (DB_get_pt_1p (ssname ss (nth 0 sl))))
  (setq lay (cdr (assoc 8 (ENTGET (ssname ss (nth 0 sl))))))
  (while (< m n)
    (setq s1 (ssname ss (nth m sl)))
    (SETQ SSL (ENTGET S1))
    (if (= (cdr (assoc 0 ssl)) "TEXT") 
      (setq textc (cdr (assoc 1 ssl)))
      (setq textc (cdr (assoc 1 (entget (entnext (cdr (assoc -1 SSL))))))))
    
    (setq texta (strcat texta textc))
    (entdel s1)
    (setq m (+ 1 m)))
  
  ;; (command "INSERT" "SingleString.dwg" pt *h "" "" texta)
  ;; (DB_movelayer lay (entlast))
  (DB_make_text3 pt texta lay)
  ;(command "undo" "e")
  (princ)
  (princ))

;设置选择过滤开关 全局变量*s_o为类型*s_l为图层 (setslct_)
(defun setslct_(/)
  (if (DB_yesorno "是否选择同类型" t)
    (setq *s_o "开")
    (setq *s_o "关"))
  (if (DB_yesorno "是否选择同图层" t)
    (setq *s_l "开")
    (setq *s_l "关"))  
  (setq pt1 nil))

;快速选择命令
(defun c:qs(/ ss1 pt1 gl ss sp)         
   
  (setq gl nil)
  (setq pt1 nil)
  (setq sp nil)

  (while (= pt1 nil) 
    (initget "Setting  ")
    (setq pt1 (entsel (strcat "\n选择参考图元【设置[S]】：类型[" *s_o "]  图层[" *s_l "]")))
    (cond
      ((= pt1 "Setting") (setslct_))
      ((= pt1 "") nil)
      (t (setq ss1 (entget (car pt1)))
         (if (= *s_o "开")
           (progn
             (setq gl (cons (cons 0 (cdr (assoc 0 ss1))) gl))
             (if (= (cdr (assoc 0 ss1)) "INSERT") 
              (setq gl (cons (cons 2 (cdr (assoc 2 ss1))) gl)))))
              
            
          
         (if (= *s_l "开")
           (setq gl (cons (cons 8 (cdr (assoc 8 ss1))) gl)))
          
         (setq ss (ssget gl))
         (if (= sp nil)
           (setq sp ss)
           (progn
              (command "select" ss sp "")
              (setq sp (ssget "P"))))
            
          
         
         (setq pt1 nil
               gl nil))))
          
       
    
  
  (sssetfirst nil sp)  
  (princ))

;生成图名 (xietuname 字符串 坐标点)
(defun xietuname(tum pt / zb zc ptx pty pt0)
  ;(command "UNDO" "BE")
  (DB_make_text4 pt tum (* *h 2 3.5) "tm")
  ;(DB_movelayer "tm" (entlast))
  (setq zb (list 
            '(0 . "TEXT")
            (cons 1 tum)
            '(7 . "DB文字")
            (cons 40 (* *h 2.5))
            '(41 . 0.8)
            '(50 . 0)
            '(51 . 0)))
            
        ;; zb (cons (cons 51 0) zb)
        ;; zb (cons (cons 41 0.8) zb)
        ;; zb (cons (cons 40 (* *h 2)) zb)
        ;; zb (cons (cons 7 "文字") zb)
        ;; zb (cons (cons 1 *tuname) zb) 
        ;; zb (cons (cons 0 "TEXT") zb)    

  
  ;(setq zc (* (- (car (cadr (textbox zb))) (car (car (textbox zb)))) 3))
  (setq zc (* (caadr (textbox zb)) 3))
  (setq ptx (polar pt (* pi 1.5) (* *h 1.4))
        pty (polar ptx 0 zc)
        pt0 (polar pt 0 (+ zc (* *h 3))))
  
  ;; (command "PLINE" ptx "w" (* *h 0.7) "" pty "")
  ;; (DB_movelayer "tm" (entlast))
  (DB_pline3 (list ptx pty) (* *h 0.7) "tm")
  (DB_make_text4 pt0 (strcat "1:" (rtos *h 2 0)) (* *h 1.5 3.5) "tm"))
  ;(DB_movelayer "tm" (entlast))
  ;(command "UNDO" "E")


;插入图名命令
(defun c:crtm(/ pt1)
   
  (if (= *tuname nil)
    (setq *tuname "总平面图"))
  (setq pt1 (DB_get_input "输入图名" *tuname))
  (if (/= pt1 "") (setq *tuname pt1))
  (setq pt1 nil)
  (while (= pt1 nil)
    (initget "Disp")
    (setq pt1 (getpoint "\n显示比例【D】/ 放置点："))
    (cond
      ((= pt1 "Disp") (DB_set_scale_pt1))
      (t 
        (if (/= pt1 nil)
          (xietuname *tuname pt1)))))
        
      
    
  
  (princ)
  (princ))
;图层归零
(defun c:tt()
  (setvar "CLAYER" "0")
  (princ "\n当前图层设置为：0")
  (princ))
;当前图层
(defun c:tc(/ ss s1 newtc)
  (prompt "\n选择图元设置当前图层：")
  (setq ss (ssget "_+.:E:S"))
  (setq s1 (ssname ss 0))
  (setq newtc (cdr (assoc 8 (entget s1))))
  (setvar "CLAYER" newtc)
  (princ "\n当前图层设置为：")
  (princ newtc)
  (princ))
;放置当前
(defun c:tg(/ ss s1 layer m n)
  ;(command "undo" "be")
  ;; (entmake (list '(0 . "LINE") '(10 0 0 0) '(11 1.0 1.0 1.0)))
  ;; (setq layer (cdr (assoc 8 (entget (entlast)))))
  ;; (entdel (entlast))
  (setq layer (getvar "CLAYER"))
  (setq ss (ssget "i"))
  (sssetfirst nil)
  (if (= ss nil)
    (progn
      (prompt (strcat "\n选择要放到当前图层<" layer ">的图元："))
      (setq ss (ssget))))
  (setq m 0
        n (SSlength ss))
  
  (while (< m n)
    (setq s1 (ssname ss m))
    (DB_change_ent s1 8 layer)
    (setq m (+ 1 m)))
  (prompt (strcat "\n已将<" (rtos n 2 0) ">个图元置于图层<" layer ">。"))
  ;(command "undo" "e")
  (princ)
  (princ))
;修正图名命令
(defun c:xztm(/ pt1 s1 ssl textc pto ss)
   
  (setq pt1 nil)
  (while (= pt1 nil)
    (initget "Disp  ")
    (setq pt1 (entsel "\n图纸比例【D】 / 选择图名："))
    (cond
      ((= pt1 "Disp") (DB_set_scale_pt1))
      ((= pt1 "") nil)
      (t
        (setq s1 (car pt1))
        (SETQ SSL (ENTGET S1))
        (setq pto (cdr (assoc 10 ssl)))
        (if (= (cdr (assoc 0 ssl)) "TEXT") 
          (setq textc (cdr (assoc 1 ssl)))
          (setq textc (cdr (assoc 1 (entget (entnext (cdr (assoc -1 SSL)))))))))))
        
      
    
  
  (if (/= textc nil)
    (progn
      (entdel s1)
      (setq ss (ssget "c" (polar pto (* pi 0.5) *h) (polar (polar pto (* pi 1.5) (* *h 2)) 0 (* *h 40)) '((0 . "*TEXT,LWPOLYLINE,INSERT,LINE"))))
      (command "_.Erase" ss "")
      (xietuname textc pto)))
    
  
  (princ)
  (princ))

;; ;文字编辑
;; (defun c:ad( / ss s1 ssl)
;;   (SETQ SS (ssget "_:S+." '((0 . "TEXT,MTEXT,INSERT,ATTDEF"))))
;;   (setq s1 (ssname ss 0))
;;   (SETQ SSL (ENTGET S1))
;;   (if (= (cdr (assoc 0 ssl)) "INSERT")
;;     (command "attedit" s1 pause)
;;     (command "textedit" s1 pause)
;;   )
;; )

;块名切换
(defun c:kmqh(/ ss sn sr pt)
  (prompt "\n选择块或替换块名的文字：")
  (setq ss (ssname (ssget "_+.:E:S") 0))
  (if (= (DB_get_ent ss 0) "TEXT")
    (progn
      (setq sn (DB_get_ent ss 1))
      (prompt "\n选择图块：")
      (setq sr (DB_get_ent (ssname (ssget "_+.:E:S") 0) 2))
      (command "RENAME" "b" sr sn)))
  (if (= (DB_get_ent ss 0) "INSERT")
    (progn
      (setq pt (getpoint "\n放置块名称："))
      (setq sn (DB_get_ent ss 2))
      (DB_make_midtext2 pt sn)))
  (princ)
  (princ))
;指标计算
(defun c:zbjs(/ ss n m i s1 nm tlist mlist rpt
                zb_rjl      ;容积率坐标
                zb_md       ;建筑密度坐标
                zb_lhl      ;绿化率坐标
                mj_yd       ;总用地面积
                mj_zj       ;总建筑面积
                mj_ds       ;地上建筑面积
                ;mj_dx       ;地下建筑面积
                mj_jr       ;计容面积
                mj_rjl      ;容积率
                mj_zd       ;占地面积
                mj_md       ;建筑密度
                mj_lh       ;绿化面积
                mj_lhl)     ;绿化率  

  (prompt "\n选择要计算的指标表：")
  (setq tlist nil
        mlist nil)
  (setq ss (ssget)
        m 0
        n (SSlength ss))
  (while (< m n)
    (setq s1 (ssname ss m))
    (if (= (DB_get_ent s1 0) "TEXT")
      (setq nm (DB_get_ent s1 1))
      (if (and (= (DB_get_ent s1 0) "INSERT") (wcmatch (DB_get_ent s1 2) "SingleString,MCString,AreaString"))
        (setq nm (DB_get_ent (entnext (DB_get_ent s1 -1)) 1))
        (setq nm nil)))
    (if nm
      (setq tlist (append tlist (list (list nm s1)))))  
    (setq m (1+ m)))
  (setq n (length tlist)
        m 0)
  (while (< m n)
    (setq i (1+ m))
    (while (< i n)
      (if (< (abs (- (cadr (DB_get_pt_1p (nth 1 (nth i tlist)))) (cadr (DB_get_pt_1p (nth 1 (nth m tlist)))))) *h)
        (if (wcmatch (nth 0 (nth i tlist)) "##*,#.#*")
          (setq mlist (append mlist (list (append (nth m tlist) (nth i tlist)))))
          (setq mlist (append mlist (list (append (nth i tlist) (nth m tlist)))))))
      (setq i (1+ i)))
    (setq m (1+ m)))
  (setq n (length mlist)
        m 0)
  (while (< m n)
    (setq nm (nth 0 (nth m mlist)))
    (cond
      ((wcmatch nm "总用地面积*") (setq mj_yd (atof (nth 2 (nth m mlist)))))
      ((wcmatch nm "总建筑面积*") (setq mj_zj (atof (nth 2 (nth m mlist)))))
      ((wcmatch nm "地上建筑面积*") (setq mj_ds (atof (nth 2 (nth m mlist)))))
      ;((wcmatch nm "地下建筑面积*") (setq mj_dx (atof (nth 2 (nth m mlist)))))
      ((wcmatch nm "计容*,地上计容*") (setq mj_jr (atof (nth 2 (nth m mlist)))))
      ((wcmatch nm "绿化面积*,绿地面积*") (setq mj_lh (atof (nth 2 (nth m mlist)))))
      ((wcmatch nm "建筑基底面积*,建筑占地面积*") (setq mj_zd (atof (nth 2 (nth m mlist)))))
      ((wcmatch nm "容积率*") (setq zb_rjl (nth 3 (nth m mlist))))
      ((wcmatch nm "绿化率*,绿地率*") (setq zb_lhl (nth 3 (nth m mlist))))
      ((wcmatch nm "建筑密度*,覆盖率*") (setq zb_md (nth 3 (nth m mlist)))))
    (setq m (1+ m)))
  (if (<= mj_yd 0)
    (setq rpt "未能获取用地面积，无法计算。")
    (progn
      (if (and mj_jr (> mj_jr 0))
        (setq mj_rjl (/ mj_jr mj_yd)
              rpt (strcat "以计容面积[" (rtos mj_jr 2 2) "]平米/总用地面积[" (rtos mj_yd 2 2) "]计算获得容积率为：<" (rtos mj_rjl 2 2) ">"))
        (if (and mj_ds (> mj_ds 0))
          (setq mj_rjl (/ mj_ds mj_yd)
                rpt (strcat "以地上面积[" (rtos mj_ds 2 2) "]平米/总用地面积[" (rtos mj_yd 2 2) "]计算获得容积率为：<" (rtos mj_rjl 2 2) ">"))
          (if (and mj_zj (> mj_zj 0))
            (setq mj_rjl (/ mj_zj mj_yd)
                  rpt (strcat "以总建筑面积[" (rtos mj_zj 2 2) "]平米/总用地面积[" (rtos mj_yd 2 2) "]计算获得容积率为：<" (rtos mj_rjl 2 2) ">"))
            (setq rpt "未能获取计容面积，无法计算容积率。"))))
      (if (and mj_zd (> mj_zd 0))
        (setq mj_md (* 100 (/ mj_zd mj_yd))
              rpt (strcat rpt "\n以占地面积[" (rtos mj_zd 2 2) "]平米/总用地面积[" (rtos mj_yd 2 2) "]计算获得建筑密度为：<" (rtos mj_md 2 2) "%>"))
        (setq rpt (strcat rpt "\n未能获取占地面积，无法计算建筑密度。")))
      (if (and mj_lh (> mj_lh 0))
        (setq mj_lhl (* 100 (/ mj_lh mj_yd))
              rpt (strcat rpt "\n以绿地面积[" (rtos mj_zd 2 2) "]平米/总用地面积[" (rtos mj_yd 2 2) "]计算获得绿地率为：<" (rtos mj_lhl 2 2) "%>"))
        (setq rpt (strcat rpt "\n未能获取绿地面积，无法计算绿地率。")))))
  (if (and mj_rjl zb_rjl)
    (if (= (DB_get_ent zb_rjl 0) "TEXT")
      (DB_change_ent zb_rjl 1 (rtos mj_rjl 2 2))
      (DB_change_ent (entnext (DB_get_ent zb_rjl -1)) 1 (rtos mj_rjl 2 2)))
    (setq rpt (strcat rpt "\n未能修改容积率。需手动添加或修改。")))
  (if (and mj_md zb_md)
    (if (= (DB_get_ent zb_md 0) "TEXT")
      (DB_change_ent zb_md 1 (strcat (rtos mj_md 2 2) "%"))
      (DB_change_ent (entnext (DB_get_ent zb_md -1)) 1 (strcat (rtos mj_md 2 2) "%")))
    (setq rpt (strcat rpt "\n未能修改建筑密度。需手动添加或修改。")))
  (if (and mj_lhl zb_lhl)
    (if (= (DB_get_ent zb_rjl 0) "TEXT")
      (DB_change_ent zb_lhl 1 (strcat (rtos mj_lhl 2 2) "%"))
      (DB_change_ent (entnext (DB_get_ent zb_lhl -1)) 1 (strcat (rtos mj_lhl 2 2) "%")))
    (setq rpt (strcat rpt "\n未能修改绿地率率。需手动添加或修改。")))
  (alert rpt)
  (princ))
        
;计算楼梯扶手
(defun DB_jsfs(pt1 pt2 tx ty / p1 p2 p3 p4 p5 p5 p7 p8 fi ang pls m n sp1 sp2 sp3 sp4 sp5 sp6 sp7 sp8 so)
  (if (< tx 0)
    (setq fi -1)
    (setq fi 1))
  (setq p1 (polar pt1 (/ pi 2) (+ ty 900))
        p2 (polar pt2 (/ pi 2) 900)
        p3 (polar p1 0 (* fi 80 -1))
        p4 (polar p2 0 (* fi 80))
        p5 (polar p3 (/ pi 2) -50)
        p6 (polar p4 (/ pi 2) -50)
        ang (angle p1 p2))
  (setq p7 (polar p1 (- ang (/ pi 2 fi)) 50)
        p8 (polar p2 (- ang (/ pi 2 fi)) 50)
        p7 (inters p5 (polar p5 0 100) p7 p8 nil)
        p8 (inters p6 (polar p6 0 100) p7 p8 nil))
  (setq pls (list (list p1 p2 p4 p6 p8 p7 p5 p3 p1)))
  (setq n (/ (- (car pt2) (car pt1)) tx)
        m 0)
  (setq so (polar pt1 (/ pi 2) ty))
  (while (< m n)
    
    (setq sp1 (polar so 0 (- (/ tx 3) 15))
          sp2 (polar sp1 0 30)
          sp3 (polar sp1 0 (/ tx 3))
          sp4 (polar sp3 0 30)
          sp5 (inters sp1 (polar sp1 (/ pi 2) 1000) p7 p8 nil)
          sp6 (inters sp2 (polar sp2 (/ pi 2) 1000) p7 p8 nil)
          sp7 (inters sp3 (polar sp3 (/ pi 2) 1000) p7 p8 nil)
          sp8 (inters sp4 (polar sp4 (/ pi 2) 1000) p7 p8 nil)
          pls (append pls (list (list sp1 sp5)
                                (list sp2 sp6)
                                (list sp3 sp7)
                                (list sp4 sp8))))
    (setq so (polar (polar so 0 tx) (/ pi 2 ) ty))
    (setq m (1+ m))
    pls))
  


;画楼梯梯段剖面
(defun c:ltpd(/ ss px py tm n m tx ty ix iy fi pd ot tc st ang)
  
  (setq px nil)
  (setq py nil)
  (while (= py nil)
    (prompt "\n选择梯段上下范围：")
    (SETQ ss (ssget '((0 . "XLINE,LINE,LWPOLYLINE"))))
    (if (> (SSlength ss) 1)
      (setq py (abs (- (cadr (DB_get_pt_1p (ssname ss 1))) (cadr (DB_get_pt_1p (ssname ss 0)))))
            iy (min (cadr (DB_get_pt_1p (ssname ss 0))) (cadr (DB_get_pt_1p (ssname ss 1)))))))
  (while (= px nil)    
    (prompt "\n选择梯段水平范围：")
    (SETQ ss (ssget '((0 . "XLINE,LINE,LWPOLYLINE"))))
    (if (> (SSlength ss) 1)
      (setq px (- (car (DB_get_pt_1p (ssname ss 1))) (car (DB_get_pt_1p (ssname ss 0))))
            ix (car (DB_get_pt_1p (ssname ss 0))))))
  (setq tm (getint "\n踏步数："))
  (setq n (- tm 1))
  (setq tx (/ px n)
        ty (/ py tm))
  (if (< tx 0)
    (setq fi -1)
    (setq fi 1))
  (setq pd (DB_yesorno "是否剖切" nil))
  (setq ot (list ix iy))
  (if pd
    (DB_draw_lines (DB_jsfs ot (DB_offset_pt ot (/ px *h) (/ py *h)) tx ty) "pmfs")
    (DB_draw_lines (DB_jsfs ot (DB_offset_pt ot (/ px *h) (/ py *h)) tx ty) "pmbm"))
  (if pd 
    (setq tc "pmmc")
    (setq tc "pmkx"))
  (setq ot (list (- ix (* fi 20)) iy))
  (setq m 1)
  (htd_)
  (if pd
    (progn
      (setq tc "pmpd")
      (setq ot (list ix (- iy 50)))
      (setq m 1)
      (htd_)))
  (setq ot (list ix (- iy 50))
        st (list (+ ix px) (- (+ iy py) ty 50)))
  (setq ang (angle ot st))
  (if (> ang (* pi 0.5))
    (setq ang (+ ang (* pi 0.5)))
    (setq ang (- ang (* pi 0.5))))
  (setq ot (polar ot ang 100)
        st (polar st ang 100))
  (if pd
    (setq tc "pmpd")
    (setq tc "pmkx"))
  (DB_line3 ot st tc)
  (princ)
  (princ))
  
(defun htd_(/)
  (setq m 0)
  (while (< m (+ n 1))
    (setq st (polar ot (/ pi 2) ty))
    (DB_line3 ot st tc)
    (setq ot (polar st 0 tx))
    (DB_line3 st ot tc)
    (setq m (+ m 1))))  
      
;多段线标注
(defun c:cd(/ ss pt1 ss pt0 &x &y ptx pty lens ang ptl m n &pt1 &pt2 lnsx)
  (while (= pt1 nil)
    (setq ptx nil
          pty nil
          lens 0)
    (initget "Disp Scale  ")
    (setq pt1 (entsel (strcat "\n选择要标注的多段线【显示比例[D]<1:" (rtos *h 2 0) ">】 【测量比例[S]<" (rtos *sca_ 2 3) ">】：")))
    (cond
      ((= pt1 "Disp") (DB_set_scale_pt1))
      ((= pt1 "Scale") (DB_set_unit_pt1))
      ((= pt1 "") nil)
      (t (setq ss (car pt1)
               pt0 (cadr pt1)
               sl (cdr (assoc 0 (entget ss))))
         (if (= sl "LINE")
          (progn
            (DB_get_pt_2p ss)
            (setq ptx &x
                  pty &y)
            (setq lens (distance ptx pty))))
         (if (= sl "LWPOLYLINE")
          (progn 
            (setq ptl (mapcar 'cdr (vl-remove-if-not '(lambda (x) (= (car x) 10)) (entget ss)))
                  m 1
                  n (length ptl))
            (while (< m n)
              (setq &x (nth (- m 1) ptl)
                    &y (nth m ptl))
              (if (< (- (+ (distance &x pt0) (distance &y pt0)) (distance &x &y)) (* *zl 10))
                (setq ptx &x 
                      pty &y))
              (setq lens (+ (distance &x &y) lens)
                    m (+ m 1)))))
         (if (/= lens 0)
          (progn
            (DB_array_2pt ptx pty)
            (if (and (< 10000 lens) (= *sca_ 0.001))
              (setq lnsx (strcat "L=" (rtos (* lens *sca_) 2 2) "M"))
              (setq lnsx (strcat "L=" (rtos lens 2 0))))
            (setq ang (angle &pt1 &pt2))
            (if (> ang (/ pi 2))
              (setq ang (- ang pi)))
            (setq pt0 (DB_get_per_point ptx pty pt0 t))
            (DB_make_text8 (polar pt0 (+ ang (/ pi 2)) (* *h 1.5)) lnsx "DB文字" (* *h 3.5) 0.8 ang "cc" 1)))
         (setq pt1 nil))))
  (princ)
  (princ))
          

;设置专业
(defun getzhuanye_(/ pt1_ zhuanye)
  (if (= zhuanye nil)
    (setq zhuanye "建筑"))
  (alert "输入专业名词：\n\n【0】  --------    无
                        \n【1】  --------    建筑
                        \n【2】  --------    结构
                        \n【3】  --------    给排水
                        \n【4】  --------    电气
                        \n【5】  --------    暖通
                        \n【6】  --------    景观
                        \n【7】  --------    园林
                        \n【8】  --------    装饰")
  (setq pt1_ (DB_get_input "输入专业" *tk_zy))
  (cond 
    ((= pt1_ "0") "xx")
    ((= pt1_ "1") (setq zhuanye "建筑"))
    ((= pt1_ "2") (setq zhuanye "结构"))
    ((= pt1_ "3") (setq zhuanye "给排水"))
    ((= pt1_ "4") (setq zhuanye "电气"))
    ((= pt1_ "5") (setq zhuanye "暖通"))
    ((= pt1_ "6") (setq zhuanye "景观"))
    ((= pt1_ "7") (setq zhuanye "园林"))
    ((= pt1_ "8") (setq zhuanye "装饰"))
    (t (setq zhuanye pt1_)))
  (if (= zhuanye nil)
    (setq zhuanye *tk_zx))
  (setq pt1 nil)
  zhuanye)
;设置子项
(defun getzixiang_(/ zixiang)
  (setq zixiang (DB_get_input "输入子项" *tk_zx))
  (if (= zixiang "")
    (setq zixiang "xx"))
  (setq pt1 nil)
  zixiang)
;插入图框标记
(defun c:tkbj(/ pt1 SSL pt2 pta ptb ptc cp tknumber ss s1 tkname n m Ax Ay dic Cx Cy tf tkn)
  (setq pt1 nil)           
  (setq tkname nil)    
  (if (= *tknumber nil)
    (setq *tknumber 1))
  (if (= *tk_zx nil)
    (setq *tk_zx "1#"))
  (if (= *tk_zy nil)
    (setq *tk_zy "建筑"))
  (while (= pt1 nil)
    (princ (strcat "\n显示比例:  <1:"
                   (rtos *h 2 0)
                   ">;  图纸序号:<"
                   (rtos *tknumber 2 0)
                   ">;  专业：["
                   *tk_zy
                   "];  子项：["
                   *tk_zx
                   "]."))
    (initget "Disp Cont Zixiang")
    (setq pt1 (getpoint "\n显示比例【D】 / 图纸序号【C】 / 专业子项【Z】 / 点选打印区域："))
    (cond 
      ((= pt1 "Disp") (DB_set_scale_pt1))
      ((= pt1 "Zixiang") (setq *tk_zy (getzhuanye_)
                               *tk_zx (getzixiang_)))
      ((= pt1 "Cont") (princ "\n当前序号：<")
                      (princ *tknumber)
                      (setq tknumber (getint ">"))
                      (if (/= tknumber nil)
                        (setq *tknumber tknumber))
                      (setq pt1 nil))
      (t 
        (setq pt2 (getcorner pt1 "\n选择打印区域另一个角点："))
        (if (= pt2 nil)
          (setq pt1 nil)))))
  
  (setq cp (db_get_box pt1 pt2)
        pta (car cp)
        ptb (cadr cp)
        ptc (caddr cp))
  (setq ss (ssget "c" (DB_offset_pt pta 5 -5) (DB_offset_pt pta 5 5) '((8 . "建筑-辅助-打印区域"))))
  (if ss
    (command "_.Erase" ss ""))
  (DB_plinebh cp 0 "tk")
  (princ "\n选择图名：")
  (setq ss (ssget '((0 . "TEXT"))))
  (if ss
    (progn
      (setq n (SSlength ss)
            m 0)
      (while (< m n)
        (if tkname
          (setq tkname (strcat tkname "、" (cdr (assoc 1 (entget (ssname ss m))))))
          (setq tkname (cdr (assoc 1 (entget (ssname ss m))))))
        (setq m (+ m 1)))))
  (setq Ax (/ (distance pta ptb) *h)
        Ay (/ (distance ptb ptc) *h))
  (if (> Ax Ay)
    (setq dic "横"
          Cx Ax
          Cy Ay)
    (setq dic "竖"
          Cx Ay
          Cy Ax))
  (setq tf "A4")
  (if (or (> Cx 307) (> Cy 220))
    (setq tf "A3"))
  (if (or (> Cx 430) (> Cy 307))
    (setq tf "A2"))
  (if (or (> Cx 604) (> Cy 430))
    (setq tf "A1"))
  (if (or (> Cx 851) (> Cy 604))
    (setq tf "A0"))
  (if (or (> Cx 1199) (> Cy 851))
    (setq tf "A0+0.25"))
  (if (or (> Cx 1497) (> Cy 851))
    (setq tf "A0+0.5"))
  (setq tf (strcat tf dic))
  (if (= tkname nil)
    (setq tkname "xx"))
  (if (< *tknumber 10) 
    (setq tkn (strcat "0" (rtos *tknumber 2 0)))
    (setq tkn (rtos *tknumber 2 0)))
  (DB_closesnap)
  (command "INSERT" "DB_tukuang.dwg" pta (/ (distance pta ptb) 325.0) "" "" tkname tkn (strcat "1:" (rtos *h 2 0)) tf *tk_zy *tk_zx)
  (DB_movelayer "tk" (entlast))
  (DB_releasesnap)
  (setq *tknumber (+ *tknumber 1))
  (princ)
  (princ))

;批量打印
(defun c:pldy ( / ss m n s1 tksj filename tkA tkbl pt1 hs xsv ptl ptx pty space fenge zy zx filenamef out) 
  ;; (if (wcmatch (getvar "PLATFORM") "Mac*")
  ;;   (progn 
  ;;     (vl-mkdir "PDF")
  ;;     (setq filename "PDF/"))
  ;;   (progn
  ;;     (setq filename (strcat (getvar "DWGPREFIX") "PDF"))
  ;;     (vl-mkdir filename)
  ;;     (setq filename (strcat filename "\\"))))
  (if (= *tk_zx nil)
    (setq *tk_zx "1#"))
  (if (= *tk_zy nil)
    (setq *tk_zy "建筑"))
  (setq filename (DB_open_file "PDF" "d"))
  (alert "选择文件名格式：\n\n【1】  --------    四川标准
                          \n【2】  --------    湖南标准")
  (setq pt1 (DB_get_input "格式标准" "1"))
  (cond
    ((= pt1 "1") (setq fenge "-"))
    ((= pt1 "2") (setq fenge "_"))
    (t (setq fenge "-")))
  (princ "\n选择需要打印的图纸标记：")
  (setq ss (ssget '((0 . "INSERT") (8 . "建筑-辅助-打印区域"))))
  (setq n (SSlength ss)
        m 0)
  (while (< m n)
    (setq s1 (ssname ss m))
    (if (= (DB_get_realname s1) "DB_tukuang")
      (progn
        (setq tksj (DB_tysx s1))
        (if (or (= (nth 4 tksj) nil) (= (nth 5 tksj) nil))
          (setq zy *tk_zy
                zx *tk_zx)
          (setq zy (nth 2 (nth 4 tksj))
                zx (nth 2 (nth 5 tksj))))
        (cond
          ((= fenge "-") (setq filenamef (strcat filename zy fenge zx fenge (nth 2 (nth 1 tksj)) fenge (nth 2 (nth 0 tksj)) ".pdf")))
          ((= fenge "_") (setq filenamef (strcat filename zx fenge zy fenge (nth 2 (nth 1 tksj)) fenge (nth 2 (nth 0 tksj)) ".pdf"))))
        (setq tkA (nth 2 (nth 3 tksj)))
        (setq tkbl (nth 2 (nth 2 tksj)))
        (if (wcmatch tkA "*横")
          (setq hs "l"
                tkA (vl-string-right-trim "横" tkA))
          (setq hs "p"
                tkA (vl-string-right-trim "竖" tkA)))
        (setq xsv (ssname (ssget "c" (DB_offset_pt (DB_get_pt_1p s1) 5 -5) (DB_offset_pt (DB_get_pt_1p s1) 5 5) '((0 . "LWPOLYLINE") (8 . "建筑-辅助-打印区域"))) 0))
        (setq ptl (mapcar 'cdr (vl-remove-if-not '(lambda (x) (= (car x) 10)) (entget xsv))))
        (setq ptx (nth 0 ptl)
              pty (nth 2 ptl))
        (setvar "FILEDIA" 0)
        ;(setvar "cmdecho" 1)
        (setq space (getvar "CTAB"))

        (if (= space "Model")
          (command "-PLOT"
                   "y"
                    ""
                    "DWG To PDF.pc3"
                    tkA
                    "m"
                    hs
                    "n"
                    "w"
                    ptx
                    pty
                    tkbl
                    "c"
                    "y"
                    "Arch.ctb"
                    "y"
                    "a"
                    filenamef
                    "n"
                    "y")
          (command "-PLOT" 
                    "y"
                    ""
                    "DWG To PDF.pc3"
                    tkA
                    "m"
                    hs
                    "n"
                    "w"
                    ptx
                    pty
                    tkbl
                    "c"
                    "y"
                    "Arch.ctb"
                    "y"
                    "n"
                    "n"
                    "n"
                    filenamef
                    "n"
                    "y"))
        (setvar "FILEDIA" 1)))
    (setq m (+ m 1)))
  (if (wcmatch (getvar "PLATFORM") "Mac*")
    (alert (strcat "批量打印完成<" (rtos m 2 0) ">张图纸。\n放置在<文稿/PDF/>。"))
    (alert (strcat "批量打印完成<" (rtos m 2 0) ">张图纸。\n放置在<" (strcat (getvar "DWGPREFIX") "PDF") ">。")))
  
  (princ)
  (princ))
;图纸目录
(defun c:tzml ( / fm ss n m s1 tksj tzlist li pt1 tf date all x)
  (setq tzlist nil)
  (setq all 0)
  (setq fm (DB_open_file "ML.txt" "f"))    
  (if (findfile fm)
    (if (= (DB_yesorno "已存在图纸目录文件，是否覆盖重新统计" nil) nil)
      (setq tzlist (DB_read_file fm))))    
  (princ "\n选择包含的图纸标记：")
  (setq ss (ssget '((0 . "INSERT") (8 . "建筑-辅助-打印区域"))))
  (setq n (SSlength ss)
        m 0)
  (while (< m n)
    (setq s1 (ssname ss m))
    (if (= (DB_get_realname s1) "DB_tukuang")
      (progn
        (setq tksj (DB_tysx s1))
        (if (= (assoc (nth 2 (nth 1 tksj)) tzlist) nil)
          (progn
            (setq tf (nth 2 (nth 3 tksj)))
            (cond 
              ((wcmatch tf "A0+0.5*") (setq tf "A0+1/2"))
              ((wcmatch tf "A0+0.25*") (setq tf "A0+1/4"))
              (t (setq tf (substr tf 1 2))))
            (setq li (list (nth 2 (nth 1 tksj)) (nth 2 (nth 0 tksj)) (nth 2 (nth 2 tksj)) tf))
            (setq tzlist (append tzlist (list li)))))))
    (setq m (+ 1 m)))
  (foreach m tzlist
    (setq n (atoi (nth 0 m)))
    (if (< all n)
      (setq all n)))
  (setq tzlist (vl-sort tzlist (function (lambda (e1 e2)
                                          (< (car e1) (car e2))))))
  (DB_write_file "ML.txt" tzlist nil)
  (if (DB_yesorno "绘制表格" nil)
    (progn
      (setq pt1 nil)
      (setq date (menucmd "M=$(edtime,$(getvar,date), YYYY\".\"M)"))
      (while (= pt1 nil)
        (initget "Disp")
        (setq pt1 (getpoint "\n显示比例【D】/ 放置点："))
        (cond
            ((= pt1 "Disp") (DB_set_scale_pt1))
            (t nil)))
      (DB_make_midtext4 (DB_offset_pt pt1 80 5) "图 纸 目 录" (* *h 3 3.5) "wz")
      (DB_line3 pt1 (DB_offset_pt pt1 160 0) "wz")
      (setq pt2 (DB_offset_pt pt1 5 -4))
      (DB_offset_text pt2 0 0 "序号")
      (DB_offset_text pt2 32 0 "图纸名称")
      (DB_offset_text pt2 65 0 "图号")
      (DB_offset_text pt2 76.5 0 "比例")
      (DB_offset_text pt2 89.5 0 "图幅")
      (DB_offset_text pt2 104.5 0 "出图日期")
      (DB_offset_text pt2 119.5 0 "版本号")
      (DB_offset_text pt2 141 0 "备注")
      (DB_line3 (DB_offset_pt pt1 0 -5) (DB_offset_pt pt1 160 -5) "wz")
      (setq pt2 (DB_offset_pt pt2 0 -5))
      (setq m 0
            n (length tzlist))
      (while (< m n)
        (DB_offset_text pt2 0 0 (vl-princ-to-string (+ 1 m)))
        (DB_offset_text pt2 32 0 (nth 1 (nth m tzlist)))
        (setq x (atoi (nth 0 (nth m tzlist))))
        (if (> x 0)
          (setq x (strcat (rtos x 2 0) "/" (rtos all 2 0)))
          (setq x (nth 0 (nth m tzlist))))
        (DB_offset_text pt2 65 0 x)
        (DB_offset_text pt2 76.5 0 (nth 2 (nth m tzlist)))
        (DB_offset_text pt2 89.5 0 (nth 3 (nth m tzlist)))
        (DB_offset_text pt2 104.5 0 date)
        (DB_line3 (DB_offset_pt pt2 -5 -1) (DB_offset_pt pt2 155 -1) "wz")
        (setq pt2 (DB_offset_pt pt2 0 -5))
        (setq m (+ 1 m)))
      (setq pt2 (DB_offset_pt pt2 -5 4))
      (DB_line3 pt1 pt2 "wz")
      (DB_line3 (DB_offset_pt pt1 10 0) (DB_offset_pt pt2 10 0) "wz")
      (DB_line3 (DB_offset_pt pt1 64 0) (DB_offset_pt pt2 64 0) "wz")
      (DB_line3 (DB_offset_pt pt1 76 0) (DB_offset_pt pt2 76 0) "wz")
      (DB_line3 (DB_offset_pt pt1 87 0) (DB_offset_pt pt2 87 0) "wz")
      (DB_line3 (DB_offset_pt pt1 102 0) (DB_offset_pt pt2 102 0) "wz")
      (DB_line3 (DB_offset_pt pt1 117 0) (DB_offset_pt pt2 117 0) "wz")
      (DB_line3 (DB_offset_pt pt1 132 0) (DB_offset_pt pt2 132 0) "wz")
      (DB_line3 (DB_offset_pt pt1 160 0) (DB_offset_pt pt2 160 0) "wz")))
  (princ)
  (princ))

      

      

