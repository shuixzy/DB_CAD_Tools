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
  (DB_get_Plpoints3d s1)
  ;更改图元某一参数
  (DB_change_ent s1 int cont)
  ;取得动态块原名
  (DB_get_realname blk)
  ;按比例偏移坐标
  (DB_offset_pt pt x y)
  ;取得随机数值
  (DB_random site)
  ;根据矩阵转换坐标
  (DB_get_trans pts m)
  ;在表的末尾加个元素
  (DB_conslast s1 list)
  ;获取离多段线最近段顶点，可输入pl线或点表
  (DB_get_PLnear ss pt)

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
  
  ;打断直线
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

(defun c:fgw
       (/ wg_ pt1 pt2 wgx wgy incX incXn incY incYn n lx ly hx hy)
  (if (= *wg nil)
    (setq *wg 20))
  

  (setq
    wg_  (getint  (strcat "\n输入生成网格大小[" (rtos *wg 2 0) "]米:")))
  
  


  (if (/= wg_ nil)
    (setq *wg wg_))
  

  (setq  pt1 nil
   pt2 nil)
  

  (while (or (= pt1 nil) (= pt2 nil))
    (setq pt1 (getpoint "\n框选生成网格的范围："))
    (if  (/= pt1 nil)
      (setq pt2 (getcorner pt1 "\n另一个角点："))))
    
  


  (setq  incX (- (car pt2) (car pt1))
   incY (- (cadr pt2) (cadr pt1)))
  

  (if (> incX 0)
    (setq wgx (/ *wg *sca_)
     hx  (* *h 4))
    

    (setq wgx (- 0 (/ *wg *sca_))
     hx  (- 0 (* *h 4))))
    
  


  (if (> incY 0)
    (setq wgy (/ *wg *sca_)
     hy  (* *h 4))
    

    (setq wgy (- 0 (/ *wg *sca_))
     hy  (- 0 (* *h 4))))
    
  


  (setq  incXn (fix (abs (/ incX wgx)))
   incYn (fix (abs (/ incY wgy)))
   n     1)
  

  (while (>= incXn n)
    (setq lx (polar pt1 0 (* n wgx))
     ly (polar lx (* pi 0.5) (* (+ incYn 1) wgy)))
    

    (DB_line3 lx ly "fg")
    (DB_make_text8 (polar lx (* pi 0.5) hx)
         (strcat "X" (rtos n 2 0))
         "DB文字"
         (* *h 3.5)
         0.8
         0
         "fg"
         4)
    

    (DB_make_text8 (polar ly (* pi 1.5) hx)
         (strcat "X" (rtos n 2 0))
         "DB文字"
         (* *h 3.5)
         0.8
         0
         "fg"
         4)
    

    (setq n (+ n 1)))
  

  (setq n 1)
  (while (>= incYn n)
    (setq lx (polar pt1 (* pi 0.5) (* n wgy))
     ly (polar lx 0 (* (+ incXn 1) wgx)))
    

    (DB_line3 lx ly "fg")
    (DB_make_text8 (polar lx 0 hy)
         (strcat "Y" (rtos n 2 0))
         "DB文字"
         (* *h 3.5)
         0.8
         0
         "fg"
         4)
    

    (DB_make_text8 (polar ly pi hy)
         (strcat "Y" (rtos n 2 0))
         "DB文字"
         (* *h 3.5)
         0.8
         0
         "fg"
         4)
    

    (setq n (+ n 1)))
  

  (princ)
  (princ))



(defun c:ysbg (/ ss s1 pt1 bg ed ssl)
  (setq  bg  nil
   pt1 nil)
  

  (while (= bg nil)
    (prompt "\n选择地形标高：")
    (setq ss (ssget "_+.:E:S"))
    (setq s1 (ssname ss 0))
    (SETQ ssl (ENTGET s1))
    (if  (= (CDR (ASSOC 2 ssl)) "ElevaPos")
      (progn
       (setq ed (entget (entnext (cdr (assoc -1 ssl)))))
       (setq bg (atof (cdr (assoc 1 ed)))))
      

      (setq bg (atof (cdr (assoc 1 ssl))))))
    
  


  (while (= pt1 nil)
    (setq pt1 (crosspt (getpoint (strcat "\n选择网格交点:")))))
  

  (DB_make_text8 (polar pt1 0 (* *h 1))
       (rtos bg 2 2)
       "DB文字"
       (* *h 1.5)
       0.8
       0
       "ys"
       6)
  

  (princ)
  (princ))



(defun c:sjbg (/ ss s1 pt1 bg ed ssl goon)
  (setq  bg  nil
   pt1 nil)
  

  (while (= bg nil)
    (prompt "\n选择设计标高：")
    (setq ss (ssget "_+.:E:S"))
    (setq s1 (ssname ss 0))
    (SETQ ssl (ENTGET s1))
    (if  (= (CDR (ASSOC 2 ssl)) "ElevaPos")
      (progn
       (setq ed (entget (entnext (cdr (assoc -1 ssl)))))
       (setq bg (atof (cdr (assoc 1 ed)))))
      

      (setq bg (atof (cdr (assoc 1 ssl))))))
    
  
  (setq goon t)

  (while goon
    (setq pt1 (crosspt (getpoint (strcat "\n选择网格交点:"))))
    (if pt1
      (progn
        (DB_make_text8 (polar (polar pt1 0 (* *h 1)) (* pi 0.5) (* *h 0.3))
            (rtos bg 2 2)
            "DB文字"
            (* *h 1.5)
            0.8
            0
            "sj"
            0)
        (sgbg_ (entlast)))
      (setq goon nil)))  

  (princ)
  (princ))

(defun sgbg_(so / ss bg s1 pt1 ssl)
  (setq bg (dqbg so))
  (setq ss (ssget "c" (DB_offset_pt (DB_get_pt_1p so) -2 2) (DB_offset_pt (DB_get_pt_1p so) 2 -2) '((0 . "TEXT") (8 . "建筑-土方-原始"))))
  (if ss
    (progn
      (setq s1 (ssname ss 0))
      (SETQ ssl (ENTGET s1))
      (setq bg (- bg (dqbg s1)))
      (setq pt1 (polar (cdr (assoc 11 ssl)) pi (* *h 1)))
      (DB_make_text8 (polar (polar pt1 pi (* *h 1)) (* pi 0.5) (* *h 0.3))
          (rtos bg 2 2)
          "DB文字"
          (* *h 1.5)
          0.8
          0
          "sg"
          2))))

(defun c:sgbg (/ ss s1 goon)
  (setq goon t)
  (while goon
    (setq s1  nil
          ss  nil)
    
  
    (prompt "\n选择设计标高：")
    (setq ss (ssget "_+.:E:S" '((0 . "TEXT") (8 . "建筑-土方-设计"))))
    (if ss
      (progn
        (setq s1 (ssname ss 0))
        (sgbg_ s1))
        
      (setq goon nil)))
  

  (princ)
  (princ))

(defun crosspt(pt / bpt ss s1 s2 &x &y x1 x2 y1 y2)
  (if pt
    (progn
      (setq ss (ssget "c" (DB_offset_pt pt -3 3) (DB_offset_pt pt 3 -3) '((0 . "LINE") (8 . "建筑-土方-网格"))))
      (if (= (sslength ss) 2)
        (progn
          (setq s1 (ssname ss 0)
                s2 (ssname ss 1))
          (DB_get_pt_2p s1)
          (setq x1 &x
                y1 &y)
          (DB_get_pt_2p s2)
          (setq x2 &x
                y2 &y)
          (setq npt (inters x1 y1 x2 y2))
          npt)
        nil))
    nil))       
          

(defun jsld (bg1 bg2 / py)
  (if (< (* bg1 bg2) 0)
    (setq py (abs (/ (* bg1 1.0) (- bg1 bg2))))
    (setq py nil))
  

  py)


(defun jsj4 (bg1 bg2 bg3 bg4 wg / tj)
  (setq  tj (* (* wg wg 1.0) 0.25 (+ bg1 bg2 bg3 bg4))) 
  tj)


(defun jsj3 (bg1 bg2 bg3 wg / tj)
  (setq tj (/ (* (jsld bg1 bg2) (jsld bg1 bg3) wg wg bg1) 6.0))
  tj)

(defun jsj3t (bg1 bg2 bg3 wg / tj)
  (setq tj (/ (* (jsld bg2 bg3) wg wg (+ bg1 bg2)) 6.0))
  tj)


(defun jsj5 (bg1 bg2 bg3 bg4 wg / tj)
  (setq
    tj (* (- (* wg wg 2.0) (* (jsld bg4 bg1) (jsld bg4 bg3) wg wg))
        (+ bg1 bg2 bg3)
        0.1))
       
  
  tj)

(defun jsj5t (bg1 bg2 bg3 bg4 wg / tj)
  (setq tj (* (+ (jsld bg3 bg4) 1) wg wg (+ bg1 bg2 bg3) 0.125))
  tj)

(defun jsj4t (bg1 bg2 bg3 bg4 wg / tj)
  (setq  tj (/ (* (+ (jsld bg1 bg2) (jsld bg4 bg3)) wg wg (+ bg1 bg4))
             8.0))

  tj)


(defun dqbg (ss / bg ssl)
  (setq ssl (ENTGET ss))
  (setq bg (atof (cdr (assoc 1 ssl))))
  bg)

(defun loop4 (m / n)
  (setq n (+ m 1))
  (if (> n 3)
    (setq n 0))
  
  n)

(defun tfjs (bg1 bg2 bg3 bg4 wg / wf tf tl rt bglist n m m1 m2 m3 m4)
  (setq wf 0)
  (setq tf 0)
  (setq  tl 0
   n  0)
  
  (setq bglist (list bg1 bg2 bg3 bg4))
  (if (and (= (jsld bg1 bg2) nil)
       (= (jsld bg2 bg3) nil)
       (= (jsld bg3 bg4) nil)
       (= (jsld bg4 bg1) nil))
      

    (setq wf (jsj4 bg1 bg2 bg3 bg4 wg))
    (while (< n 4)
      (setq m1 (nth n bglist)
       m  (loop4 n)
       m2 (nth m bglist)
       m  (loop4 m)
       m3 (nth m bglist)
       m  (loop4 m)
       m4 (nth m bglist))
      (if (= m1 0)
        (if (= (jsld m2 m3) nil)
          (setq  wf (jsj3t m1 m4 m3 wg)
                 tf (jsj5t m1 m2 m3 m4 wg))
    
          (if (= (jsld m3 m4) nil)
            (setq wf (jsj3t m1 m2 m3 wg)
                  tf (jsj5t m1 m4 m3 m2 wg)))))
      
    
  
        ;; (if (and (= (jsld m1 m2) nil) (= (jsld m2 m3) nil))
        ;;   (setq  tf (jsj3 m4 m1 m3 wg)
        ;;          wf (jsj5 m1 m2 m3 m4 wg))
    
        ;;   (if (and (= (jsld m1 m2) nil) (= (jsld m3 m4) nil))
        ;;     (setq tf (jsj4t m4 m1 m2 m3 wg)
        ;;           wf (jsj4t m2 m3 m4 m1 wg)))))

      (if (and (= wf 0) (= tf 0))
        (setq n (+ n 1))
        (setq n 4))))
      
    
  (if (and (= wf 0) (= tf 0))   
    (if  (and (= (jsld bg1 bg2) nil) (= (jsld bg2 bg3) nil))
      (setq tf (jsj3 bg4 bg1 bg3 wg)
            wf (jsj5 bg1 bg2 bg3 bg4 wg))
      (if (and (= (jsld bg2 bg3) nil) (= (jsld bg3 bg4) nil))
       (setq tf (jsj3 bg1 bg2 bg4 wg)
             wf (jsj5 bg2 bg3 bg4 bg1 wg))
       (if (and (= (jsld bg3 bg4) nil) (= (jsld bg4 bg1) nil))
         (setq  tf (jsj3 bg2 bg3 bg1 wg)
                wf (jsj5 bg3 bg4 bg1 bg2 wg))
         (if (and (= (jsld bg4 bg1) nil) (= (jsld bg1 bg2) nil))
           (setq tf (jsj3 bg3 bg4 bg2 wg)
                 wf (jsj5 bg4 bg1 bg2 bg3 wg))
           (if  (and (= (jsld bg1 bg2) nil) (= (jsld bg3 bg4) nil))
             (setq tf (jsj4t bg4 bg1 bg2 bg3 wg)
                   wf (jsj4t bg2 bg3 bg4 bg1 wg))
             (if (and (= (jsld bg2 bg3) nil) (= (jsld bg4 bg1) nil))
              (setq tf (jsj4t bg1 bg2 bg3 bg4 wg)
                    wf (jsj4t bg3 bg4 bg1 bg2 wg)))))))))


  (if (> wf 0)
    (setq tl wf
     wf tf
     tf tl))

  (setq rt (list (- 0 wf) (- 0 tf)))
  rt)


(defun jdzb (ss / pt ssl)
  (SETQ ssl (ENTGET ss))
  (setq pt (crosspt (cdr (assoc 11 ssl))))
  pt)
     
  





(defun lingdian  (zb1 zb2 bg1 bg2 / pt)
  (setq  pt (polar zb1
             (angle zb1 zb2)
             (* (jsld bg1 bg2) (distance zb1 zb2))))
     
  


  pt)



(defun c:jstf (/     ss     pt1   n  m   bx    by     bx1   by1   bx2
               by2   bg1   bg2   bg3   bg4   bg     zb   zb1   zb2
               zb3   zb4   linglist    tf goon wg)
        

  (setq goon t
        wg (/ *wg *sca_))
  


  (while goon
    (setq bg1 nil
          bg2 nil
          bg3 nil
          bg4 nil
          zb1 nil
          zb2 nil
          zb3 nil
          zb4 nil
          linglist nil
          tf nil
          bx nil
          by nil
          n 0
          m 0)
    (setq pt1 (getpoint "\n选择一个区域的中心点："))
    (if pt1
      (setq ss (ssget "c" (polar (polar pt1 pi wg) (* pi 0.5) wg) (polar (polar pt1 0 wg) (* pi 1.5) wg) '((0 . "TEXT") (8 . "建筑-土方-施工")))
            m  0
            n  (SSlength ss))
      (setq goon nil))
    

    (if  (and (> n 2) (< n 5))
      (progn
       (setq bx1 nil
             by1 nil
             bx2 nil
             by2 nil)
  

       (while (< m n)
         (setq s1 (ssname ss m))
         (setq bx (car (jdzb s1)))
         (setq by (cadr (jdzb s1)))
         (if (or (= bx1 nil) (< bx1 bx))
           (setq bx1 bx))
    

         (if (or (= bx2 nil) (> bx2 bx))
           (setq bx2 bx))
    

         (if (or (= by1 nil) (< by1 by))
           (setq by1 by))
    

         (if (or (= by2 nil) (> by2 by))
           (setq by2 by))
    

         (setq m (+ m 1)))
  

       (setq m 0)
       (while (< m n)
         (setq s1 (ssname ss m))
         (setq zb (jdzb s1))
         (setq bg (dqbg s1))
         (if (< (distance (list bx1 by1) zb) (* *wg 0.03))
           (setq bg1 bg
            zb1 zb)
      

           (if  (< (distance (list bx1 by2) zb) (* *wg 0.03))
             (setq bg2  bg
              zb2  zb)
        

             (if (< (distance (list bx2 by2) zb) (* *wg 0.03))
              (setq bg3 bg
                    zb3 zb)
    

              (if (< (distance (list bx2 by1) zb) (* *wg 0.03))
                (setq  bg4 bg
                 zb4 zb)))))
      
    
        
      
    





         (setq m (+ m 1)))
  

       (if (= bg1 nil)
         (setq  bg1 0
          zb1 (list bx1 by1)))
    
  


       (if (= bg2 nil)
         (setq  bg2 0
          zb2 (list bx1 by2)))
    
  


       (if (= bg3 nil)
         (setq  bg3 0
          zb3 (list bx2 by2)))
    
  


       (if (= bg4 nil)
         (setq  bg4 0
          zb4 (list bx2 by1)))
    
  


       (if (= bg1 0)
         (setq linglist (append linglist (list zb1))))
  

       (if (jsld bg1 bg2)
         (setq  linglist
          (append linglist (list (lingdian zb1 zb2 bg1 bg2)))))
    
  


       (if (= bg2 0)
         (setq linglist (append linglist (list zb2))))
  

       (if (jsld bg2 bg3)
         (setq  linglist
          (append linglist (list (lingdian zb2 zb3 bg2 bg3)))))
    
  


       (if (= bg3 0)
         (setq linglist (append linglist (list zb3))))
  

       (if (jsld bg3 bg4)
         (setq  linglist
          (append linglist (list (lingdian zb3 zb4 bg3 bg4)))))
    
  


       (if (= bg4 0)
         (setq linglist (append linglist (list zb4))))
  

       (if (jsld bg4 bg1)
         (setq  linglist
          (append linglist (list (lingdian zb4 zb1 bg4 bg1)))))
    
  


       (setq m  1
             n  (length linglist))
  

       (if (> n 1)
         (while (< m n)
           (DB_line3 (nth (- m 1) linglist) (nth m linglist) "ld")
           (setq m (+ m 1))))
    
  
       (setq tf (tfjs bg1 bg2 bg3 bg4 (* (distance zb1 zb2) *sca_)))
       (if (/= (car tf) 0)
         (DB_make_text8 (polar (list (/ (+ bx1 bx2) 2) (/ (+ by1 by2) 2))
                         (* pi 0.5)
                         (* *h 0.5))
         

              (strcat "W " (rtos (car tf) 2 1))
              "DB文字"
              (* *h 2.5)
              0.8
              0
              "tf"
              1))
    
  
       (if (/= (cadr tf) 0)
         (DB_make_text8 (polar (list (/ (+ bx1 bx2) 2) (/ (+ by1 by2) 2))
                         (* pi 1.5)
                         (* *h 0.5))
         

              (strcat "T " (rtos (cadr tf) 2 1))
              "DB文字"
              (* *h 2.5)
              0.8
              0
              "tf"
              7))
       (if (> n 2)
         (alert "此区块为双向坡度，需要手动计算确定挖填方量。")))))
  
      
    
  
  (princ)
  (princ))

(defun c:tftj( / wf tf s1 ss m n mcn tl pt1 pt2)
  (prompt "\n框选所有需要计算的土方数据：")
  (setq ss (ssget '((0 . "TEXT") (8 . "建筑-土方-土量") (1 . "W #*,T -#*"))))
  (setq n (sslength ss)
        m 0
        wf 0
        tf 0)   
    
  (if (> n 0)
    (while (< m n)
      (setq s1 (ssname ss m))
      ;(setq mcn (cdr (assoc 1 (entget (entnext (cdr (assoc -1 (ENTGET s1))))))))
      (setq mcn (cdr (assoc 1 (entget s1))))
      (setq tl (atof (substr mcn 3)))
      (if (wcmatch mcn "W *")
        (setq wf (+ wf tl))
        (setq tf (+ tf tl)))
      (setq m (+ m 1))))

  (setq pt1 nil)
  (while (= pt1 nil)
    (initget "Disp")
    (setq pt1 (getpoint "\n显示比例【D】/ 放置点："))
    (cond
      ((= pt1 "Disp") (DB_set_scale_pt1))
      (t nil)))
  (DB_make_midtext4 (DB_offset_pt pt1 45 2.5) "土 方 平 衡 表" (* *h 1.5 3.5) "wz")
  (DB_line3 pt1 (DB_offset_pt pt1 90 0) "wz")
  (setq pt2 (DB_offset_pt pt1 0 -4))
  (DB_offset_text pt2 15 0 "挖方（立方米）")
  (DB_offset_text pt2 45 0 "填方（立方米）")
  (DB_offset_text pt2 75 0 "总计（立方米）")
  (DB_line3 (DB_offset_pt pt1 0 -5) (DB_offset_pt pt1 90 -5) "wz")
  (setq pt2 (DB_offset_pt pt1 0 -9))
  (DB_offset_text pt2 15 0 (strcat (rtos wf 2 1)))
  (DB_offset_text pt2 45 0 (strcat (rtos tf 2 1)))
  (setq tl (+ wf tf))
  (if (> tl 0)
    (DB_offset_text pt2 75 0 (strcat "余土：" (rtos tl 2 1)))
    (DB_offset_text pt2 75 0 (strcat "缺土：" (rtos (- 0 tl) 2 1))))
  (DB_line3 (DB_offset_pt pt1 0 -10) (DB_offset_pt pt1 90 -10) "wz")
  (DB_line3 pt1 (DB_offset_pt pt1 0 -10) "wz")
  (DB_line3 (DB_offset_pt pt1 30 0) (DB_offset_pt pt1 30 -10) "wz")
  (DB_line3 (DB_offset_pt pt1 60 0) (DB_offset_pt pt1 60 -10) "wz")
  (DB_line3 (DB_offset_pt pt1 90 0) (DB_offset_pt pt1 90 -10) "wz")
  (princ)
  (princ))
        

