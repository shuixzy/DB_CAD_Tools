;��������
(defun nouse()
  ;����
  (DB_debug)
  ;�����б�
  (DB_helpinfo)
  ;;;;;;;;;;;;����;;;;;;;;;;;;;
  ;��ʼ���� 
  (DB_svar)
  ;�������ͼ��
  (DB_sethatch)

  ;�رղ�׽ 
  (DB_closesnap)
  ;�ָ���׽ 
  (DB_releasesnap)

  ;�����ݴ�ֵȫ�ֱ���*zl
  (DB_setzl)
  ;������ͼ��������ȫ�ֱ���*sca_ 
  (DB_set_unit_pt1)
  ;���û�ͼ����ȫ�ֱ���*h 
  (DB_set_scale_pt1)
  (DB_set_scale_inpt)
  ;����ȫ�ֱ������*eva_ 
  (DB_set_eva_pt1)
  ;���û�г�ʼ���������ã���������ʾ����
  (DB_init_scale int)

  ;;;;;;;;;;;;;;�������;;;;;;;;;;;
  ;��������
  (DB_get_int_pt1 str def)
  ;����ʵ��
  (DB_get_real_pt1 str def)
  ;��ȡ�ļ�����
  (DB_read_file filename)
  ;��������ļ���modeΪ"d",filenameΪĿ¼������������Ŀ¼��,modeΪ"f",�����ļ���,modeΪ"a,w,r"ֱ�Ӵ��ļ���
  (DB_open_file filename mode)
  ;�������,outΪ������ʾ���Ŀ¼.
  (DB_write_file filename str out)
  ;�Ի�����������
  (DB_get_input tag def)
  ;�Ի�������������
  (DB_get_Minput tags)
  ;ȷ���Ƿ�
  (DB_yesorno str def)
  ;��ʾ�б�
  (DB_show_list lst)

  ;;;;;;;;;;;;;;����;;;;;;;;;;;;;
  ;��ȡͼԪ����
  (DB_cx ssl)
  ;�Ա�ͼԪ����
  (DB_dbxx ssl1 ssl2)
  ;��ʾ����(REPEAT (SETQ i 0) (DB_progress (SETQ i (1+ i)) 100000))
  (DB_progress i n)
  ;��ȡ������������,���ر�
  (DB_cxb s1)
  ;��ȡ��һͼԪ�����ڵ����ԣ���(DB_dizhen ͼԪ��) ����ͼԪ��
  (DB_dizhen ssl)
  ;��ȡͼԪ����(DB_tysx ͼԪ��)���ر�
  (DB_tysx s1)
  ;��ȡͼԪ��������(DB_get_att ͼԪ��)���ر�
  (DB_get_att s1)
  ;ʰȡ���С
  (DB_getPickboxHeight)
  ;��ֱ�ߴ��㡣
  (DB_get_per_point pt1 pt2 pt onseg)
  ;��㵽ֱ�߻�Բ�����㡣���޴��㣬�򷵻�nil
  (DB_get_per_ent s1 pt)
  ;ȡ��ͼԪ����
  (DB_get_pt_2p s1)
  (DB_get_pt_1p s1)
  ;��ȡ�ն��е�
  (DB_get_midpoint line)
  ;������������  ���� &pt1 &pt2
  (DB_array_2pt pt1 pt2)
  ;�ϲ�ѡ��
  (DB_merge_ss ss1 ss2)
  ;���������ǵ��þ����ĸ��ǵ����꣬�����½���ʱ��˳��
  (DB_get_box pt1 pt2)
  ;��ȡͼԪĳһ����
  (DB_get_ent s1 int)
  ;��ȡ����߶���
  (DB_get_Plpoints s1)
  ;����ͼԪĳһ����
  (DB_change_ent s1 int cont)
  ;ȡ�ö�̬��ԭ��
  (DB_get_realname blk)
  ;������ƫ������
  (DB_offset_pt pt x y)
  ;ȡ�������ֵ
  (DB_random site)

  ;;;;;;;;;;;;;;;����;;;;;;;;;;;;;;
  ;���ݵ������
  (DB_drawlist pts)
  ;���Ʋ�׽���
  (DB_snapmark pt)
  ;�ƶ����Կ�
  (DB_moveblock blk pt)
  (DB_moveblock blk pt1 pt2)
  ;��̬��ʾ�����ע
  (DB_dis_zb blk)
  ;��̬��ʾ���Կ�
  (DB_dis_block blk str1 str2)
  ;��̬��ʾ�Ŵ�
  (DB_dis_WD blk)
  ;��̬��ʾ��߱�ע
  (DB_dis_bg)
  ;����
  (DB_line2 pt1 pt2)
  (DB_line3 pt1 pt2 layer)
  ;�������
  (DB_pline1 lst)
  (DB_plinel lst layer)
  (DB_plinew lst width)
  (DB_pline3 lst width layer)
  ;���պ�pl��
  (DB_plinebh lst width layer)
  (DB_plinejt lst layer)
  ;��������
  (DB_draw_lines lst layer)
  
  ;���ֱ�� //δ���
  (DB_break_line line pt1 pt2)
  ;��ĸ����
  (DB_nextnum str)

  ;����ͼ��
  (DB_EntmakeLayer name color width)
  ;�½�ͼ��
  (DB_makelayer layer)
  ;�ƶ���ָ��ͼ�� 
  (DB_movelayer layer s1)
  (DB_makelayer_name name s1)
  
  ;��������
  (DB_make_text2 pt str)
  (DB_make_text3 pt str layer)
  (DB_make_text4 pt str heigh layer)
  (DB_make_midtext2 pt str)
  (DB_make_midtext3 pt str layer)
  (DB_make_midtext4 pt str heigh layer)
  (DB_make_text8 pt str style heigh weigth ang layer pos)
  ;ƫ���������
  (DB_offset_text pt x y)

  ;����������ʽ 
  (DB_make_style style)
  (DB_make_style3 style heigh width)
  (DB_make_style5 style heigh width shx shx)
  
  ;����������
  (DB_make_block_noname ss pt)
  ;�Զ����ɿ�
  (DB_make_block)
  ;�����
  (DB_insert_block2 blk pt)
  (DB_insert_block3 blk pt layer)
  (DB_insert_block4 blk pt layer ang)
  (DB_insert_block5 blk pt layer ang scale)
  (DB_insert_block blk pt layer ang x y z)
  
  ;���ɵ�
  (DB_make_pt pt)
  ;��������
  (DB_make_att (pt tag def style layer h w color))

  ;���ɱ�ע��ʽ //δ���
  (DB_make_dimstyle name style))
  
;=============
(defun setwdwidth_ (str / w__)    ;�����Ŵ�����
    (prompt (strcat "\n" str "����<" (rtos width_ 2 0)))
    (setq w__ (getint ">:"))
    (if (/= w__ nil)
        (setq width_ w__))
    
    (if (> (+ width_ duo_) wallwidth) 
        (setq width_ (- wallwidth duo_)))
    
    (if (= str "��")
        (setq *wall_menkuan width_)
        (setq *wall_chuangkuan width_))
    
    (setq pt1 nil))
(defun setwdstep_ (str / w__)    ;�����Ŷ�ݽ�
    (prompt (strcat "\n" str "�ݽ���<" (rtos duo_ 2 0)))
    (setq w__ (getint ">:"))
    (if (/= w__ nil)
        (setq duo_ w__))
    
    (if (> (+ width_ duo_) wallwidth) 
        (setq width_ (- wallwidth duo_)))
    
    (if (= str "��")
        (setq *wall_menkuan width_
              *wall_menduo duo_)
        (setq *wall_chuangkuan width_
              *wall_chuangduo duo_))
    
    (setq pt1 nil))


(defun setduowidth_ (str / w__ dk dkn)    ;�����Ŵ������
    (if (< duo_ 0)
        (setq dk (strcat (rtos (- 0 duo_) 2 0) "�ȷ�"))
        (setq dk (rtos duo_ 2 0)))
    (prompt (strcat "\n����" str "���(���븺����ʾ�ȷָ���)��<" dk))
    (setq w__ (getint ">:"))
    (if (/= w__ nil)
        (setq duo_ w__))
    
    (if (> (+ width_ duo_) wallwidth) 
        (setq width_ (- wallwidth duo_)))

    (if (< duo_ 0)
        (progn (setq dkn (- 0 duo_))
            (if (> dkn (/ wallwidth width_)) 
                (setq duo_ (- 0 (fix (/ wallwidth width_)))))))
                
    
    (if (= str "��") 
        (progn 
            (setq *wall_menkuan width_)
            (setq *wall_menduo duo_))
        
        (progn
            (setq *wall_chuangkuan width_)
            (setq *wall_chuangduo duo_)))
        
    
    (setq pt1 nil))


(defun changestyle(/ getlx clist)
    (if (= str "��")
        (setq clist *Door_list)
        (setq clist *Window_list))
    (DB_show_list clist 1)
    (setq getlx (atoi (DB_get_input "�����Ŵ����ʹ���" (rtos sty_ 2 0))))
    (if (= (assoc getlx clist) nil)
        (setq getlx 1))
    (setq sty_ getlx)
    (if (= str "��")
        (setq *Door_style sty_)
        (setq *Window_style sty_))
    
    (setq pt1 nil))


(defun getmid(x y / m_x m_y)
    (setq m_x (* (+ (car x) (car y)) 0.5))
    (setq m_y (* (+ (cadr x) (cadr y)) 0.5))
    ;(setq &pt (list m_x m_y))
    (list m_x m_y))


(defun open_wd(str style / ep line_open pt1 sty_ lx ly %l0 &x &y width_ wallwidth duo_ &x1 &x2 &y1 &y2 s1 s2 dk m &sx1  &sy1    &sx2    &sy2)     ;ѡǽ����
    (setq line_open nil)
    (while (= line_open nil)
        (setq ep (entsel (strcat "\nѡ����Ҫ����<" str ">��ǽ��")))
        (setq line_open (car ep))
        (setq ssl (ENTGET line_open))
        (if (or (/= (cdr (assoc 0 ssl)) "LINE") (not (wcmatch (cdr (assoc 8 ssl)) "����-ǽ��*")))
            (setq line_open nil)
            (progn
                (setq ept (cadr ep))
                (setq lx (cdr (assoc 11 ssl))
                      ly (cdr (assoc 10 ssl)))
                (pickwall lx ly ept)
                (setq lx &sx1 ly &sy1))))
                

    (setq wallwidth (distance lx ly))
    
    
    (if (= str "��") 
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
            (if (= str "��")
                (setq *wall_menkuan width_)
                (setq *wall_chuangkuan width_))))
            
        
    
    
    (while (= pt1 nil)
         (if (< duo_ 0)
           (setq dk (strcat (rtos (- 0 duo_) 2 0) "�ȷ�"))
           (setq dk (rtos duo_ 2 0)))
     (prompt (strcat "\n" 
                     str
                     "����<"
                     (rtos width_ 2 0)
                     ">;   ǽ�����<"
                     dk
                     ">;   "
                     str
                     "�ͣ�["
                     (nth 1 (assoc sty_ style))
                     "]"))
                
        
     (initget "Width Duo Style")
     (setq pt1 (getpoint "\n���ȡ�W�� �� ǽ�⡾D�� / ���͡�S�� �� < ���� >:"))
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
    
   
 (if (and (= str "��") (= sty_ 2))
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
            
(defun dtopen_wd(str style / ep line_open pt1 sty_ lx ly %l0 &x &y width_ wallwidth duo_ &x1 &x2 &y1 &y2 s1 s2 m &sx1  &sy1    &sx2    &sy2)     ;ѡǽ����
    (setq line_open nil)
    (while (= line_open nil)
        (setq ep (entsel (strcat "\nѡ����Ҫ����<" str ">��ǽ��")))
        (setq line_open (car ep))
        (setq ssl (ENTGET line_open))
        (if (or (/= (cdr (assoc 0 ssl)) "LINE") (not (wcmatch (cdr (assoc 8 ssl)) "����-ǽ��*")))
            (setq line_open nil)
            (progn
                (setq ept (cadr ep))
                (setq lx (cdr (assoc 11 ssl))
                      ly (cdr (assoc 10 ssl)))
                (pickwall lx ly ept)
                (setq lx &sx1 ly &sy1))))
                

    (setq wallwidth (distance lx ly))
    
    
    (if (= str "��") 
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
            (if (= str "��")
                (setq *wall_menkuan width_)
                (setq *wall_chuangkuan width_))))
            
        
    
    
    (while (= pt1 nil)
     (prompt (strcat "\n" 
                     str
                     "����<"
                     (rtos width_ 2 0)
                     ">;   "
                     "�ݽ���<"
                     (rtos duo_ 2 0)
                     ">;   "
                     str
                     "�ͣ�["
                     (nth 1 (assoc sty_ style))
                     "]"))
                
        
     (initget 1 "Width sTep Style  ")
     (setq pt1 (getkword "\n���ȡ�W�� / �ݽ���T�� / ���͡�S�� �� < ���� >:"))
     (cond
         ((= pt1 "Width") (setwdwidth_ str))
         ((= pt1 "sTep") (setwdstep_ str))
         ((= pt1 "Style") (changestyle))
         ((= pt1 "")
          (if (= str "��")
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
    

(defun c:crm(/ x_ y_ xy_ wallang doorname dz_ m)           ;������
    (setdoor *wall_menkuan)
    (command "undo" "be")
    (setq dz_ 0)
    (open_wd "��" *Door_list)
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
                    doorname  ;����
                    x_                                    ;�����
                    (/ *wall_menkuan 1000.0)  xy_        ;����
                    (atof (angtos wallang 0 4)))           ;�Ƕ�
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
    (dtopen_wd "��" *Door_list)

    (DB_releasesnap)
    (command "undo" "e")
    (princ))    
(defun c:dtc(/ doorname x_ xy_ wallang)
    (command "UNDO" "be")
    (DB_closesnap)
    (setq xy_ 1)
    (setwindow)
    (dtopen_wd "��" *Window_list)

    (DB_releasesnap)
    (command "undo" "e")
    (princ))          

(defun c:gmk(/ ss ssl ed w__ width_)  
     
    (prompt "\nѡ���޸��Ŵ��Ŀ��ȣ�")
    (setq ss (ssname (ssget ":S" '((0 . "INSERT") (8 . "����-�Ŵ�*"))) 0))
    (setq ssl (ENTGET ss))
    (setq width_ (* (cdr (assoc 41 ssl)) 1000))
    (prompt (strcat "\n�µĿ��ȣ�<" (rtos width_ 2 0)))
    (setq w__ (getint ">:"))
    (if (/= w__ nil)
        (setq width_ w__))
    
    (setq ed (/ width_ 1000.0))
    (setq ssl (subst (cons 41 ed) (assoc 41 ssl) ssl))
    (if (wcmatch (cdr (assoc 8 ssl)) "*��")
        (setq ssl (subst (cons 42 ed) (assoc 42 ssl) ssl)))
    
    (setq ssl (subst (cons 43 ed) (assoc 43 ssl) ssl))
    (entmod ssl)
    (princ)
    (princ))
    

(defun c:gml(/ ss ssl doorname width_ ang_ pt hou_ lay_ str sty_)
     
    (DB_closesnap)
    (command "undo" "be")
    (prompt "\nѡ���޸����͵��Ŵ���")
    (setq ss (ssname (ssget ":S" '((0 . "INSERT") (8 . "����-�Ŵ�*"))) 0))
    (setq ssl (ENTGET ss))
    (setq width_ (cdr (assoc 41 ssl))
          ang_ (cdr (assoc 50 ssl))
          hou_ (cdr (assoc 42 ssl))
          pt (cdr (assoc 10 ssl))
          lay_ (cdr (assoc 8 ssl)))
    (if (wcmatch (DB_get_realname ss) "DB_Door*,Door*")
        (progn
            (setdoor (* width_ 1000))
            (setq str "��")
            (setq sty_ *Door_style)
            (changestyle)   
            (setdoor (* width_ 1000)))
        
        (progn
            (setwindow)
            (setq str "��")
            (setq sty_ *Window_style)
            (changestyle)
            (setwindow)))
        
    
    (entdel ss)
    
    (command "INSERT" 
            doorname  ;����
            pt                                    ;�����
            width_  hou_         ;����
            (atof (angtos ang_ 0 4)))           ;�Ƕ�
    
    (DB_movelayer lay_ (entlast))
    (command "undo" "e")
    (DB_releasesnap)
    (princ))


(defun c:crc(/ x_ y_ xy_ wallang doorname dz_ m)
    (setwindow)
    (command "undo" "be")
    (setq dz_ 0)
    (open_wd "��" *Window_list)
    (setq m 0)
    (if (/= x_ nil)
        (progn
            (setwindow)
            (while (< m y_)
                (DB_closesnap)
                (command "INSERT" 
                    doorname  ;����
                    x_                                    ;�����
                    (/ *wall_chuangkuan 1000.0)  (/ xy_ 200.0)         ;����
                    (atof (angtos wallang 0 4)))           ;�Ƕ�
                (DB_releasesnap)
                (DB_movelayer "wi" (entlast))
                (setq x_ (polar x_ wallang (+ dz_ *wall_chuangkuan)))
                (setq m (+ 1 m)))))
        
    
    (command "undo" "e")
    (princ))


;������
(defun c:bcm(/ s1 s2 ss n m px py doorname)
    (prompt "\nѡ��Ҫ�����ŵ�ǽ�����ߣ�")
    (prompt "\n")
    (setq s1 nil
          s2 nil)  
  
    (while (= s2 nil)
        (setq ss (ssget '((0 . "LINE") (8 . "����-ǽ��*")))
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
        doorname  ;����
        px                                    ;�����
        (/ (distance px py) 1000.0) ""     ;����
        (atof (angtos (angle px py) 0 4)))           ;�Ƕ�
    (DB_releasesnap)
    (DB_movelayer "me" (entlast))
    (princ))
;���崰
(defun c:bcc(/ s1 s2 ss n m px py doorname &x &y)
    (prompt "\nѡ��Ҫ���봰��ǽ�����ߣ�")
    (prompt "\n")
    (setq s1 nil
          s2 nil)  
  
    (while (= s2 nil)
        (setq ss (ssget '((0 . "LINE") (8 . "����-ǽ��*")))
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
        doorname  ;����
        px                                    ;�����
        (/ (distance px py) 1000.0) (/ (distance &x &y) 200.0)     ;����
        (atof (angtos (angle px py) 0 4)))           ;�Ƕ�
    (DB_releasesnap)
    (DB_movelayer "me" (entlast))
    (princ))
(defun setwindhigh_(/ int_)
    (setq int_ (getint (strcat "\n���:[" (rtos *lvh 2 0) "]")))
    (if (/= int_ nil) (setq *lvh int_))
    (setq int_ (getint (strcat "\n���ߣ��ṹ�߶ȣ�:[" (rtos *liangh 2 0) "]")))
    (if (/= int_ nil) (setq *liangh int_))
    (if (/= sty_ "��") 
        (progn
            (setq int_ (getint (strcat "\n��̨��:[" (rtos *chuangt 2 0) "]")))
            (if (/= int_ nil) (setq *chuangt int_))
            (setq *chuangh (- *lvh *liangh 50 *chuangt)
                  gaodu_ *chuangh))
            
        
        (setq *menh (- *lvh *liangh 50)
                  gaodu_ *menh))
        
        
    
    
    (setq pt1 nil))


(defun c:mcbh(/ ss ssl gaodu_ width_ ang_ pt hou_ str pt1 sty_ bh_a bh_b)            ;�Ŵ����
     
    ;(DB_closesnap)
    (command "undo" "be")
    (setq str nil)
    (setq pt1 nil)
    
    
    
    (prompt "\nѡ��Ҫ��ע���Ŵ���")
    (setq ss (ssname (ssget ":S" '((0 . "INSERT") (8 . "����-�Ŵ�*"))) 0))
    (setq ssl (ENTGET ss))
    (setq width_ (fix (* (cdr (assoc 41 ssl)) 1002))
          ang_ (cdr (assoc 50 ssl))
          hou_ (fix (+ (* (cdr (assoc 42 ssl)) 100.2) *h))
          pt (cdr (assoc 10 ssl)))
    
    (setq gaodu_ *chuangh)
    (if (= (cdr (assoc 8 ssl)) "����-�Ŵ�-��")
        (setq sty_ "��"
              gaodu_ *menh)
        
        (if (wcmatch (cdr (assoc 2 ssl)) "DB_Window2,Window2")
            (setq sty_ "�ߴ�")
            (setq sty_ "��")))
        
    
    
    (while (= pt1 nil)
        (prompt (strcat
                 "\n��ͼ������ 1:<"
                 (rtos *h 2 0)
                 ">    "
                 sty_
                 "�ߣ���"
                 (rtos gaodu_ 2 0)
                 "��   �����Ŵ�����"
                 *fire
                 "��"))
        
        (initget 1 "Sethigh Disp Fire  ")
        (setq pt1 (getint (strcat "\n��ͼ������D�� / ����߶ȡ�S�� / �����Ŵ���F�� / ����߶�<" (rtos gaodu_ 2 0) ">:")))
        
        (cond
            ((= pt1 "Disp") (DB_set_scale_pt1))
            ((= pt1 "Sethigh") (setwindhigh_))
            ((= pt1 "Fire") 
             (alert "ѡ���Ŵ�����ȼ���\n\n��0��  --------    ��ͨ�Ŵ�
                                      \n��1��  --------    �׼�
                                      \n��2��  --------    �Ҽ�
                                      \n��3��  --------    ���� 
                                      ")
             (cond 
                ((= *fire "��") (setq cs 1))
                ((= *fire "��") (setq cs 2))
                ((= *fire "��") (setq cs 3))
                ((= *fire "��") (setq cs 0)))
             (setq cs (DB_get_input "�������������" (rtos cs 2 0)))
             (cond
                ((= cs "1") (setq *fire "��"))
                ((= cs "2") (setq *fire "��"))
                ((= cs "3") (setq *fire "��"))
                (t (setq *fire "��")))
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
    
    (if (= *fire "��")
        (setq str "")
        (setq str "F"))
    
    (if (= sty_ "�ߴ�")
        (setq str (strcat str "GC"))
        (if (= sty_ "��")
            (setq str (strcat str "M"))
            (setq str (strcat str "C"))))
        
    
    (if (/= *fire "��")
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
        
    
    (if (= sty_ "��")
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
    (DB_make_text8 pt str "DB����" (* *h 3.5) 0.8 ang_ "mc" 1)
    (command "undo" "e")
    ;(DB_releasesnap)
    (princ))

;�Ŵ�����
(defun mcdk (str / dkstr h_ w_)
    (if (> (strlen str) 4)
        (progn
            ;(setq dkstr (vl-string-trim "M" (vl-string-trim "F" str)))
            (setq dkstr (vl-string-left-trim "FMLCG" str))
            (if (wcmatch dkstr "��*") (setq dkstr (substr dkstr 3)))
            (if (wcmatch dkstr "��*") (setq dkstr (substr dkstr 3)))
            (if (wcmatch dkstr "��*") (setq dkstr (substr dkstr 3)))
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

;�����Ŵ�
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

;�Ŵ��б�
(defun c:mctj(/ list_m list_c ss n m s1 mcn i pt1 pt2)
   
    (setq ss (ssget '((0 . "TEXT") (8 . "����-��ע-�Ŵ�"))))
    
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
        (setq pt1 (getpoint "\n��ʾ������D��/ ���õ㣺"))
        (cond
            ((= pt1 "Disp") (DB_set_scale_pt1))
            (t nil)))
        
    
    ;(DB_closesnap)
    (DB_make_midtext4 (DB_offset_pt pt1 42 2.5) "�� �� ��" (* *h 1.5 3.5) "wz")
    ;(DB_movelayer "wz" (entlast))
    (DB_line3 pt1 (DB_offset_pt pt1 84 0) "wz")
    (setq pt2 (DB_offset_pt pt1 5 -4))
    (DB_offset_text pt2 0 0 "����")
    (DB_offset_text pt2 14 0 "��Ʊ��")
    (DB_offset_text pt2 35 0 "���ڳߴ�(mm)")
    (DB_offset_text pt2 51 0 "����")
    (DB_offset_text pt2 67 0 "��ע")
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
        (DB_offset_text pt1 5 (- -4 (* (+ (length list_m) 1) 2.5)) "��"))
    
    (foreach i list_c
        (DB_offset_text pt2 9 1 (nth 0 i))
        (DB_offset_text pt2 30 1 (nth 2 i))
        (DB_offset_text pt2 46 1 (rtos (nth 1 i) 2 0))
        (DB_line3 pt2 (DB_offset_pt pt2 74 0) "wz")
        (setq pt2 (DB_offset_pt pt2 0 -5)))
    
    (if (/= list_c nil) 
        (DB_offset_text pt2 -5 (+ 6 (* (- (length list_c) 1) 2.5)) "��"))
    
    (DB_line3 (DB_offset_pt pt2 -10 5) (DB_offset_pt pt2 0 5) "wz")
    (DB_line3 pt1 (DB_offset_pt pt2 -10 5) "wz")
    (DB_line3 (DB_offset_pt pt1 10 0) (DB_offset_pt pt2 0 5) "wz")
    (DB_line3 (DB_offset_pt pt1 28 0) (DB_offset_pt pt2 18 5) "wz")
    (DB_line3 (DB_offset_pt pt1 52 0) (DB_offset_pt pt2 42 5) "wz")
    (DB_line3 (DB_offset_pt pt1 60 0) (DB_offset_pt pt2 50 5) "wz")
    (DB_line3 (DB_offset_pt pt1 84 0) (DB_offset_pt pt2 74 5) "wz")
    (if (DB_yesorno "�Ƿ����Ϊ�ļ�" nil)
        (DB_write_file "w&d.xls" (append (list (list "��") (list "���" "����" "�ߴ�")) list_m (list (list "��") (list "���" "����" "�ߴ�")) list_c) t))
    (princ)
    (princ))
    ;(DB_releasesnap)
;�����Ŵ��Ŷ�
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
    (prompt "\nѡ��ɾ�����Ŵ���")
    (setq ss (ssget '((0 . "INSERT") (8 . "����-�Ŵ�*"))))
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
    (prompt (strcat "\nɾ��" (rtos nm 2 0) "���Ŵ���"))
    (if (> xm 0)
        (prompt (strcat "��" (rtos xm 2 0) "���Ŵ�û���Զ��޲�ǽ������Ҫ�ֶ��޲���")))
    (command "undo" "e")
    (DB_releasesnap)
    (princ)(princ))

(defun c:kc (/ pt1 pt2 &x1 &x2 &y1 &y2 doorname)
   
  (command "undo" "be")
  (setq pt1 (getpoint "\nѡȡ��Ҫ��������㣺"))
  (setq pt2 (getpoint pt1 "\nѡȡ��Ҫ�������յ㣺"))

  (if (kaidong_ pt1 pt2)
    (progn
        (setwindow)
        (DB_closesnap)
        (command "INSERT" 
                doorname  ;����
                (getmid &x1 &x2)                                    ;�����
                (/ (distance &x1 &y1) 1000.0)  (/ (distance &x1 &x2) 200.0)         ;����
                (atof (angtos (angle &x1 &y1) 0 4)))           ;�Ƕ�
        (DB_releasesnap)
        (DB_movelayer "wi" (entlast))
        (prompt "\n�����ɹ�!"))
    (prompt "\nû��ѡȡǽ��"))
  
  (command "undo" "e")
  (princ)
  (princ))

(defun c:km (/ pt1 pt2 &x1 &x2 &y1 &y2 doorname)
   
  (command "undo" "be")
  (setq pt1 (getpoint "\nѡȡ��Ҫ���ŵ���㣺"))
  (setq pt2 (getpoint pt1 "\nѡȡ��Ҫ���ŵ��յ㣺"))

  (if (kaidong_ pt1 pt2)
    (progn
        (setdoor (distance &x1 &x2))
        (DB_closesnap)
        (command "INSERT" 
                doorname  ;����
                (getmid &x1 &x2)                                    ;�����
                (/ (distance &x1 &y1) 1000.0) ""                  ;����
                (atof (angtos (angle &x1 &y1) 0 4)))           ;�Ƕ�
        (DB_releasesnap)
        (DB_movelayer "me" (entlast))
        (prompt "\n���ųɹ�!"))
    (prompt "\nû��ѡȡǽ��"))
  
  (command "undo" "e")
  (princ)
  (princ))
(defun mcdb(nm menkuan)
    (cond
        ((wcmatch nm "*002,*004,*011,*012") (setq doorname (nth 2 (assoc 2 *Door_list))))              ;˫��
        ((wcmatch nm "*001,*009,*003,*010") (setq doorname (nth 2 (assoc 1 *Door_list))))              ;����
        ((wcmatch nm "*122,*114,*228") (setq doorname (nth 2 (assoc 5 *Door_list))))              ;�뿪����
        ((wcmatch nm "*116,*231,*120") (setq doorname (nth 2 (assoc 6 *Door_list))))              ;�뿪˫��
        ((wcmatch nm "*222,*223,*221,*224,*226,*225") (setq doorname (nth 2 (assoc 3 *Door_list))))              ;��ĸ
        ((wcmatch nm "*127,*128") (setq doorname (nth 2 (assoc 7 *Door_list))))              ;����
        ((wcmatch nm "*131,*129,*130,*132,*134,*135,*138") (if (>= menkuan 2400) 
                                                            (setq doorname "DB_Door3-2.dwg")
                                                            (if (>= menkuan 1800) 
                                                                (setq doorname "DB_Door3-3.dwg")
                                                                (if (<= menkuan 800)
                                                                    (setq doorname "DB_Door3-4.dwg")
                                                                    (setq doorname "DB_Door3.dwg")))))
        (t (setq doorname (nth 2 (assoc 1 *Door_list))))))
    
(defun c:hmc (/ ss m1 ang kd hd doorname)
  (prompt "\nѡ��Ҫ�滻���Ŵ���")
  (prompt "\n")
  (setq ss (ssname (ssget ":S" '((0 . "INSERT") (8 . "����-�Ŵ�*,WINDOW,����-�����Ŵ�*"))) 0))
  (setq m1 (DB_get_ent ss 10))
  (setq kd (DB_get_ent ss 41))
  (setq hd (DB_get_ent ss 42))
  (setq ang (+ pi (DB_get_ent ss 50)))
  (if (and (wcmatch (DB_get_realname ss) "Door*,Window*,DB_Door*,DB_Window*") (< kd 100))
    (prompt "\n�Ѿ���DB�Ŵ���")
    (progn
      (setq m1 (polar m1 ang (- 0 (/ kd 2))))
      (if (wcmatch (DB_get_realname ss) "*Do*")
        (progn
          (mcdb (DB_get_realname ss) kd)
          (DB_closesnap)
          (command "INSERT" 
              doorname  ;����
              m1                                    ;�����
              (/ kd 1000.0)  (/ hd 1000.0)         ;����
              (atof (angtos ang 0 4)))           ;�Ƕ�
          (DB_releasesnap)
          (DB_movelayer "me" (entlast)))
        (progn
          (setwindow)
          (DB_closesnap)
          (command "INSERT" 
              doorname  ;����
              m1                                    ;�����
              (/ kd 1000.0)  (/ hd 200.0)         ;����
              (atof (angtos ang 0 4)))           ;�Ƕ�
          (DB_releasesnap)
          (DB_movelayer "wi" (entlast))))
      
      (entdel ss))))