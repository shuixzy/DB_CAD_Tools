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
(defun setwallwidth_ (/ w__ wr__)  ;����ǽ��
  (princ "\n��ǽ�� :<")
  (princ *wl_l)
  (setq w__ (getint ">:"))
  (if (/= w__ nil)
    (setq *wl_l w__))
  
  (princ "\n��ǽ�� :<")
  (princ *wl_r)
  (setq wr__ (getint ">:"))
  (if (/= wr__ nil)
    (setq *wl_r wr__))
  
  (setq pt1 nil))

;; (defun Justtostr_ ()
;;   (if (= 0 ml_j)
;;     (setq just "��")
;;     (if	(= 1 ml_j)
;;       (setq just "��")
;;       (setq just "��")
;;     )
;;   )
;;   (if (/= (getvar "CMLJUST") ml_j)
;;     (setvar "CMLJUST" ml_j)
;;   )
;; )
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
   "\nǽ����W�� / ����ǽ��N�� / �պϡ�C��/ ǽ���ߡ�Z�� / < ǽ�� >:")
  
  (if (= wall_neiwai nil)
    (setq wall_neiwai "nq"))
  
  (if (= wall_neiwai "wq")
    (setq msg_nw "��ǽ")
    (setq msg_nw "��ǽ")))
  

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
        (setq zero_msg "����")
        (setq zero_msg "�ر�"))
      
      (prompt (strcat
               "\n����:  < �� "
               (rtos *wl_l 2 0)
               " / �ң� "
               (rtos *wl_r 2 0)
               " >   ����ǽ�� "
               msg_nw
               "   �����ߣ�["
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
    

  (setq sline (ssname ssl 0))    ;ȡ��һ����
  (DB_get_pt_2p sline)
  (setq x1 &x)
  (setq y1 &y)

  (if (= (cdr (assoc 8 (ENTGET sline))) "����-ǽ��-��ǽ")
    (setq sline_nw 2)
    (setq sline_nw 1))
  
  (setq s (ssdel sline ssl))
  (setq n (SSlength s))
  (setq m 0)
  (setq intP nil)
  (while (< m n)      ;ѭ����ȡ��������֮�ཻ
    (setq xline (ssname s m))
    (DB_get_pt_2p xline)
    (setq x2 &x)
    (setq y2 &y)
    (if  (= (cdr (assoc 8 (ENTGET xline))) "����-ǽ��-��ǽ")
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
  (setq ss (ssget "c" pt1 pt2 '((0 . "LINE") (8 . "����-ǽ��*"))))
  (if (/= ss nil)
    (pickone_ ss))
  
  (setq s_ (ssget "w" pt1 pt2 '((0 . "LINE") (8 . "����-ǽ��*"))))
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
    
  


(defun c:xqj (/ pt1 pt2 ss)    ;��ǽ��
   
  (DB_closesnap)
  (command "undo" "be")
  (setq pt1 (getpoint "\n��һ�㣺"))
  (setq pt2 (getcorner pt1 "\n�ڶ��㣺"))
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
   ss   (ssget "f" f '((0 . "line") (8 . "����-ǽ��*"))))
  
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
  ;; (setq ss (ssget "f" f '((0 . "line") (8 . "����-ǽ��*")) ))

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
  ;; (setq ss (ssget "f" f '((0 . "line") (8 . "����-ǽ��*")) ))

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
  (setq pt1 (getpoint "\nѡȡ��Ҫ��������㣺"))
  (setq pt2 (getpoint pt1 "\nѡȡ��Ҫ�������յ㣺"))

  (if (kaidong_ pt1 pt2)
    (prompt "\n�򶴳ɹ�!")
    (prompt "\nû��ѡȡǽ��"))
  
  (command "undo" "e")
  (princ)
  (princ))


(defun c:qz (/ lx ly ssl line_qz &s1 &s2 &sx1 &sy1 &sx2 &sy2)
   
  (prompt "\nѡ����Ҫ���������ߵ�ǽ��")
  (setq line_qz (ssname (ssget ":S" '((0 . "LINE") (8 . "����-ǽ��*"))) 0))

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
  
(defun c:xccx (/ ss tj tj2 tj3 q1 q2 cc) ;��������
   
  (setq cc nil)
  (DB_setzl)
  (DB_closesnap)
  (prompt "\nѡ��Ҫ�����ķ�Χ��")
  (setq q1 (getpoint "\n��һ�ǵ㣺"))
  (setq q2 (getcorner q1 "\n�ڶ��ǵ㣺"))
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
  
  (princ "\nɾ���ϲ���[")
  (princ tj)
  (princ "]���ߡ�")
  (princ "\nɾ���ϲ���[")
  (princ tj2)
  (princ "]���ظ�ͼԪ��")
  (princ "\n��[")
  (princ tj3)
  (princ "]��ֱ�������˽Ƕȡ�")
  (if cc
    (princ "\nѡ�񳬳�2000��ͼԪ��ֻ������ǰ2000����������ѡ��"))
  (DB_releasesnap)
  (princ))


(defun getwall_(x / ss_ s)
  (setq ss_ (ssget "c" x x '((0 . "line") (8 . "����-ǽ��*"))))
  
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


;�����ĵ��޲�ǽ��
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
   
  (prompt "\nѡ��Ҫ�޲�ǽ���ı��ߣ�")
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
            (prompt "\nѡ��Ĳ���һ��ǽ����")))
      (command "undo" "e"))
      
    
    (prompt "\nѡ��Ĳ���һ��ǽ����"))
  
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
;;   (prompt "\nѡ��Ҫɾ�����Ŵ���")
;;   (prompt "\n")
;;   (setq ss (ssname (ssget ":S" '((0 . "INSERT") (8 . "����-�Ŵ�*,WINDOW"))) 0))
;;   (setq m1 (DB_get_ent ss 10))
;;   (setq kd (DB_get_ent ss 41))
;;   (setq ang (DB_get_ent ss 50))
;;   (if (< kd 100)
;;     (setq m2 (polar m1 ang (* kd 1000)))
;;     (setq m2 (polar m1 ang (/ kd 2))
;;           m1 (polar m1 ang (- 0 (/ kd 2)))))
  
;;   (entdel ss)
;;   (setq s1 (ssname (ssget "_C" m1 m1 '((0 . "LINE") (8 . "����-ǽ��*"))) 0)
;;         s2 (ssname (ssget "_C" m2 m2 '((0 . "LINE") (8 . "����-ǽ��*"))) 0))  
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
;;                 (prompt "\nѡ��Ĳ���һ��ǽ����"))))
          
          
        
;;         (prompt "\nѡ��Ĳ���һ��ǽ����")))
;;     (prompt "\nɾ���������Ŵ���"))
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
  (command "-HATCH" "P" "�ֽ������" *h "" "s" s1 "" "")
  (setq pm (ssadd (entlast) pm))
  (setq *h 20)
  (DB_sethatch)
  (command "-HATCH" "P" "�ֽ������" *h "" "s" s1 "" "")
  (setq pm (ssadd (entlast) pm))
  (DB_make_block_noname pm pt1)
  (DB_movelayer "zz" (entlast))
  (setq *h h__))

;��������
(defun c:crz(/ pt1 ss s1 ptl h__ pm)
  (if (= *column_w nil)
    (setq *column_w 600))
  (if (= *column_h nil)
    (setq *column_h 600))
  
  
  (while (= pt1 nil)
    (prompt (strcat "\n������<"
                    (rtos *column_w 2 0)
                    ">    ���ߣ�<"
                    (rtos *column_h 2 0)
                    ">"))
    (initget "Width High Select")
    (setq pt1 (getpoint "\n������[S] / ����[W] / ����[H]��"))
    (cond
      ((= pt1 "Width")
       (setq *column_w (DB_get_int_pt1 "����" *column_w)))
      ((= pt1 "High")
       (setq *column_h (DB_get_int_pt1 "����" *column_h)))
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
       

(defun c:tcq(/ line_h ssl lx ly &s1 &s2 &sx1 &sy1 &sx2 &sy2 l1 l2 l3 l4 pt1 pat_list)       ;���ǽ��
   
  (setq pat_list '(
                   (0 "ʵ�����")
                   (1 "��ͨש")
                   (2 "�ֽ������")
                   (3 "������")
                   (4 "����ש")
                   (5 "�ͻ�ש")
                   (6 "ʯ���")
                   (7 "����")
                   (8 "ľ��")
                   (9 "����������")
                   (10 "��ײ���")
                   (11 "��������")
                   (12 "��ˮ����")
                   (13 "ëʯ")
                   (14 "ʯ���")
                   (15 "����")
                   (16 "����ש")
                   (17 "��ɢ����")
                   (18 "��ʵ����")
                   (19 "����")
                   (20 "��״����")
                   (21 "��������")
                   (22 "����")
                   (23 "ɰ����")
                   (24 "��ά����")
                   (25 "ɰʯ��ש")
                   (26 "��ˢ")))
    
  
  (prompt "\nѡ����Ҫ����ǽ��")
  (setq line_h (ssname (ssget ":S" '((0 . "LINE") (8 . "����-ǽ��*"))) 0)) 
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
                 "\n��ͼ������ 1:<"
                 (rtos *h 2 0)
                 ">    ���ͼ������"
                 (nth 1 (assoc *patt pat_list))
                 "<"
                 (rtos *patt 2 0)
                 ">��"))
        
        (initget 1 "Pattern Disp  ")
        (setq pt1 (getint (strcat "\n��ͼ������D�� / ͼ���б���P�� / ͼ������<" (rtos *patt 2 0) ">")))
        
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
        
      
    
    (prompt "����һ��ǽ����ǽ̫�̡�"))
  

  (princ)
  (princ))


(defun c:tcx(/ line_h m n ssl pt lx ly pt1 pt2 dis_ ang1 ang2 ang_ pat_list l1 l3 l4 l5 l6 lp hscal dish ll pm pl li ln ang_c chuidis chuidis_ ss pt_)      ;�����

  (command "undo" "be")
  (setq pat_list '(
                   (0 "����")
                   (1 "��ͨש")
                   (2 "�ֽ������")
                   (3 "������")
                   (4 "����ש")
                   (5 "�ͻ�ש")
                   (6 "ʯ���")
                   (7 "����")
                   (8 "ľ��")
                   (9 "����������")
                   (10 "��ײ���")
                   (11 "��������")
                   (12 "��ˮ����")
                   (13 "ëʯ")
                   (14 "ʯ���")
                   (15 "����")
                   (16 "����ש")
                   (17 "��ɢ����")
                   (18 "��ʵ����")
                   (19 "����")
                   (20 "��״����")
                   (21 "��������")
                   (22 "����")
                   (23 "ɰ����")
                   (24 "��ά����")
                   (25 "ɰʯ��ש")
                   (26 "��ˢ")))
    
  
  ;ѡ��ֱ�߻�PL�ߣ�ֱ��ѡ�У���entsel��ȡ��ѡλ�á�
  (setq pt1 nil
        pt2 nil)
  (while (= pt1 nil)
    (setq ss (entsel "\nѡ����Ҫ����ֱ�ߣ�"))
    (setq line_h (car ss))
    (setq pt (cadr ss)) 
    (setq ssl (ENTGET line_h))
    (if (= (cdr (assoc 0 ssl)) "LWPOLYLINE")
      (setq pl (DB_get_Plpoints line_h)        ;��ȡPL�߶˵��б�
            pt1 t)
      (if (= (cdr (assoc 0 ssl)) "LINE")
        (setq pl (list (cdr (assoc 10 ssl)) (cdr (assoc 11 ssl)))   ;ֱ��������������б�
              pt1 t))))
  (setq ln (length pl)
        li 0
        pm (ssadd)
        chuidis nil)
  (while (< (+ 1 li) ln)              ;��β��Һ�ѡȡ��������߶Σ�ȷ��ѡȡ�νǶ�
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
             "\n��ͼ������ 1:<"
             (rtos *h 2 0)
             ">    ���ͼ������"
             (nth 1 (assoc *patt_x pat_list))
             "<"
             (rtos *patt_x 2 0)
             ">��"))
    
    (initget 1 "Pattern Disp  ")
    (setq pt1 (getint (strcat "\n��ͼ������D�� / ͼ���б���P�� / ͼ������<" (rtos *patt_x 2 0) ">")))
    (cond
      ((= pt1 "Disp") (DB_set_scale_pt1))
      ((= pt1 "Pattern") (DB_show_list pat_list 0))
      ((= pt1 "") nil)
      (T 
        (if (/= pt1 nil)
          (if (/= (assoc pt1 pat_list) nil)
            (setq *patt_x pt1)
            (setq pt1 nil))))))

  (setq dis_ (getint (strcat "\nƫ�ƾ���:<" (rtos *offdis 2 0) ">")))
  (if (/= dis_ nil)
    (setq *offdis dis_))
  
  (while (= pt2 nil)
    (setq pt2 (getpoint pt "ƫ�Ʒ���")))
  (setq ang2 (angle pt pt2))
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
  
  (command "undo" "e")
  (princ)
  (princ))


(defun c:gxc(/ sel pt &x &y pz s1 ps)         ;���߶γ���
 
  (while (= pt nil)
    (setq sel (entsel "\nѡ��ı䳤�ȵ��߶Σ�"))
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
    (setq pz (getpoint ps "�޸Ķ˵�����")))
  
  (setq pz (DB_get_per_point &x &y pz nil))
  (if (< (distance pt &x) (distance pt &y))
    (DB_change_ent s1 10 pz)
    (DB_change_ent s1 11 pz)))
  