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
(defun setwallwidth_ (/ w__ wr__)  ;设置墙宽
  (princ "\n左墙宽 :<")
  (princ *wl_l)
  (setq w__ (getint ">:"))
  (if (/= w__ nil)
    (setq *wl_l w__))
  
  (princ "\n右墙宽 :<")
  (princ *wl_r)
  (setq wr__ (getint ">:"))
  (if (/= wr__ nil)
    (setq *wl_r wr__))
  
  (setq pt1 nil))


(defun init_ ()
  (setq  pt1 nil
   pt2 nil
   pto nil
   line_o_l nil
   line_o_r nil
   line_last_l
   nil
   line_last_r
   nil
   line_l nil
   line_r nil
   ptox nil
   ptoy nil
   msg
   "\n墙宽【W】 / 内外墙【N】 / 闭合【C】/ 墙基线【Z】 / < 墙点 >:")
  
  (if (= wall_neiwai nil)
    (setq wall_neiwai "nq"))
  
  (if (= wall_neiwai "wq")
    (setq msg_nw "外墙")
    (setq msg_nw "内墙")))
  

(defun fillet_(line1 line2 / &x &y l1 l2 l3 l4 pt)
  (DB_get_pt_2p line1)
  (setq l1 &x l2 &y)
  (DB_get_pt_2p line2)
  (setq l3 &x l4 &y)
  (setq pt (inters l1 l2 l3 l4 nil))
  (DB_change_ent line1 10 pt)
  (DB_change_ent line2 11 pt))


(defun c:ww (/         pt1   pt2     pto       cont
             msg       line_o_l   line_o_r  line_last_l
             line_last_r   line_l     line_r  
             ang_      ptx1 pty1 ptx2 pty2   msg_nw  zero_msg ptox ptoy)
      
   
  (if (= *wl_l nil)
    (setq *wl_l 100
     *wl_r 100))
    
  
  (init_)
  (setq cont t)
  (while cont
    (while (= pt1 nil)
      (if wall_zero
        (setq zero_msg "绘制")
        (setq zero_msg "关闭"))
      
      (prompt (strcat
               "\n宽度:  < 左： "
               (rtos *wl_l 2 0)
               " / 右： "
               (rtos *wl_r 2 0)
               " >   内外墙： "
               msg_nw
               "   中心线：["
               zero_msg
               "]"))

        
      
      (initget 1 "Width Neiwai Close Zero  ")
      (if (= pt2 nil)
        (setq pt1
         (getpoint msg))
        
        (setq pt1
         (getpoint pt2 msg)))
        
      
      (cond
        ((= pt1 "Width") (setwallwidth_))
        ((= pt1 "Close") 
         (setq pt1 pto))
        
        ((= pt1 "Neiwai")
         (if (= wall_neiwai "nq")
           (setq wall_neiwai "wq")
           (setq wall_neiwai "nq"))
          
         (init_))
        
        ((= pt1 "Zero")
         (if wall_zero
           (setq wall_zero nil)
           (setq wall_zero t))
        
         (setq pt1 nil))
        
        ((= pt1 "") 
         (if (= pto nil)
           (setq cont nil)
           (progn
               
             (if (and (/= pto pt2) (/= pto nil))
               (progn
                 (DB_line3 ptox ptoy wall_neiwai)
                 (DB_line3 ptx1 pty1 wall_neiwai)))
                
              
             (init_))))
            
          
        
        (T nil))
      
      (if (/= cont nil)
        (progn
          (if  (/= pt2 nil)
            (progn
              (SETQ ang_ (angle pt1 pt2))
              (setq ptx1 (polar pt1 (- ang_ (* pi 0.5)) *wl_l)
                    pty1 (polar pt1 (+ ang_ (* pi 0.5)) *wl_r)
                    ptx2 (polar pt2 (- ang_ (* pi 0.5)) *wl_l)
                    pty2 (polar pt2 (+ ang_ (* pi 0.5)) *wl_r))
              
              (command "undo" "be")
              (DB_line3 ptx1 ptx2 wall_neiwai)
              (setq line_l (entlast))
              (DB_line3 pty1 pty2 wall_neiwai)
              (setq line_r (entlast))
              (if wall_zero
                (DB_line3 pt2 pt1 "qz"))
              
              (if (= line_o_l nil)
                (setq  line_o_l line_l
                      line_o_r line_r
                      ptox ptx2
                      ptoy pty2)
                
                (progn
                  (fillet_ line_last_l line_l)
                  (fillet_ line_last_r line_r)))
                
              
              (command "undo" "e")
              (setq line_last_l line_l
                    line_last_r line_r))
              
            
            (progn
              (setq pto pt1)))
            
          
          (setq pt2 pt1)
          (if  (and (/= pt1 nil) (= pt1 pto) (/= line_last_l line_o_l))
            (progn
              (fillet_ line_last_l line_o_l)
              (fillet_ line_last_r line_o_r)
              (setq cont nil))
            
            (setq pt1 nil)))))) 
          
        
      
    
  
  (princ)
  (princ))


(defun pickone_  (ssl  /      n      m       sline  x1     y1
                  xline  x2     y2     intP   s      sline_nw
                  xline_nw      &x     &y)
    

  (setq sline (ssname ssl 0))    ;取出一条线
  (DB_get_pt_2p sline)
  (setq x1 &x)
  (setq y1 &y)

  (if (= (cdr (assoc 8 (ENTGET sline))) "建筑-墙体-外墙")
    (setq sline_nw 2)
    (setq sline_nw 1))
  
  (setq s (ssdel sline ssl))
  (setq n (SSlength s))
  (setq m 0)
  (setq intP nil)
  (while (< m n)      ;循环读取其他线与之相交
    (setq xline (ssname s m))
    (DB_get_pt_2p xline)
    (setq x2 &x)
    (setq y2 &y)
    (if  (= (cdr (assoc 8 (ENTGET xline))) "建筑-墙体-外墙")
      (setq xline_nw 2)
      (setq xline_nw 1))
    
    (setq intP (inters x1 y1 x2 y2))
    (if  (/= intP nil)
      (progn
       (DB_closesnap)
       (if (>= xline_nw sline_nw)

         (command "break" sline (osnap intP "_int") "@"))
  
       (if (>= sline_nw xline_nw)
         (command "break" xline (osnap intP "_int") "@"))
       (DB_releasesnap)
  
       (setq goon t)))
      
    
    (setq m (+ 1 m)))
  
  (if (> n 1)
    (pickone_ s)))
  


(defun goonpick_ (/ ss s_)
  (setq ss (ssget "c" pt1 pt2 '((0 . "LINE") (8 . "建筑-墙体*"))))
  (if (/= ss nil)
    (pickone_ ss))
  
  (setq s_ (ssget "w" pt1 pt2 '((0 . "LINE") (8 . "建筑-墙体*"))))
  (if (/= s_ nil)
    (progn
      ;; (setq n (SSlength s)
      ;;       m 0
      ;; )
      ;; (while (< m n)
      ;;   (entdel (ENTGET (ssname s m)))
      ;;   (setq m (+ 1 m))
      ;; )
      (command "ERASE" "p" "")
      (goonpick_))))
    
  


(defun c:xqj (/ pt1 pt2 ss)    ;修墙线
   
  (DB_closesnap)
  (command "undo" "be")
  (setq pt1 (getpoint "\n第一点："))
  (setq pt2 (getcorner pt1 "\n第二点："))
  (goonpick_)
  (command "undo" "e")
  (DB_releasesnap)
  (princ)
  (princ))


(defun pickwall  (x y mp / ang_ f p1 p2 ss xy0 cx1 cy1 cx2 cy2)
  (setq ang_ (angle x y)
   p1   (polar mp (- ang_ (* pi 0.5)) 300)
   p2   (polar mp (+ ang_ (* pi 0.5)) 300)
   f    nil
   f    (cons p1 f)
   f    (cons p2 f)
   ss   (ssget "f" f '((0 . "line") (8 . "建筑-墙体*"))))
  
  (if (/= ss nil)
    (if  (= (SSlength ss) 2)
      (progn
       (setq &s1 (ssname ss 0))
       (setq &s2 (ssname ss 1))
       (setq &sx1 (cdr (assoc 10 (ENTGET &s1))))
       (setq &sy1 (cdr (assoc 11 (ENTGET &s1))))
       (if (or (>= (angle &sx1 &sy1) pi) (< (angle &sx1 &sy1) 0))
         (setq  xy0 &sx1
          &sx1 &sy1
          &sy1 xy0))
    
  
       (setq &sx2 (cdr (assoc 10 (ENTGET &s2))))
       (setq &sy2 (cdr (assoc 11 (ENTGET &s2))))
       (if (or (>= (angle &sx2 &sy2) pi) (< (angle &sx2 &sy2) 0))
         (setq  xy0 &sx2
          &sx2 &sy2
          &sy2 xy0))
       
       (setq cx1 (DB_get_per_point &sx1 &sy1 &sx2 t)
           cy1 (DB_get_per_point &sx1 &sy1 &sy2 t)
           cx2 (DB_get_per_point &sx2 &sy2 &sx1 t)
           cy2 (DB_get_per_point &sx2 &sy2 &sy1 t))
       (if (or cx1 cy1 cx2 cy2)
        (progn
          (if cx1 
            (setq &sx1 cx1))
          (if cx2 
            (setq &sx2 cx2))
          (if cy1
            (setq &sy1 cy1))
          (if cy2
            (setq &sy2 cy2))
          (if (= (getvar "WORLDUCS") 0)
            (progn
              (setq &sx1 (trans &sx1 0 1))
              (setq &sy1 (trans &sy1 0 1))
              (setq &sx2 (trans &sx2 0 1))
              (setq &sy2 (trans &sy2 0 1))))
          t)
        nil))
    
  
        
      
      nil)
    
    nil))


  
(defun suandong_ (startpoint  endpoint      /       sp      ep
                  sp1   sp2  ep1    ep2    x1     x2      y1
                  y2   &sx1  &sy1    &sx2    &sy2    ang__)
     
  (setq  sp startpoint
   ep endpoint)
  

  ;; (setq mp (getmid sp ep))
  ;; (setq ang_ (angle sp ep))
  ;; (setq sp1 (olar mp (- ang_ (* pi 0.5)) 300))
  ;; (setq sp2 (polar mp (+ ang_ (* pi 0.5)) 300))

  ;; (setq f nil)
  ;; (setq f (cons sp1 f))
  ;; (setq f (cons sp2 f))
  ;; (setq ss (ssget "f" f '((0 . "line") (8 . "建筑-墙体*")) ))

  (if (pickwall sp ep (getmid sp ep))
    (progn
      (setq ang__ (angle &sx1 &sy1))
      (setq sp1 (polar sp (- ang__ (* pi 0.5)) 300))
      (setq sp2 (polar sp (+ ang__ (* pi 0.5)) 300))
      (setq ep1 (polar ep (- ang__ (* pi 0.5)) 300))
      (setq ep2 (polar ep (+ ang__ (* pi 0.5)) 300))

      (setq x1 (inters sp1 sp2 &sx1 &sy1))
      (setq x2 (inters sp1 sp2 &sx2 &sy2))
      (setq y1 (inters ep1 ep2 &sx1 &sy1))
      (setq y2 (inters ep1 ep2 &sx2 &sy2))

      (setq &x1 x1)
      (setq &x2 x2)
      (setq &y1 y1)
      (setq &y2 y2)
      t)
    
    nil))
  

(defun kaidong_  (startpoint endpoint / sp ep &s1 &s2)
  (setq  sp startpoint
   ep endpoint)
  

  ;; (setq mp (getmid sp ep))
  ;; (setq ang_ (angle sp ep))
  ;; (setq sp1 (olar mp (- ang_ (* pi 0.5)) 300))
  ;; (setq sp2 (polar mp (+ ang_ (* pi 0.5)) 300))

  ;; (setq f nil)
  ;; (setq f (cons sp1 f))
  ;; (setq f (cons sp2 f))
  ;; (setq ss (ssget "f" f '((0 . "line") (8 . "建筑-墙体*")) ))

  (if (suandong_ sp ep)
    (progn
      (DB_line3 &y1 &y2 (cdr (assoc 8 (ENTGET &s1))))
      (DB_line3 &x1 &x2 (cdr (assoc 8 (ENTGET &s1))))
      (DB_closesnap)
      (command "break" &s1 &x1 &y1)
      (command "break" &s2 &x2 &y2)
      (DB_releasesnap)
        
      t)
    
    nil))
  


(defun c:kd (/ pt1 pt2 &x1 &x2 &y1 &y2)
   
  (command "undo" "be")
  (setq pt1 (getpoint "\n选取想要开洞的起点："))
  (setq pt2 (getpoint pt1 "\n选取想要开洞的终点："))

  (if (kaidong_ pt1 pt2)
    (prompt "\n打洞成功!")
    (prompt "\n没有选取墙！"))
  
  (command "undo" "e")
  (princ)
  (princ))


(defun c:qz (/ lx ly ssl line_qz &s1 &s2 &sx1 &sy1 &sx2 &sy2)
   
  (prompt "\n选择你要绘制中心线的墙：")
  (setq line_qz (ssname (ssget ":S" '((0 . "LINE") (8 . "建筑-墙体*"))) 0))

  (setq ssl (ENTGET line_qz))

  (setq  lx (cdr (assoc 11 ssl))
   ly (cdr (assoc 10 ssl)))
  
  (if (= (getvar "WORLDUCS") 0)
    (progn
      (setq lx (trans lx 0 1))
      (setq ly (trans ly 0 1))))
    
  
  (if (pickwall lx ly (getmid lx ly))
    (progn
      (DB_line3 (getmid &sx1 &sx2) (getmid &sy1 &sy2) "qz")))
    
  (princ))



  


(defun isoneline_ (line1 line2 / lx1 lx2 ly1 ly2 xy0 ang1 ang2 cx1 cy1
                   cx2 cy2 &pt1 &pt2)
  (setq lx1 (cdr (assoc 10 (ENTGET line1)))
        ly1 (cdr (assoc 11 (ENTGET line1)))
        lx2 (cdr (assoc 10 (ENTGET line2)))
        ly2 (cdr (assoc 11 (ENTGET line2))))
  
  ;; (if (or (>= (angle lx1 ly1) pi) (< (angle lx1 ly1) 0))
  ;;   (setq xy0 lx1
  ;;   lx1 ly1
  ;;   ly1 xy0
  ;;   )
  ;; )
  ;; (if (or (>= (angle lx2 ly2) pi) (< (angle lx2 ly2) 0))
  ;;   (setq xy0 lx2
  ;;   lx2 ly2
  ;;   ly2 xy0
  ;;   )
  ;; )
  (DB_array_2pt lx1 ly1)
  (setq lx1 &pt1
        ly1 &pt2)
  
  (DB_array_2pt lx2 ly2)
  (setq lx2 &pt1
        ly2 &pt2)
  

  (setq  ang1 (angle lx1 ly1)
   ang2 (angle lx2 ly2)
   &x   nil
   &y   nil)
  
  (if (< (abs (- ang1 ang2)) (* 0.0001 *zl))
    (progn
      (setq cx2 (DB_get_per_point lx1 ly1 lx2 t))
      (setq cy2 (DB_get_per_point lx1 ly1 ly2 t))
      (setq cx1 (DB_get_per_point lx2 ly2 lx1 t))
      (setq cy1 (DB_get_per_point lx2 ly2 ly1 t))
      (if (and (/= cx2 nil) (< (distance lx2 cx2) *zl))
       (setq &x lx1))
      
      (if (and (/= cy2 nil) (< (distance ly2 cy2) *zl))
       (setq &y ly1))
      
      (if (and (/= cx1 nil) (< (distance lx1 cx1) *zl))
       (setq &x lx2))
      
      (if (and (/= cy1 nil) (< (distance ly1 cy1) *zl))
       (setq &y ly2))
      
      (if (< (distance ly1 lx2) *zl)
        (setq &x lx1
              &y ly2))
        
      
      (if (< (distance lx1 ly2) *zl)
        (setq &x lx2
              &y ly1))
        
      
      (if (and (/= &x nil) (/= &y nil))
       (< 0 1)
       (> 0 1)))
      

    
    (> 0 1)))
  



(defun DB_cxzl( / n m s1 xz &x &y)
  (setq m 0
        n (SSlength ss))
  (while (< m n)
    (setq s1 (ssname ss m))
    (DB_progress m n)
    (DB_get_pt_2p s1)
    (setq xz nil)
    (if (and (/= (car &x) (car &y)) (< (abs (- (car &x) (car &y))) *zl))
      (setq &y (list (car &x) (cadr &y) (caddr &y))
            xz 1))
      
    
    (if (and (/= (cadr &x) (cadr &y)) (< (abs (- (cadr &x) (cadr &y))) *zl))
      (setq &y (list (car &y) (cadr &x) (caddr &y))
            xz 1))
    
  
    (if (= xz 1) 
      (progn 
        (setq &y (trans &y 1 0))
        (DB_change_ent s1 11 &y)
        (setq tj3 (+ 1 tj3))))
    (setq m (1+ m))))
  
(defun entlist (os / ssl relist)
  (setq ssl (entget os))
  (setq relist (list (assoc 8 ssl)
                     (assoc 1 ssl)
                     (assoc 6 ssl)
                     (assoc 7 ssl)
                     (assoc 40 ssl)
                     (assoc 41 ssl)
                     (assoc 42 ssl)
                     (assoc 43 ssl)
                     (assoc 50 ssl)))
  relist)
(defun xcDB_cx(style / n m i s1 s2 &x &y)
  (setq m 0
        n (SSlength ss))
  (if (> n 2000)
    (setq n 2000
          cc t))
  (while (< m n)
    (setq s1 (ssname ss m))
    (setq i (+ 1 m))
    (DB_progress m n)
    (while (< i n)
      (setq s2 (ssname ss i))
      (if (and (DB_get_pt_1p s1) (DB_get_pt_1p s2) (= (vl-princ-to-string (entlist s1)) (vl-princ-to-string (entlist s2))))
      
        (if  (= style "LINE")
          (progn
                
            (if (isoneline_ s1 s2)
              (progn
                (DB_change_ent s1 10 &x)
                (DB_change_ent s1 11 &y)
                (entdel s2)
                (setq tj (+ 1 tj)))))
          (if  (and (= style "INSERT")
                    (< (distance (DB_get_pt_1p s1) (DB_get_pt_1p s2)) *zl))
        
            (progn
              (entdel s2)
              (setq tj2 (+ 1 tj2)))
      
            (if  (and (= style "TEXT")
                      
                      (< (distance (DB_get_pt_1p s1) (DB_get_pt_1p s2)) *zl))
                      
          
              (progn
                (entdel s2)
                (setq tj2 (+ 1 tj2)))))))
      
      (setq i (+ 1 i)))   
    (setq m (+ 1 m))))
  
(defun c:xccx (/ ss tj tj2 tj3 q1 q2 cc) ;消除重线
   
  (setq cc nil)
  (DB_setzl)
  (DB_closesnap)
  (prompt "\n选择要清理的范围：")
  (setq q1 (getpoint "\n第一角点："))
  (setq q2 (getcorner q1 "\n第二角点："))
  (setq tj 0
        tj2 0
        tj3 0)
  (setq ss (ssget "_C" q1 q2 '((0 . "LINE"))))
  (if ss
    (DB_cxzl))
  (setq ss (ssget "_C" q1 q2 '((0 . "LINE"))))
  (if ss
    (xcDB_cx "LINE"))
  (setq ss (ssget "_C" q1 q2 '((0 . "TEXT"))))
  (if ss
    (xcDB_cx "TEXT"))
  (setq ss (ssget "_C" q1 q2 '((0 . "INSERT"))))
  (if ss
    (xcDB_cx "INSERT"))
  ;(command "move" ss "" "0,0" "0,0")
  
  (princ "\n删除合并了[")
  (princ tj)
  (princ "]条线。")
  (princ "\n删除合并了[")
  (princ tj2)
  (princ "]个重复图元。")
  (princ "\n有[")
  (princ tj3)
  (princ "]条直线修正了角度。")
  (if cc
    (princ "\n选择超出2000个图元，只处理了前2000个。请重新选择。"))
  (DB_releasesnap)
  (princ))


(defun getwall_(x / ss_ s)
  (setq ss_ (ssget "c" x x '((0 . "line") (8 . "建筑-墙体*"))))
  
  (if (/= ss_ nil)
    (if (= (SSlength ss_) 1)
      (setq s (ssname ss_ 0))
      (setq s nil))
    
    (setq s nil)))
  


(defun hebing_(line1 DB_line2 / x1 y1 x2 y2 x y)
  (DB_get_pt_2p line1)
  (DB_array_2pt &x &y)
  (setq x1 &pt1)
  (setq y1 &pt2)
  (DB_get_pt_2p DB_line2)
  (DB_array_2pt &x &y)
  (setq x2 &pt1)
  (setq y2 &pt2)
  (if (> (distance x1 x2) (distance x2 y1))
    (setq x x1)
    (setq x y1))
  
  (if (> (distance x2 y1) (distance y1 y2))
    (setq y x2)
    (setq y y2))
  
  (entdel line1)
  (if (= (getvar "WORLDUCS") 0) 
    (progn
      (setq x (trans x 1 0)
            y (trans y 1 0))))
      
    
  
  (DB_change_ent DB_line2 10 x)
  (DB_change_ent DB_line2 11 y))



;根据四点修补墙线
(defun buxian_(p1 p2 p3 p4 / l1 l2 l3 l4)
  (setq l1 (getwall_ p1)
        l2 (getwall_ p2)
        l3 (getwall_ p3)
        l4 (getwall_ p4))
  (if (and l1 l2 l3 l4)
      (progn
        (hebing_ l1 l3)
        (hebing_ l2 l4)
        1)
      
      nil))
    
(defun c:xbqd(/ ss s1 s2 m n &x &y s1x s1y s2x s2y &pt1 &pt2)
   
  (prompt "\n选择要修补墙洞的边线：")
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
           
    (progn
      (command "undo" "be")
      (entdel s1)
      (entdel s2)
      (if (= (buxian_ s1x s1y s2x s2y) nil)
          (progn
            (entdel s1)
            (entdel s2)
            (prompt "\n选择的不是一个墙洞。")))
      (command "undo" "e"))
      
    
    (prompt "\n选择的不是一个墙洞。"))
  
  (princ)
  (princ))


;; (defun pattlist_(/ m str)
;;   (setq m 0)
;;   (setq str "")
;;   (while (> m -1)
;;     (if (assoc m pat_list)
;;       (progn
;;         (setq str (strcat str "\n[" (rtos m 2 0) "]" (nth 1 (assoc m pat_list))))
;;         (setq m (+ 1 m)))
      
;;       (setq m -1)))
    
;;   (alert str)
;;   (setq pt1 nil))
;; (defun c:dw(/ ss s1 s2 m n &x &y s1x s1y s2x s2y &pt1 &pt2 m1 m2 kd ang)
;;   (command "undo" "be")
;;   (prompt "\n选择要删除的门窗：")
;;   (prompt "\n")
;;   (setq ss (ssname (ssget ":S" '((0 . "INSERT") (8 . "建筑-门窗*,WINDOW"))) 0))
;;   (setq m1 (DB_get_ent ss 10))
;;   (setq kd (DB_get_ent ss 41))
;;   (setq ang (DB_get_ent ss 50))
;;   (if (< kd 100)
;;     (setq m2 (polar m1 ang (* kd 1000)))
;;     (setq m2 (polar m1 ang (/ kd 2))
;;           m1 (polar m1 ang (- 0 (/ kd 2)))))
  
;;   (entdel ss)
;;   (setq s1 (ssname (ssget "_C" m1 m1 '((0 . "LINE") (8 . "建筑-墙体*"))) 0)
;;         s2 (ssname (ssget "_C" m2 m2 '((0 . "LINE") (8 . "建筑-墙体*"))) 0))  
;;   (if (and s1 s2)
;;     (progn
;;       (DB_get_pt_2p s1)
;;       (DB_array_2pt &x &y)
;;       (setq s1x &pt1
;;             s1y &pt2)
      
;;       (DB_get_pt_2p s2)
;;       (DB_array_2pt &x &y)
;;       (setq s2x &pt1
;;             s2y &pt2)
      
      
;;       (if (and (< (abs (- (angle s1x s1y) (angle s2x s2y))) *zl)
;;               (< (abs (- (distance s1x s1y) (distance s2x s2y))) *zl))
              
;;         (progn
          
;;           (entdel s1)
;;           (entdel s2)
;;           (if (= (buxian_ s1x s1y s2x s2y) nil)
;;               (progn
;;                 (entdel s1)
;;                 (entdel s2)
;;                 (prompt "\n选择的不是一个墙洞。"))))
          
          
        
;;         (prompt "\n选择的不是一个墙洞。")))
;;     (prompt "\n删除孤立的门窗。"))
;;   (command "undo" "e")
;;   (princ)
;;   (princ))
(defun hatchzz()
  (setq h__ *h)
  (setq *h 100)
  (setq pm (ssadd s1))
  
  (DB_sethatch)
  (command "-HATCH" "P" "SOLID" "s" s1 "" "")
  (setq pm (ssadd (entlast) pm))
  (setq *h 50)
  (DB_sethatch)
  (command "-HATCH" "P" "钢筋混凝土" *h "" "s" s1 "" "")
  (setq pm (ssadd (entlast) pm))
  (setq *h 20)
  (DB_sethatch)
  (command "-HATCH" "P" "钢筋混凝土" *h "" "s" s1 "" "")
  (setq pm (ssadd (entlast) pm))
  (DB_make_block_noname pm pt1)
  (DB_movelayer "zz" (entlast))
  (setq *h h__))

;插入柱子
(defun c:crz(/ pt1 ss s1 ptl h__ pm)
  (if (= *column_w nil)
    (setq *column_w 600))
  (if (= *column_h nil)
    (setq *column_h 600))
  
  
  (while (= pt1 nil)
    (prompt (strcat "\n柱宽：<"
                    (rtos *column_w 2 0)
                    ">    柱高：<"
                    (rtos *column_h 2 0)
                    ">"))
    (initget "Width High Select")
    (setq pt1 (getpoint "\n异形柱[S] / 柱宽[W] / 柱高[H]："))
    (cond
      ((= pt1 "Width")
       (setq *column_w (DB_get_int_pt1 "柱宽" *column_w)))
      ((= pt1 "High")
       (setq *column_h (DB_get_int_pt1 "柱高" *column_h)))
      ((= pt1 "Select")
       (setq ss (ssget '((0 . "LWPOLYLINE"))))
       (setq m 0 n (SSlength ss))
       (DB_closesnap)
       (while (< m n)
        (setq s1 (ssname ss m))
        (DB_movelayer_name "0" s1)
        (setq ptl (DB_get_Plpoints s1))
        (setq pt1 (mapcar '(lambda (X Y) (* (+ X Y) 0.5)) (car ptl) (caddr ptl)))
        (hatchzz)
        
        (setq m (1+ m)))
       (DB_releasesnap))
      (t 
       (setq ptl (list (DB_offset_pt pt1 (- 0 (/ *column_w *h 2)) (- 0 (/ *column_h *h 2)))
                       (DB_offset_pt pt1 (- 0 (/ *column_w *h 2)) (/ *column_h *h 2))
                       (DB_offset_pt pt1 (/ *column_w *h 2) (/ *column_h *h 2))
                       (DB_offset_pt pt1 (/ *column_w *h 2) (- 0 (/ *column_h *h 2)))))
       (DB_plinebh ptl 0 "0")
       (setq s1 (entlast))
       (hatchzz)))))
       

(defun c:tcq(/ line_h ssl lx ly &s1 &s2 &sx1 &sy1 &sx2 &sy2 l1 l2 l3 l4 pt1 pat_list)       ;填充墙体
   
  (setq pat_list '(
                   (0 "实心填充")
                   (1 "普通砖")
                   (2 "钢筋混凝土")
                   (3 "混凝土")
                   (4 "空心砖")
                   (5 "耐火砖")
                   (6 "石膏板")
                   (7 "金属")
                   (8 "木材")
                   (9 "加气混凝土")
                   (10 "多孔材料")
                   (11 "焦渣矿渣")
                   (12 "防水材料")
                   (13 "毛石")
                   (14 "石膏板")
                   (15 "塑料")
                   (16 "饰面砖")
                   (17 "松散材料")
                   (18 "夯实土壤")
                   (19 "土壤")
                   (20 "网状材料")
                   (21 "焦渣矿渣")
                   (22 "玻璃")
                   (23 "砂灰土")
                   (24 "纤维材料")
                   (25 "砂石碎砖")
                   (26 "粉刷")))
    
  
  (prompt "\n选择你要填充的墙：")
  (setq line_h (ssname (ssget ":S" '((0 . "LINE") (8 . "建筑-墙体*"))) 0)) 
  (setq ssl (ENTGET line_h)
        lx (cdr (assoc 10 ssl))
        ly (cdr (assoc 11 ssl)))
   
  (if (= (getvar "WORLDUCS") 0)
    (progn
      (setq lx (trans lx 0 1))
      (setq ly (trans ly 0 1))))
    
  
  (if (pickwall lx ly (getmid lx ly))
    (progn
      ;(DB_array_2pt &sx1 &sy1)
      (setq l1 &sx1
            l2 &sy1)
      
      ;(DB_array_2pt &sx2 &sy2)
      (setq l3 &sy2
            l4 &sx2)
      
      (while (= pt1 nil)
        (prompt (strcat
                 "\n绘图比例： 1:<"
                 (rtos *h 2 0)
                 ">    填充图案：【"
                 (nth 1 (assoc *patt pat_list))
                 "<"
                 (rtos *patt 2 0)
                 ">】"))
        
        (initget 1 "Pattern Disp  ")
        (setq pt1 (getint (strcat "\n绘图比例【D】 / 图案列表【P】 / 图案代号<" (rtos *patt 2 0) ">")))
        
        (cond
          ((= pt1 "Disp") (DB_set_scale_pt1))
          ((= pt1 "Pattern") (DB_show_list pat_list 0))
          ((= pt1 "") nil)
          (T 
            (if (/= pt1 nil)
              (if (/= (assoc pt1 pat_list) nil)
                (setq *patt pt1)
                (setq pt1 nil))))))
              
            
          
        
      
      (DB_sethatch)
      (DB_closesnap)
      (if (= *patt 0)
        
        (command "-HATCH" "P" "SOLID" "w" "N" l1 l2 l3 l4 "c" "" "")
        (command "-HATCH" "P" (nth 1 (assoc *patt pat_list)) *h "" "w" "N" l1 l2 l3 l4 "c" "" ""))
      (DB_releasesnap))
        
      
    
    (prompt "不是一段墙，或墙太短。"))
  

  (princ)
  (princ))


(defun c:tcx(/ line_h m n ssl pt lx ly pt1 patt_ dis_ ang1 ang2 ang_ pat_list l1 l3 l4 l5 l6 lp hscal dish ll pm pl li ln ang_c chuidis chuidis_ ss pt_)      ;填充线

  (command "undo" "be")
  (setq pat_list '(
                   (0 "堡坎")
                   (1 "普通砖")
                   (2 "钢筋混凝土")
                   (3 "混凝土")
                   (4 "空心砖")
                   (5 "耐火砖")
                   (6 "石膏板")
                   (7 "金属")
                   (8 "木材")
                   (9 "加气混凝土")
                   (10 "多孔材料")
                   (11 "焦渣矿渣")
                   (12 "防水材料")
                   (13 "毛石")
                   (14 "石膏板")
                   (15 "塑料")
                   (16 "饰面砖")
                   (17 "松散材料")
                   (18 "夯实土壤")
                   (19 "土壤")
                   (20 "网状材料")
                   (21 "焦渣矿渣")
                   (22 "玻璃")
                   (23 "砂灰土")
                   (24 "纤维材料")
                   (25 "砂石碎砖")
                   (26 "粉刷")))
    
  
  ;选择直线或PL线，直到选中，用entsel读取点选位置。
  (setq pt1 nil
        pt2 nil)
  (while (= pt1 nil)
    (setq ss (entsel "\n选择你要填充的直线："))
    (setq line_h (car ss))
    (setq pt (cadr ss)) 
    (setq ssl (ENTGET line_h))
    (if (= (cdr (assoc 0 ssl)) "LWPOLYLINE")
      (setq pl (DB_get_Plpoints line_h)        ;读取PL线端点列表
            pt1 t)
      (if (= (cdr (assoc 0 ssl)) "LINE")
        (setq pl (list (cdr (assoc 10 ssl)) (cdr (assoc 11 ssl)))   ;直线两点坐标加入列表
              pt1 t))))
  (setq ln (length pl)
        li 0
        pm (ssadd)
        chuidis nil)
  (while (< (+ 1 li) ln)              ;逐段查找和选取点最近的线段，确定选取段角度
    (setq lx (nth li pl)
          ly (nth (+ 1 li) pl)
          chuidis_ (DB_get_per_point lx ly pt nil))
    (if (or (= chuidis nil) (< (distance pt chuidis_) (distance pt chuidis)))
      (setq chuidis chuidis_
            ang1 (angle lx ly)))
    (setq li (+ 1 li)))        
  
  (setq pt1 nil)
  (while (= pt1 nil)
    (prompt (strcat
             "\n绘图比例： 1:<"
             (rtos *h 2 0)
             ">    填充图案：【"
             (nth 1 (assoc *patt_x pat_list))
             "<"
             (rtos *patt_x 2 0)
             ">】"))
    
    (initget 1 "Pattern Disp Offset  ")
    (setq pt1 (getpoint pt (strcat "\n绘图比例【D】 / 偏移距离【O】 / 图案列表【P】 / <偏移方向>")))
    (cond
      ((= pt1 "Disp") (DB_set_scale_pt1))
      ((= pt1 "Offset") 
       (setq *offdis (atoi (DB_get_input "偏移距离" (rtos *offdis 2 0)))) 
       (setq pt1 nil))
      ((= pt1 "Pattern") 
       (DB_show_list pat_list 0) 
       (setq patt_ (atoi (DB_get_input "图案代号" (rtos *patt_x 2 0))))
       (if (/= (assoc patt_ pat_list) nil)
        (setq *patt_x patt_))
       (setq pt1 nil))
      ((= pt1 "") nil)
      (T (setq ang2 (angle pt pt1))
        (if (and (< ang1 pi) (>= ang1 0))
          (if (or (< ang2 ang1) (> ang2 (+ ang1 pi)))
            (setq ang_c -1)
            (setq ang_c 1))
          
          (if (and (< ang2 ang1) (< ang1 (+ ang2 pi)))
            (setq ang_c -1)
            (setq ang_c 1)))
        (if (and (<= *h 70) (> *h 30))
          (setq hscal "h50")
          (if (> *h 70)
            (setq hscal "h100")
            (setq hscal "h20")))
        (setq li 0)
        (while (< (+ 1 li) ln)

          (setq lx (nth li pl)
                ly (nth (+ 1 li) pl)
                ang1 (angle lx ly)
                ang_ (+ ang1 (* (/ pi 2) ang_c)))
          
            
          (cond
            ((= *patt_x 0) (setq m 0
                                n (/ (distance lx ly) (/ *offdis 2)))

              (while (<= m n)
                (setq l3 (polar lx ang1 (* m (/ *offdis 2))))
                (if (= (rem m 2) 0)
                  (setq l4 (polar l3 ang_ *offdis))
                  (setq l4 (polar l3 ang_ (/ *offdis 2))))
                
                
                (DB_line2 l3 l4)
                (setq pm (ssadd (entlast) pm))
                (setq m (+ m 1))))

            ((= *patt_x 4) (setq m 0
                                n (fix (/ (distance lx ly) (* *offdis 2))))
                  
              (if (> n 0)
                (progn
                  (setq dish (/ (distance lx ly) n))
        
                  (setq l1 lx)
                  (setq ll '())
                  (setq ll (cons l1 ll))
                  (while (< m n)
                    (setq l3 (polar l1 ang1 dish))
                    (setq l4 (polar l3 ang_ *offdis))
                    (setq ll (cons l3 (cons l4 ll)))
                    (setq l1 l3)
                    (setq m (+ m 1)))
                  
                  (DB_pline1 ll)
                  (setq pm (ssadd (entlast) pm)))))
            (t (setq l3 (polar ly ang_ *offdis)
                    l4 (polar lx ang_ *offdis))  
              (if (> li 0)
                (progn
                  (setq l5 (nth (- li 1) pl)
                        ang2 (angle l5 lx)
                        ang_ (+ ang2 (* (/ pi 2) ang_c))  
                        l5 (polar l5 ang_ *offdis)
                        l6 (polar lx ang_ *offdis)
                        lp (inters l3 l4 l5 l6 nil))  
                  (if lp
                    (setq l4 lp))))
              (if (< (+ li 2) ln)
                (progn          
                  (setq l6 (nth (+ li 2) pl)
                        ang2 (angle ly l6)
                        ang_ (+ ang2 (* (/ pi 2) ang_c))
                        l5 (polar ly ang_ *offdis)
                        l6 (polar l6 ang_ *offdis)
                        lp (inters l3 l4 l5 l6 nil))  
                  (if lp
                    (setq l3 lp))))  
              (DB_sethatch)
              (DB_closesnap)
              (command "-HATCH" "P" (nth 1 (assoc *patt_x pat_list)) *h (angtos ang1 0 4) "w" "N" lx ly l3 l4 "c" "" "")
              (setq pm (ssadd (entlast) pm))
              (DB_releasesnap)))
          (setq li (1+ li)))
        (if pm
          (progn
            (DB_make_block_noname pm ly)
            (DB_movelayer hscal (entlast))))
        )))
  
  (command "undo" "e")
  (princ)
  (princ))


(defun c:gxc(/ sel pt &x &y pz s1 ps)         ;改线段长度
 
  (while (= pt nil)
    (setq sel (entsel "\n选择改变长度的线段："))
    (if (/= sel nil) 
      (progn 
        (setq s1 (car sel))
        (if (= (cdr (assoc 0 (entget s1))) "LINE")
          (progn
            (DB_get_pt_2p s1)
            (setq pt (DB_get_per_point &x &y (cadr sel) nil)))))))
   
  (if (< (distance pt &x) (distance pt &y))
    (setq ps &x)
    (setq ps &y))
  
  (while (= pz nil)
    (setq pz (getpoint ps "修改端点至：")))
  
  (setq pz (DB_get_per_point &x &y pz nil))
  (if (< (distance pt &x) (distance pt &y))
    (DB_change_ent s1 10 pz)
    (DB_change_ent s1 11 pz)))
  
