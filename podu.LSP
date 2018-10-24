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
(defun c:pd (/     h__   ss1   n     pt1   pt2   m     ed    SSL
             py1   py2   pt    py    mirr  podua podui podul inpt
             poduis   poduls)
              ;坡度标注
  ;; (setvar "cmdecho" 0)
  ;; (setvar "unitmode" 0)
  ;; (setvar "MIRRTEXT" 0)
  ;; (setvar "ATTREQ" 1) 
  ;; (setvar "ATTDIA" 0) 
   
  (DB_closesnap)
  (setq mirr 1)
  (DB_init_scale 500)
  (princ "\n选择2个标高:")
  (princ "\n")
  (setq pt1 nil)
  (setq pt2 nil)
  (while (= pt2 nil)
    (SETQ ss1 (SSGET))
    (setq n (SSlength ss1))
    (setq m 0)
    (while (< m n)
      (setq s1 (ssname ss1 m))
      (SETQ SSL (ENTGET S1))
      (if (= (CDR (ASSOC 2 SSL)) "ElevaPos")
       (progn
         (setq ed (entget (entnext (cdr (assoc -1 SSL)))))
         (setq py (atof (cdr (assoc 1 ed))))
         (setq pt (cdr (ASSOC 10 SSL)))
         (if (/= py 0)
           (setpt_))))
    
  
      
      (setq m (+ m 1))))
    
  
  (setq ss1 nil)
  (princ "\n选择路段中心线（直接回车按直线处理）：")
  (SETQ SS1 (ssget "_:S+."))
  (if (= ss1 nil)
    (setq podul (* (distance pt1 pt2) *sca_))
    (progn 
      (setq s1 (ssname ss1 0))
      (command "_lengthen" s1 "" "" "")
      (setq podul (* (getvar "PERIMETER") *sca_))))
    
  
    
  
  (setq podui (* (/ (abs (- py1 py2)) podul) 100))
  (if (> py1 py2)
    (setq podua (angle pt1 pt2))
    (setq podua (angle pt2 pt1)))
  
  (setq podua (* (/ podua pi) 180))
  (if (and (> podua 90) (<= podua 270))
    (progn
      (setq podua (- 540 podua))
      (setq mirr -1)))
    
  

  (setq  inpt (list (/ (+ (car pt1) (car pt2)) 2)
               (/ (+ (cadr pt1) (cadr pt2)) 2)
               0))
       
  
  (setq poduis (strcat (strcat "i=" (rtos podui 2 2)) "%"))
  (setq poduls (strcat (strcat "L=" (rtos podul 2 2)) "m"))
  (command "INSERT" "Podu.dwg" inpt *h "" podua poduis poduls)
  (if (= mirr -1)
    (progn
      (command "MIRROR"
         (entlast)
         ""
         inpt
         (list (car inpt) (+ (cadr inpt) 10000000))
         "y")))
      
          ;  (command "ROTATE" (entlast) "" inpt (- 0 podua) )
    
  
  (DB_movelayer "pd" (entlast))
  (DB_releasesnap))

;坐标赋值
(defun setpt_ ()            
  (if (= pt1 nil)
    (progn
      (setq pt1 pt)
      (setq py1 py))
    
    (progn
      (setq pt2 pt)
      (setq py2 py))))
    
  

(defun c:bg (/     h__   ss1   n     pt1   pt2   m     ed    SSL
             py1   py2   pt    py    podua podui podul inpt podup poduc
             poduis)
              ;自动计算标高
   
  
  (command "undo" "be")
  (princ "\n选择2个标高:")
  (princ "\n")
  (setq pt1 nil)
  (setq pt2 nil)
  (while (= pt2 nil)
    (SETQ ss1 (SSGET))
    (setq n (SSlength ss1))
    (setq m 0)
    (while (< m n)
      (setq s1 (ssname ss1 m))
      (SETQ SSL (ENTGET S1))
      (if (= (CDR (ASSOC 2 SSL)) "ElevaPos")
       (progn
         (setq ed (entget (entnext (cdr (assoc -1 SSL)))))
         (setq py (atof (cdr (assoc 1 ed))))
         (setq pt (cdr (ASSOC 10 SSL)))
         (if (/= py 0)
           (setpt_))))
    
  
      
      (setq m (+ m 1))))
    
  
  (setq inpt nil)
  (while t
    (while (= inpt nil)
      (princ (strcat "\n显示比例:  1:" (rtos *h 2 0)))
      (initget "Disp")
      (setq inpt (getpoint "\n显示比例【D】 / < 点击中间点 >: "))
      (cond
       ((= inpt "Disp") (DB_set_scale_inpt))
       (T nil)))
      
              ;while

    (setq podul (distance inpt pt1))
    (setq podui (distance pt2 inpt))
    (setq podup (distance pt1 pt2))
    (setq poduc (/ (/ (- (+ (* podul podul) (* podup podup)) (* podui podui)) 2) podup)) 
    ;余弦定理求分段比例
    (setq podua (- py1 (* (/ (- py1 py2) podup) poduc)))
    
    (setq poduis (rtos podua 2 2))
    (command "INSERT" "ElevaPos.dwg" inpt *h "" "" poduis)
    (DB_movelayer "bg" (entlast))
    (command "undo" "e")
    
    (setq inpt nil)))
  


(defun setcontent_ (/ cont__)
  (princ "\n上标内容 <")
  (princ *cont)
  (setq cont__ (getstring ">: "))

  (if (/= cont__ nil)
    (setq *cont cont__))
  
  (if (/= *sty "O")
    (progn
      (princ "\n下标内容 <")
      (princ *contd)
      (setq cont__ (getstring ">: "))
      (if (/= cont__ nil)
        (setq *contd cont__))))
      
    
  

  (setq pt1 nil))



(defun c:quan (/ pt1 num)
   
  
  (setq pt1 nil)
  (while t
    (while (= pt1 nil)
      (princ (strcat "\n显示比例: 1:"
              (rtos *h 2 0)
              ";  类型:  < "
              *sty
              " >  内容: "
              *cont))
       
      
      (initget "Disp Style Content")
      (setq pt1
       (getpoint "\n显示比例【D】 / 类型【S】 / 内容【C】 / < 放置点 >:"))
       
      
      (cond
       ((= pt1 "Disp") (DB_set_scale_pt1))
       ((= pt1 "Style")
        (if (= *sty "O")
          (setq *sty "/")
          (if (= *sty "/")
            (setq *sty "-")
            (setq *sty "O")))
     
   
        (setq pt1 nil))
  
       ((= pt1 "Content") (setcontent_))
       (T nil)))
                ;cond
              ;while
    (if  (= *sty "O")
      (command "INSERT" "quan1.dwg" pt1 *h "" "" *cont)
      (if (= *sty "/")
       (command "INSERT" "quan2.dwg" pt1 *h "" "" *cont *contd)
       (command "INSERT" "quan3.dwg" pt1 *h "" "" *cont *contd)))
      
    
    (if  (wcmatch *cont "#,##,###")
      (setq *cont (rtos (+ (atoi *cont) 1) 2 0))
      (if (wcmatch *cont "*[A-Y],*[a-y]")
        (setq *cont (strcat (substr *cont 1 (- (strlen *cont) 1)) (DB_nextnum (substr *cont (strlen *cont)))))
        (if (wcmatch *cont "*##")
         (setq *cont (strcat (substr *cont 1 (- (strlen *cont) 2)) (rtos (+ (atoi (substr *cont (- (strlen *cont) 1)) ) 1) 2 0)))
         (if (wcmatch *cont "*#")
          (setq *cont (strcat (substr *cont 1 (- (strlen *cont) 1)) (rtos (+ (atoi (substr *cont (strlen *cont) ) ) 1) 2 0)))))))
         
        
      
    
    
    (DB_movelayer "zh" (entlast))
    (setq pt1 nil)))
  




;; (defun c:ws (/ ss1 s1 ssl weight poss newpo neww)
;;    
   
;;   (while t
;;     (princ "\n点击要切换的多段线：")
;;     (SETQ SS1 (ssget "_:S+."))
;;     (setq s1 (ssname ss1 0))
;;     (SETQ SSL (ENTGET S1))
;;     (if	(= (CDR (ASSOC 0 SSL)) "MLINE")
;;       (progn
;; 	(setq weight (CDR (ASSOC 40 SSL)))
;; 	(setq poss (CDR (ASSOC 41 SSL)))
;; 	(if (= weight poss)
;; 	  (setq newpo 0)
;; 	  (if (= poss 0)
;; 	    (setq newpo (/ weight 2))
;; 	    (setq newpo weight)
;; 	  )
;; 	)
;; 	(setq neww (atoi (rtos (/ newpo (/ weight 2)) 2 0)))
;; 	(setq ssl (subst (cons 41 newpo) (assoc 41 ssl) ssl))
;; 	(setq ssl (subst (cons 70 neww) (assoc 70 ssl) ssl))
;; 	(entmod ssl)
;; 	(command "STRETCH" s1 "" "" "")
;;       )
;;     )
;;   )
;; )

(defun c:gs (/)
   
  (setvar "cmdecho" 0)
  (setq groupselect (getvar "PICKSTYLE"))
  (if (= groupselect 0)
    (progn
      (setq groupselect 1)
      (princ "\n开启编组"))
    
    (progn
      (setq groupselect 0)
      (princ "\n关闭编组")))
    
  
  (setvar "PICKSTYLE" groupselect)
  (princ)
  (princ))


(defun c:ga (/ ss1 s1)
   
  (setvar "cmdecho" 0)
  (princ "\n选择编组：")
  (SETQ SS1 (ssget "_:S+."))
  (setq s1 (ssname ss1 0))
  (princ "\n选择要添加的元素：")
  (vl-cmdf "groupedit" s1 "a"))

(defun c:gr (/ ss1 s1)
   
  (setvar "cmdecho" 0)
  (princ "\n选择编组：")
  (SETQ SS1 (ssget "_:S+."))
  (setq s1 (ssname ss1 0))
  (princ "\n选择要删除的元素：")
  (vl-cmdf "groupedit" s1 "r"))


;; (defun c:bz()

;;   ()
;; )
;绘制标记
(defun c:bj(/ pt1 pt2 cp mina maxa)
  (DB_closesnap)
  (while (= pt1 nil)
    (prompt (strcat
                    "\n绘图比例[D]:  < 1： "
                    (rtos *h 2 0)
                    ">"))
    (initget 1 "Disp")
    (setq pt1 (getpoint "\n点选标记区域第一角点："))
    (cond
      ((= pt1 "Disp")
       (DB_set_scale_pt1))
      (t nil)))
  (setq pt2 (getcorner pt1 "\n点选标记区域第二点："))
  (if (and pt1 pt2)
    (progn
      (setq cp (DB_get_box pt1 pt2))
      (DB_plinebh cp 0 "bj")
      (setq mina (* *h 5)
           maxa (* *h 10))
      (command ".REVCLOUD" "S" "N" "A" mina maxa "O" (entlast) "N")
      (DB_movelayer "bj" (entlast))))
  (DB_releasesnap)
  (princ)
  (princ))
;标记递增
(defun c:bjdz(/ ss m n cl s1 sl)
  (if (DB_yesorno "确认递增修改标记" nil)
    (progn
      (setq ss (ssget "X" '((8 . "建筑-辅助-标记"))))
      (setq m 0
            n (SSlength ss))
      (while (< m n)
        (setq s1 (ssname ss m))
        (setq cl (DB_get_ent s1 62))
        (cond 
          ((= cl nil)
           (DB_change_ent s1 62 5))
          ((= cl 1)
           (DB_change_ent s1 62 5))
          ((= cl 5)
           (DB_change_ent s1 62 2))
          ((= cl 2)
           (DB_change_ent s1 62 3))
          ((= cl 3)
           (DB_change_ent s1 62 4))
          ((= cl 4)
           (DB_change_ent s1 62 6))
          ((= cl 6)
           (entdel s1)))
        (setq m (1+ m)))))
  (princ))
;齐线整理
(defun c:xzx(/ ssall s1 ss i j m n lx cd pt1 pt2 so sl ang1 ang2 al dl dis ang o1 o2) 
  (prompt "\n选择边线：")
  (setq ssall (ssget))
  (setq i 0
        j (SSlength ssall))
  (prompt "\n选择要整理的线：")
  (setq ss (ssget))
  (while (< i j)
    (setq s1 (ssname ssall i))
    (setq lx (DB_get_ent s1 0))
    (if (wcmatch lx "ARC,LINE")
      (progn 
        (setq m 0
              n (SSlength ss))
        (while (< m n)
          (setq sl (ssname ss m))
          (if (= (DB_get_ent sl 0) "LINE")
            (progn
              (setq pt1 (DB_get_ent sl 10)
                    pt2 (DB_get_ent sl 11))
              (if (= lx "LINE")
                (progn
                  (setq cd (inters pt1 pt2 (DB_get_ent s1 10) (DB_get_ent s1 11) nil))
                  (if (< (distance cd pt1) (distance cd pt2))
                    (DB_change_ent sl 10 cd)
                    (DB_change_ent sl 11 cd)))
                (progn
                  (setq so (DB_get_ent s1 10)
                        ang1 (DB_get_ent s1 50)
                        ang2 (DB_get_ent s1 51)
                        ang (angle pt1 pt2)
                        al (DB_get_ent s1 40))
                  (setq cd (DB_get_per_point pt1 pt2 so nil)
                        dis (distance so cd))
                  (if (< dis al) 
                    (progn
                      (setq dl (sqrt (- (* al al) (* dis dis)))
                            o1 (polar cd ang dl)
                            o2 (polar cd (+ pi ang) dl)
                            ang (angle so o1))
                      (if (< ang2 ang1)
                        (setq ang2 (+ ang2 (* pi 2))))
                      (if (and (< ang ang2) (> ang ang1))
                        (if (< (distance o1 pt1) (distance o1 pt2))
                          (DB_change_ent sl 10 o1)
                          (DB_change_ent sl 11 o1)))
                      (setq ang (angle so o2))
                      (if (and (< ang ang2) (> ang ang1))
                        (if (< (distance o2 pt1) (distance o2 pt2))
                          (DB_change_ent sl 10 o2)
                          (DB_change_ent sl 11 o2)))))))))
          (setq m (1+ m)))))
    (setq i (1+ i))))

          
;绘制箭头
(defun c:hzjt (/ pts pt1 pt2 pt3 jt pt0 jtlist)
  (setq pt1 (getpoint "\n箭头指向点："))
  (setq pt3 (getpoint pt1 "\n箭头尾部方向："))
  (setq ang (angle pt1 pt3))
  (setq pt2 (polar pt1 ang (* *h 3)))
  (if (< (distance pt1 pt3) (* *h 3)) 
    (setq pt3 pt2))
  (setq jtlist (list pt1 pt2 pt3))
  (DB_plinejt jtlist "fh")
  (setq jt (entlast))
  (setq pt0 pt3)
  (while pt0
    (setq pt0 (getpoint pt0 "\n下一点："))
    (if pt0 
      (progn
        (setq jtlist (append jtlist (list pt0)))
        (entdel jt)
        (DB_plinejt jtlist "fh")
        (setq jt (entlast)))))
  (princ))
;计算折断线
(defun DB_jszdx(pt1_ pt2_ ex / ang pt1 pt2 dis x1 pt3 pt4 pt5 pt6)
  (setq ang (angle pt1_ pt2_))
  (setq dis (distance pt1_ pt2_))
  (setq x1 (/ (- dis (* 2 *h)) 2))
  (setq pt3 (polar pt1_ ang x1))
  (setq pt4 (polar pt1_ ang (+ x1 (* 2 *h))))
  (setq pt5 (polar pt3 (+ ang 1.32582) (* 2.0616 *h)))
  (setq pt6 (polar pt4 (- ang 1.81577) (* 2.0616 *h)))
  (if ex
    (setq pt1 (polar pt1_ (+ ang pi) (* 2 *h))
          pt2 (polar pt2_ ang (* 2 *h))))
  (list (list pt1 pt3 pt5 pt6 pt4 pt2)))
;计算双折断线
(defun DB_jsszdx(pt1_ pt2_ ex / ang pt1 pt2 dis x1 pt3 pt4 pt5 pt6 pt7 pt8 pt9 pt10 pt11 pt12 pt13 pt14)
  (setq pt1 pt1_ pt2 pt2_)
  (setq ang (angle pt1 pt2))
  (setq dis (distance pt1 pt2))
  (setq x1 (/ (- dis (* 3 *h)) 2))
  (setq pt3 (polar pt1 ang x1))
  (setq pt4 (polar pt1 ang (+ x1 (* 3 *h))))
  (setq pt5 (polar pt3 (+ ang 1.32582) (* 3.0924 *h)))
  (setq pt6 (polar pt4 (- ang 1.81577) (* 3.0924 *h)))
  (if ex
    (setq pt1 (polar pt1_ (+ ang pi) (* 2 *h))
          pt2 (polar pt2_ ang (* 2 *h))))
  (setq pt11 (polar pt1 (- ang (/ pi 2)) (* *h 1))
        pt13 (polar pt2 (- ang (/ pi 2)) (* *h 1))
        pt7 (inters pt11 pt13 pt3 pt5 nil)
        pt9 (inters pt11 pt13 pt6 pt4 nil))
  (setq pt12 (polar pt1 (+ ang (/ pi 2)) (* *h 1))
        pt14 (polar pt2 (+ ang (/ pi 2)) (* *h 1))
        pt8 (inters pt12 pt14 pt3 pt5 nil)
        pt10 (inters pt12 pt14 pt6 pt4 nil))
  (list (list pt11 pt7 pt5 pt6 pt10 pt14) (list pt8 pt12) (list pt13 pt9)))
(defun C:jzdx(/ lay pt1 pt2 dis ang ptx1 ptx2 cd)
  (setq ang nil)
  (setq pt1 (getpoint "\n起点:"))
  (setq pt2 (getpoint pt1 "\n终点:"))
  (setq ls (DB_jszdx pt1 pt2 t))
  (setq blk (DB_draw_lines ls "fh"))
  (if (DB_yesorno "是否遮蔽？" nil)
    (progn 
      (setq ptx1 (mapcar '(lambda (X Y) (* (+ X Y) 0.5)) pt1 pt2))
      (setq ptx2 (getpoint ptx1 "\n点击遮蔽方向"))
      (setq cd (DB_get_per_point pt1 pt2 ptx2 nil))
      (setq ang (angle cd ptx2))
      (setq dis (distance cd ptx2))
      (DB_plinebh (append (car ls) (list (polar (last (car ls)) ang dis) (polar (car (car ls)) ang dis))) 0 "")
      (command "WIPEOUT" "p" (entlast) "y")  
      (setq blk (ssadd (entlast) blk))))
  (DB_make_block_noname blk (mapcar '(lambda (X Y) (* (+ X Y) 0.5)) pt1 pt2))
  (princ)(princ))
;双折断线
(defun C:szdx(/ lay pt1 pt2 blk)
  (setvar "WIPEOUTFRAME" 0)
  (command "undo" "be")
  (setq pt1 (getpoint "\n起点:"))
  (setq pt2 (getpoint pt1 "\n终点:"))
  (setq ls (DB_jsszdx pt1 pt2 t))
  (setq blk (DB_draw_lines ls "fh"))
  (DB_plinebh (append (list (car (car ls)) (cadr (car ls))) (cadr ls)) 0 "")
  (command "WIPEOUT" "p" (entlast) "y")
  
  (setq blk (ssadd (entlast) blk))
  (DB_plinebh (append (caddr ls) (list (nth 4 (car ls)) (nth 5 (car ls)))) 0 "")
  (command "WIPEOUT" "p" (entlast) "y")
  (setq blk (ssadd (entlast) blk))
  
  (DB_make_block_noname blk (mapcar '(lambda (X Y) (* (+ X Y) 0.5)) pt1 pt2))
  (command "undo" "e")
  (princ)(princ))

(defun formatstairs()
  (setq s_width (nth 5 (assoc *Stairs_style *Stairs_list)))
  (setq s_deep (nth 2 (assoc *Stairs_style *Stairs_list)))
  (setq s_high (nth 3 (assoc *Stairs_style *Stairs_list)))
  (setq s_well (nth 4 (assoc *Stairs_style *Stairs_list))))
(defun c:hzlt(/ s_width s_deep s_high s_well pt1 pt2 sty pt1 pt2 ang ang_c s_realhigh s_step s_step1 s_step2 
                  s_platform slist s_b1 s_b2 s_b3 s_hw s_h1 s_h2 s_h3 s_h4 s_h5 s_h6 s_h7 s_h8 m s_e1 s_e2 s_st ps) 
  (formatstairs)
  (setq pt1 nil pt2 nil slist (ssadd))
  (while (= pt1 nil)
    (prompt (strcat
                    "\n绘图比例[D]:  < 1： "
                    (rtos *h 2 0)
                    ">    楼梯类型[S]： <"
                    (nth 1 (assoc *Stairs_style *Stairs_list))
                    ">    梯段宽度： <"
                    (rtos s_width 2 0)
                    ">    踏步限高： <"
                    (rtos s_high 2 2)
                    ">    踏步宽度： <"
                    (rtos s_deep 2 0)
                    ">    梯井宽度： <"
                    (rtos s_well 2 0)
                    ">    层高： <"
                    (rtos *lvh 2 0)
                    ">"))
    (initget 1 "Disp Style Parameter  ")
    (setq pt1 (getpoint "点选半层平台角点[设置参数(P)]："))
    (cond
      ((= pt1 "Disp") (DB_set_scale_pt1))
      ((= pt1 "Style") 
       (DB_show_list *Stairs_list 1) 
       (setq sty (atoi (DB_get_input "楼梯类型" (strcat (rtos *Stairs_style 2 0)))))
       (setq sty (nth 0 (assoc sty *Stairs_list)))
       (if (= sty nil)
        (setq sty 1)
        (setq *Stairs_style sty))
       (formatstairs)
       (setq pt1 nil))
      ;; ((= pt1 "Width") 
      ;;  (setq s_width (DB_get_int_pt1 "梯段宽度" s_width)))
      ;; ((= pt1 "High")
      ;;  (setq s_high (DB_get_real_pt1 "楼梯高度" s_high)))
      ;; ((= pt1 "deeP")
      ;;  (setq s_deep (DB_get_int_pt1 "踏步宽度" s_deep)))
      ;; ((= pt1 "wEll")
      ;;  (setq s_well (DB_get_int_pt1 "梯井宽度" s_well)))
      ;; ((= pt1 "Floor")
      ;;  (setq *lvh (DB_get_int_pt1 "层高" *lvh)))
      ((= pt1 "Parameter")
       (setq ps (DB_get_Minput (list "梯段宽度" (rtos s_width)
                                      "楼梯高度" (rtos s_high)
                                      "踏步宽度" (rtos s_deep)
                                      "梯井宽度" (rtos s_well)
                                      "层高" (rtos *lvh))))
       (setq s_width (atoi (nth 0 ps))
             s_high (atoi (nth 1 ps))
             s_deep (atoi (nth 2 ps))
             s_well (atoi (nth 3 ps))
             *lvh (atoi (nth 4 ps)))
       (setq pt1 nil))
      (t nil)))
  (setq pt2 (getpoint pt1 "\n选择楼梯方向："))
  (setq pt3 (getpoint pt1 "\n选择平台方向："))
  (setq ang (angle pt1 pt2)
        ang_c (angle (DB_get_per_point pt1 pt2 pt3 nil) pt3)
        s_step (fix (/ *lvh s_high)))
  (if (> (rem *lvh s_high) 0)
    (setq s_step (1+ s_step)))
  (setq s_platform (max s_width 1250))
  (setq s_hw (+ s_width s_width 100 s_well))
  (setq s_b1 (polar pt1 ang s_platform))
  (setq s_b2 (polar s_b1 ang_c s_hw))
  (setq s_b3 (polar pt1 ang_c s_hw))
  (setq s_step1 (fix (/ s_step 2)))
  (setq s_step2 (- s_step s_step1))
  (DB_line3 pt1 s_b1 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 pt1 s_b3 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_b3 s_b2 "lt")
  (setq slist (ssadd (entlast) slist))
  (setq s_h1 (polar (polar s_b1 ang_c s_width) (+ ang pi) 100)
        s_h2 (polar s_h1 ang_c (+ 100 s_well))
        s_h3 (polar s_h2 ang (+ 200 (* (1- s_step2) s_deep)))
        s_h4 (polar s_h1 ang (+ 200 (* (1- s_step2) s_deep)))
        s_h5 (polar (polar s_h1 ang 50) ang_c 50)
        s_h6 (polar s_h5 ang_c s_well)
        s_h8 (polar (polar s_h4 (+ ang pi) 50) ang_c 50)
        s_h7 (polar s_h8 ang_c s_well))
  (DB_line3 s_h1 s_h2 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_h2 s_h3 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_h3 s_h4 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_h4 s_h1 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_h5 s_h6 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_h6 s_h7 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_h7 s_h8 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_h8 s_h5 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 (polar s_h5 ang 50) (polar s_h6 ang 50) "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 (polar s_h7 (+ ang pi) 50) (polar s_h8 (+ ang pi) 50) "lt")
  (setq slist (ssadd (entlast) slist))
  (setq m 0)
  (while (< m (1- s_step1))
    (DB_line3 s_b1 (polar s_b1 ang_c s_width) "lt")
    (setq slist (ssadd (entlast) slist))
    (setq s_st (polar s_b1 ang s_deep))
    (DB_line3 s_b1 s_st "lt")
    (setq slist (ssadd (entlast) slist))
    (setq s_b1 s_st)
    (setq m (1+ m)))
  (setq m 0)
  (while (< m (1- s_step2))
    (DB_line3 s_b2 (polar s_b2 (+ ang_c pi) s_width) "lt")
    (setq slist (ssadd (entlast) slist))
    (setq s_st (polar s_b2 ang s_deep))
    (DB_line3 s_b2 s_st "lt")
    (setq slist (ssadd (entlast) slist))
    (setq s_b2 s_st)
    (setq m (1+ m)))
  (DB_line3 s_b1 (polar s_b1 ang_c s_width) "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_b2 (polar s_b2 (+ ang_c pi) s_width) "lt")
  (setq slist (ssadd (entlast) slist))
  (setq s_e2 (polar s_b2 ang s_platform))
  (setq s_e1 (polar s_e2 (+ ang_c pi) s_hw))
  (DB_line3 s_b1 s_e1 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_b2 s_e2 "lt")
  (setq slist (ssadd (entlast) slist))
  (DB_line3 s_e1 s_e2 "lt")
  (setq slist (ssadd (entlast) slist))
  
  (if slist
    (DB_make_block_noname slist pt1)))

(defun c:pu()
  (command "purge" "a" "*" "n")
  (princ))


(defun c:gc(/ ss1 s1 SSL ed py gc inpt pp str)             ;室内外高差
   
  (command "undo" "be")

  (princ "\n选择室外标高:")
  (setq ss1 (ssget "_:S+." '((0 . "INSERT") (2 . "ElevaPos"))))
  (setq s1 (ssname ss1 0))
  (SETQ SSL (ENTGET S1))
  (setq ed (entget (entnext (cdr (assoc -1 SSL)))))
  (if (wcmatch (cdr (assoc 1 ed)) "%%P0.00=*")
    (setq py (atof (substr (cdr (assoc 1 ed)) (+ (vl-string-position (ascii "=") (cdr (assoc 1 ed))) 2)))
          pp 0)
    
    (setq py (atof (cdr (assoc 1 ed)))
          pp 1))
    
  
  (setq gc (getint (strcat "\n输入室内外高差：<" (rtos *gc 2 0) ">")))
  (if (/= gc nil)
    (setq *gc gc))
  
  (if (= pp 0)
    (setq str (rtos (- py (* *gc 0.001)) 2 2))
    (setq str (strcat "%%P0.00=" (rtos (+ py (* *gc 0.001)) 2 2))))
  
  (setq inpt nil)
  (while (= inpt nil)
    (princ (strcat "\n显示比例:  1:" (rtos *h 2 0)))
    (initget "Disp")
    (setq inpt (getpoint "\n显示比例【D】 / < 放置标高 >: "))
    (cond
      ((= inpt "Disp") (DB_set_scale_inpt))
      (T nil)))
    
  
  (command "INSERT" "ElevaPos.dwg" inpt *h "" "" str)
  (DB_movelayer "bg" (entlast))
  (command "undo" "e"))

(defun c:hxfg (/ s1 s2 nm ox pt0 ang1 ang2 angx lx ly ang_ i lc cd angl layer dis)
  (princ "\n选择等分弧线：")
  (setq s1 (ssname (ssget "_:S+." '((0 . "ARC"))) 0))
  (if (= *divnumber nil)
    (setq *divnumber 5))
  (setq nm (getint (strcat "\n等分为<" (rtos *divnumber 2 0) ">:")))
  (if (and (/= *divnumber nil) (> nm 0))
    (setq *divnumber nm))
  (setq pt0 (DB_get_ent s1 10)
        lc (DB_get_ent s1 40)
        ang1 (DB_get_ent s1 50)
        ang2 (DB_get_ent s1 51)
        ang_ (/ (- ang2 ang1) *divnumber))
  (princ "\n选择参考线：")
  (setq s2 (ssname (ssget "_:S+." '((0 . "LINE"))) 0))
  (setq lx (DB_get_ent s2 10)
        ly (DB_get_ent s2 11)
        layer (DB_get_ent s2 8))
  (setq i 0)
  (while (>= *divnumber i)
    (setq angx (+ ang1 (* ang_ i)))
    (setq ox (polar pt0 angx lc))
    (setq cd (DB_get_per_point lx ly ox nil))
    (setq angl (angle cd ox)
          dis (distance cd ox))
    (DB_line3 (polar lx angl dis) (polar ly angl dis) layer)
    (setq i (1+ i)))
  (princ)
  (princ))
