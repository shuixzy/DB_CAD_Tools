
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
;; ;编译模块
;; (defun c:cplsp ( / DB_lsplist fn n m)
;;   (setq DB_lsplist (DB_read_file (findfile "DB_lsp_list.DBM")))
;;   (setq n (length DB_lsplist)
;;         m 0
;;         nm 0
;;         cmdlist (list)
;;         alt "已成功编译命令集：")      
;;   (if (DB_yesorno "是否编译main.lsp" t)
;;     ()))  
;重新加载工具包
(defun c:reload()
  (setq *loadlsp nil)
  (if (/= (findfile "main.fas") nil)
    (load "main.fas")))
  
;以下为加载后自动执行部分
(loadmods *loadlsp)
(textscr)
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