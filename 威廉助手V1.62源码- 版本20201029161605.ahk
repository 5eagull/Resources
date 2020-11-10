#Include <FindText>
;威廉助手V1.61作者知乎威廉
;为了方便ahk爱好者研习本人决定把源码公开
;源码内标注了大量的注释方便大家参考
;欢迎加入QQ群1026788769交流。

;右键开启202010021426.ahk

;-------预先设定
#NoEnv ;提升启动时运行性能
    ;#SingleInstance Force ;取消点击执行是否覆盖提示
    
SetWorkingDir %A_ScriptDir%     
    ;指定脚本的工作目录，%A_ScriptDir%为当前脚本所在目录
    
SetBatchLines -1 
    ;-1脚本不休眠全速运行
    
Menu Tray, Icon, shell32.dll, 147 
    ;小图标

;------------------------大脚本开始------------------------
;-----菜单项-----头
        
        
            ;---Obsidian语法--子菜单
            Menu,Obsidian语法子菜单,Add,[[]],[[]]     
            Menu,Obsidian语法子菜单,Add,![[]],![[]]
            Menu,Obsidian语法子菜单,Add,[[#]],[[#]]
            Menu,Obsidian语法子菜单,Add,[](),[]()
                        
            Menu,Obsidian语法子菜单,Add, ;帮助视觉区分
            Menu,Obsidian语法子菜单,Add,加粗,加粗
            Menu,Obsidian语法子菜单,Add,高亮,高亮
            Menu,Obsidian语法子菜单,Add,下划线,下划线

            Menu,Obsidian语法子菜单,Add, ;帮助视觉区分
            Menu,Obsidian语法子菜单,Add,"",""
            Menu,Obsidian语法子菜单,Add,左右单引号(代码),左右单引号
            Menu,Obsidian语法子菜单,Add,左右三引号(代码),左右三引号

            Menu,Obsidian语法子菜单,Add, ;帮助视觉区分
            Menu,Obsidian语法子菜单,Add,TODO,TODO
            Menu,Obsidian语法子菜单,Add,脚注a,脚注a
            Menu,Obsidian语法子菜单,Add,脚注b:,脚注b
            
            Menu,Obsidian语法子菜单,Add, ;帮助视觉区分
            Menu,Obsidian语法子菜单,Add,1.,1.
            Menu,Obsidian语法子菜单,Add,>,>
            Menu,Obsidian语法子菜单,Add,[](file:///),[](file:///)
            Menu,Obsidian语法子菜单,Add,iframe(嵌入),iframe

            
            
            
            
            Menu,Obsidian语法子菜单,Add,#打开的窗口,#打开的窗口 
            Menu,Obsidian语法子菜单,Add,NEAR,NEAR          
        ;菜单--Obsidian语法
        Menu,菜单组最高层A,Add,常用语法,:Obsidian语法子菜单

            Menu,块引用子菜单,Add,![[^^,![[^^
            Menu,块引用子菜单,Add,![[##,![[##
            Menu,块引用子菜单,Add,块引用使用说明,块引用使用说明
        ;菜单--块引用
        Menu,菜单组最高层A,Add,块引用,:块引用子菜单
        
        
            ;菜单--时间戳--子菜单          
            Menu,时间戳子菜单,Add,输入时间戳,输入时间戳
            Menu,时间戳子菜单,Add,时间戳到剪贴板,时间戳到剪贴板 
            Menu,时间戳子菜单,Add,输入[[时间戳]],输入[[时间戳]]    
		;菜单--时间戳
		Menu,菜单组最高层A,Add,时间戳,:时间戳子菜单

		;菜单-空项-横杠
		Menu,菜单组最高层A,Add,
        
        
            ;菜单-用Obsidian搜索
            Menu,搜索子菜单,Add,用Obsidian搜索/跳转,用Obsidian搜索 
            ;菜单-用Everything搜索
            Menu,搜索子菜单,Add,用Everything搜索/跳转,用Everything搜索 
            ;菜单--剪贴板搜索
            Menu,搜索子菜单,Add,剪贴板搜索,剪贴板搜索 
        ;菜单--搜索
        Menu,菜单组最高层A,Add,搜索/跳转,:搜索子菜单 
        
        
                ;摘录到Obsidian
                Menu,摘录到Obsidian子菜单,Add,摘录到Obsidian(常用),摘录到Obsidian
                ;从QQ聊天窗摘录(特别定制)
                Menu,摘录到Obsidian子菜单,Add,QQ聊天窗摘录到Ob(定制),QQ聊天窗摘录到Ob
        ;菜单--摘录到Obsidian
		Menu,菜单组最高层A,Add,摘录到Obsidian,:摘录到Obsidian子菜单
 
 		;菜单-空项-横杠,帮助视觉区分
		Menu,菜单组最高层A,Add,
 
        
            ;Obsidian和-PotPlayer视频
            Menu,双向跳转子菜单,Add,Obsidian-PotPlayer视频,Obsidian-PotPlayer视频 
            ;Obsidian-Chrome视频
            Menu,双向跳转子菜单,Add,Obsidian-Chrome视频(网页),Obsidian-Chrome视频 
            ;横杠，有助于视觉区分
            Menu,双向跳转子菜单,Add,  
            ;Obsidian-ANKI
            Menu,双向跳转子菜单,Add,Obsidian-ANKI,Obsidian-ANKI 
            ;Obsidian-PDF
             Menu,双向跳转子菜单,Add,Obsidian-PDF,Obsidian-PDF 
            ;横杠，有助于视觉区分
            Menu,双向跳转子菜单,Add,  
            ;Obsidian-MindManager
             Menu,双向跳转子菜单,Add,Obsidian-MindManager,Obsidian-MindManager
             ;MindManager-PDF
             Menu,双向跳转子菜单,Add,MindManager-PDF,MindManager-PDF
        ;菜单--双向跳转
		Menu,菜单组最高层A,Add,双向跳转,:双向跳转子菜单
  
                    ;转为新笔记
                    Menu,编辑子菜单,Add,框选内容变新笔记,转为新笔记  
                   ;编辑子菜单-横杠
                    Menu,编辑子菜单,Add,
                    ;文本全局修改
                    Menu,编辑子菜单,Add,文本全局修改(支持单行),文本全局修改  
                    ;自定义库目录
                    Menu,编辑子菜单,Add,选择库目录(全局修改用),选择库目录 
       ;菜单-编辑子菜单 
       Menu,菜单组最高层A,Add,Obsidian编辑,:编辑子菜单
       
		;菜单-空项-横杠
		Menu,菜单组最高层A,Add,  
        
        ;OCR识别与截图
        Menu,菜单组最高层A,Add, 截图到剪贴板,截图到剪贴板
        Menu,菜单组最高层A,Add, OCR识别,OCR识别

		;菜单-空项-横杠
		Menu,菜单组最高层A,Add,
        
        ;有道OCR翻译
        Menu,菜单组最高层A,Add, 有道OCR翻译,有道OCR翻译
        Menu,菜单组最高层A,Add, 有道翻译,有道翻译
        
		;菜单-空项-横杠
		Menu,菜单组最高层A,Add,
        
            ;菜单-威廉助手--子菜单       
            Menu,威廉助手子菜单,Add,威廉助手V1.61,跳转知乎详细说明
            Menu,威廉助手子菜单,Add,作者:威廉(知乎),跳转知乎详细说明
            menu,威廉助手子菜单,Add,跳转QQ交流群,跳转QQ群1026788769
            Menu,威廉助手子菜单,Add,助手使用说明,跳转知乎详细说明  
            menu,威廉助手子菜单,Add,勿从三方下载防止安全隐患,跳转知乎详细说明
        ;菜单-威廉助手
        Menu,菜单组最高层A,Add,威廉助手说明,:威廉助手子菜单
        return ;菜单脚本结束
        
;-----各命令项-----头


;菜单--Obsidian语法-各项命令-头
[[]]:
    JTZXJB001()
    return 

![[]]:
    JTZXJB002()
    return

[[#]]:
    JTZXJB003() ;[[#]]的具体执行脚本
    return

TODO:
    JTZXJB004() ;TODO的具体执行脚本
    return

脚注a:
    JTZXJB005() ;脚注a的具体执行脚本
    return

脚注b:
    JTZXJB006() ;脚注b的具体执行脚本
    return

加粗:
    JTZXJB007() ;加粗的具体执行脚本
    return

左右单引号:  ;之后研究一下g标签 g变量
    JTZXJB008() ;两边单引号的具体执行脚本
    return

左右三引号:
    JTZXJB009() ;左右三引号的具体执行脚本
    return

[]():
    JTZXJB010() ;[]()的具体执行脚本
    return

[](file:///):
    JTZXJB011() ;[](file:///)的具体执行脚本
    return

iframe:
    JTZXJB012() ;iframe的具体执行脚本
    return

1.:
    JTZXJB013() ;1.的具体执行脚本
    return

>:
    JTZXJB014() ;>的具体执行脚本
    return

下划线:
    JTZXJB015() ;下划线的具体执行脚本
    return


"":
    JTZXJB016() ;""的具体执行脚本
    return

高亮:
    JTZXJB017() ;高亮的具体执行脚本
    return

NEAR:
    JTZXJB018() ;NEAR的具体执行脚本
    return

#打开的窗口:
    JTZXJB019() ;#打开的窗口的具体执行脚本
    return
;菜单--Obsidian语法-各项命令-尾 

;菜单--块引用-各项命令-头
![[^^:
clipboard := "![[^^"
Send,{LControl Down}v{LControl Up} 
return

![[##:
clipboard := "![[##"
Send,{LControl Down}v{LControl Up} 
return

块引用使用说明:
Run https://zhuanlan.zhihu.com/p/266909890
return
;菜单--块引用-各项命令-尾


;菜单--时间戳-各项命令-尾 
时间戳到剪贴板:
    JTZXJB020() ;时间戳到剪贴板的具体执行脚本
    return

输入时间戳:
    JTZXJB021() ;输入时间戳的具体执行脚本
    return    

输入[[时间戳]]:
    JTZXJB022() ;输入[[时间戳]]的具体执行脚本
    return 
;菜单--时间戳-各项命令-尾 


;菜单--菜单组最高层A-各项命令-头 
用Everything搜索:
    JTZXJB023() ;用Everything搜索的具体执行脚本
    return
    
用Obsidian搜索:    
    JTZXJB024() ;用Obsidian搜索的具体执行脚本
    return 
    
剪贴板搜索:
    JTZXJB025() ;剪贴板搜索的具体执行脚本
    return
    
;菜单--菜单组最高层A-各项命令-尾 


;菜单--摘录到Obsidian--各项命令-头

摘录到Obsidian:
    JTZXJB026() ;摘录到Obsidian的具体执行脚本 
    return    
    
QQ聊天窗摘录到Ob:
    JTZXJB033()
    return   

;菜单--摘录到Obsidian--各项命令-尾


;菜单--双向跳转-各项命令-头 
Obsidian-PotPlayer视频:
    JTZXJB030()
    return
    
Obsidian-Chrome视频:
    JTZXJB039()
    return   
    
Obsidian-ANKI:
    JTZXJB031()
    return   
    
Obsidian-PDF:
    JTZXJB032()
    return  
    
Obsidian-MindManager:
    JTZXJB034()
    return  
    
MindManager-PDF:
     JTZXJB038()
     return  
;菜单--双向跳转-各项命令-尾

;菜单-编辑子菜单---各项命令--头

转为新笔记:
    JTZXJB037()
    return  

文本全局修改:
    JTZXJB035()
    return  
    
 选择库目录:
     JTZXJB036()
        return    
;菜单-编辑子菜单---各项命令--尾

;OCR截图-头
截图到剪贴板: ;利用的是picpick
send, {F5}
return   

OCR识别: ;利用的是天若识别
send, {F4}
return  
;OCR截图-尾

有道OCR翻译:
TZXJB040()
return  

有道翻译:
TZXJB041()
return

;菜单--威廉助手子菜单--各项命令--头
跳转知乎详细说明:
    JTZXJB027() ;跳转知乎详细说明的具体执行脚本
    return
    
跳转QQ群1026788769:
    JTZXJB028() ;跳转QQ群1026788769的具体执行脚本 
    return
;菜单--威廉助手子菜单--各项命令--尾


;-----各命令项-----尾





;-----具体执行脚本区-----头


;菜单--Obsidian语法-命令执行-头
JTZXJB001() ;[[]]的具体执行脚本001
    { 
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "[[]]" 
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "\[\[.*\]\]") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "\[\[|\]\]", "")
            ;如果有就清除剪贴板内容[[]]]
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "[[") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", "]]") ;尾部替换为
            }
          }  
     Send, {LControl Down}v{LControl Up}   
     Send, {Left 2}
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
return 

JTZXJB002() ;![[]]的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "![[]]" 
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "\!\[\[.*\]\]") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "\!\[\[|\]\]", "")
            ;如果有就清除剪贴板内容[[]]]
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "![[") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", "]]") ;尾部替换为
            }
          }  
     Send, {LControl Down}v{LControl Up}   
     Send, {Left 2}
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB003() ;[[#]]的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "![[#]]" 
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 3}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "\!\[\[.*\#]\]") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "\!\[\[|\#\]\]", "")
            ;如果有就清除剪贴板内容[[]]]
            Send, {LControl Down}v{LControl Up} 
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "![[") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", "#]]") ;尾部替换为
               Send, {LControl Down}v{LControl Up}  
               Send, {Left 3}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB004() ;TODO的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "- [ ] " 
        Send, {LControl Down}v{LControl Up} 
        ;Send, {Space}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "\-[\s]\[.*\]") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "\-[\s]\[|\]", "")
            ;如果有就清除剪贴板内容[[]]]
            Send, {LControl Down}v{LControl Up} 
            ;Send, {Space}
            }
          else ;如果没有就加上
            {
            clipboard := "- [ ] " 
            Send, {LControl Down}v{LControl Up}
            ;Send, {Space}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB005() ;脚注a的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "[^]" 
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 1}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "\[\^.*\]") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "\[\^|\]", "")
            ;如果有就清除剪贴板内容[[]]]
            Send, {LControl Down}v{LControl Up} 
            ;Send, {Left 1}
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "[^") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", "]") ;尾部替换为
               Send, {LControl Down}v{LControl Up}  
               Send, {Left 1}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB006() ;脚注b的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "[^]:" 
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 2}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "\[\^.*\]\:") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "\[\^|\]\:", "")
            ;如果有就清除剪贴板内容[[]]]
            Send, {LControl Down}v{LControl Up} 
            ;Send, {Left 1}
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "[^") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", "]:") ;尾部替换为
               Send, {LControl Down}v{LControl Up}  
               Send, {Left 2}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB007() ;加粗的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "****" 
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 2}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "\*\*.*\*\*") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "\*\*|\*\*", "")
            ;如果有就清除剪贴板内容[[]]]
            Send, {LControl Down}v{LControl Up} 
            ;Send, {Left 2}
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "**") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", "**") ;尾部替换为
               Send, {LControl Down}v{LControl Up}  
               Send, {Left 2}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB008() ;两边单引号的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "````" ;注意``=` 不管正则非正则中``两个都是代表1个
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 1}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "``.*``") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "``|``", "") ;注意``=`
            ;如果有就清除剪贴板相关内容
            Send, {LControl Down}v{LControl Up} 
            ;Send, {Left 2}
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "``") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", "``") ;尾部替换为
               Send, {LControl Down}v{LControl Up}  
               Send, {Left 1}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB009() ;左右三引号的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "````````````" ;注意``=` 不管正则非正则中``两个都是代表1个
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 3}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "``````.*``````") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "``````|``````", "") ;注意``=`
            ;如果有就清除剪贴板相关内容
            Send, {LControl Down}v{LControl Up} 
            ;Send, {Left 2}
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "``````") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", "``````") 
               ;尾部替换为
               Send, {LControl Down}v{LControl Up}  
               Send, {Left 3}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB010() ;[]()的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "[]()" 
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 1}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "\[.*\]\(.*\)") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "\[|\]|\(|\)", "") ;\是转义符 |是或
            ;如果有就清除剪贴板内容[[]]]
            Send, {LControl Down}v{LControl Up} 
            ;Send, {Left 2}
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "[](") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", ")") ;尾部替换为
               Send, {LControl Down}v{LControl Up}  
               ;Send, {Left 1}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB011() ;[](file:///)的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "[](file:///)" 
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 1}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "\[\]\(file:///.*\)") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "\[\]\(file:///|\)", "")
            ;如果有就清除剪贴板内容[[]]]
            Send, {LControl Down}v{LControl Up} 
            ;Send, {Left 2}
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "[](file:///") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", ")") ;尾部替换为
               Send, {LControl Down}v{LControl Up}  
               Send, {Left 1}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB012() ;iframe的具体执行脚本
    {
	d = <iframe width="100`%" height="360" src=""></iframe> ;需给%转义`
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    jtb := clipboard ;剪贴板 远内容
    ;MsgBox, % jtb
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
    A1 = <iframe width="100`%" height="360" src="
    clipboard := % A1
    Send,{LControl Down}v{LControl Up} ;A1内容贴出
    Sleep, 10    
    clipboard := % jtb
    Send,{LControl Down}v{LControl Up} ;A2内容贴出
    Sleep, 10        
    A2 = "></iframe>
    clipboard := % A2
    Send, {LControl Down}v{LControl Up} ;A2内容贴出
    Sleep, 10 
    Send, {Left 11}
    }
    else
    {
    A1 = <iframe width="100`%" height="360" src="
    clipboard := % A1
    Send,{LControl Down}v{LControl Up} ;A1内容贴出
    Sleep, 10    
    clipboard := % jtb
    Send,{LControl Down}v{LControl Up} ;A2内容贴出
    Sleep, 10       
    A2 = "></iframe>
    clipboard := % A2
    Send,{LControl Down}v{LControl Up} ;A2内容贴出
    Sleep, 10
    Send, {Left 11}
    }
    ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
    }

JTZXJB013() ;1.的具体执行脚本
    {
	d = 1.
	clipboard = %d%  ;剪贴板复制
    Send,{LControl Down}v{LControl Up}{Space}
    }
    
JTZXJB014() ;>的具体执行脚本
    {
	d = >
	clipboard = %d%  ;剪贴板复制
    Send,{LControl Down}v{LControl Up}{Space}
    }
    
JTZXJB015() ;下划线的具体执行脚本
    {
	d = <u></u>
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "<u></u>" 
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 4}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "<u>.*</u>") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "<u>|</u>", "")
            ;如果有就清除剪贴板内容[[]]]
            Send, {LControl Down}v{LControl Up} 
            ;Send, {Left 2}
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "<u>") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", "</u>") ;尾部替换为
               Send, {LControl Down}v{LControl Up}  
               Send, {Left 4}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB016() ;""的具体执行脚本
    {
	d = ""
    d1 = "
     ;%d%  =""  %d1%
    ;MsgBox, % d
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0)
        { ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := % d
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 1}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
          FoundPos := InStr(Clipboard,"""") ;查找是否包含""
            ;FoundPos := RegExMatch(clipboard, "   .*  ") 
        if (FoundPos > 0) 
            {
            ;MsgBox, 有"""
            clipboard := RegExReplace(clipboard,"""")   ;把引号替换为空
            ;clipboard :=RegExReplace(clipboard, " \x22  ", "") ;这个方式
            Send, {LControl Down}v{LControl Up}
            ;Send, {Left 1}     
            return
            }  
            else
                { 
                Send, % d1
                Send, {LControl Down}v{LControl Up}
                Send, % d1
                Send, {Left 1}     
            return
          }  
         ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
          }
}
     
JTZXJB017() ;高亮的具体执行脚本
    {
    clipboard := "" ;清空剪贴板，非OB软件编辑时剪贴板未清空会出现多余内容
    Send,{LControl Down}c{LControl Up} ;复制到内容到剪贴板
    Sleep, 100
    
    PDRN := RegExMatch(clipboard, "m).*\r\n$") 
    ;判断RN是否包含换行符和回车符合内容 m模式进行
    ;两个正则都可以^[^\n]*\r\n$  .*\r\n$
    
    if (PDRN > 0){ ;如果包含这些符号(就判断为空值)，直接输入符号
		clipboard := "====" 
        Send, {LControl Down}v{LControl Up} 
        Send, {Left 2}
        ;如果包含回车和换行，剪贴板变成[[]]，后边直接粘贴，使用send会跟随大小写
        }
    else{ ;如果没有包含回车或换行
        FoundPos := RegExMatch(clipboard, "==.*==") ;判断剪贴板是否有符号
        if (FoundPos > 0) 
            {
            clipboard := RegExReplace(clipboard, "==|==", "")
            ;如果有就清除剪贴板内容[[]]]
            Send, {LControl Down}v{LControl Up} 
            ;Send, {Left 2}
            }
          else ;如果没有就加上
            {
               clipboard := RegExReplace(clipboard, "m)\s$", "") 
               ;空白字符删除
               clipboard := RegExReplace(clipboard, "m)^", "==") 
               ;开头替换为
               clipboard := RegExReplace(clipboard, "m)$", "==") ;尾部替换为
               Send, {LControl Down}v{LControl Up}  
               Send, {Left 2}
            }
          }  
     ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
     }
     
JTZXJB018() ;NEAR的具体执行脚本
    {
	d = NEAR
	clipboard = %d%  ;剪贴板复制
    Send,{LControl Down}v{LControl Up}
    }

JTZXJB019() ;#打开的窗口的具体执行脚本
    {
	d = #打开的窗口
	clipboard = %d%  ;剪贴板复制
    Send,{LControl Down}v{LControl Up}
    }  
;菜单--Obsidian语法-命令执行-尾


;菜单--时间戳-命令执行-头
JTZXJB020() ;时间戳到剪贴板的具体执行脚本
    {
	d = %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_Min%%A_Sec%
	clipboard = %d%  ;剪贴板复制
    }

JTZXJB021() ;输入时间戳的具体执行脚本
    {
	d = %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_Min%%A_Sec%
	clipboard = %d%  ;剪贴板复制
	Send,{LControl Down}v{LControl Up}
    }

JTZXJB022() ;输入[[时间戳]]的具体执行脚本
    {
	d = %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_Min%%A_Sec%
	clipboard = [`[%d%`]`]
	Send,{LControl Down}v{LControl Up}
    }
;菜单--时间戳-命令执行-尾




;菜单--菜单组最高层A-命令执行-头


JTZXJB023() ;用Everything搜索的具体执行脚本
    {
	Process,Exist, Everything.exe ;检查进程是否存在
	if ErrorLevel {  ;检查进程是否存在 用ErrorLevel判断-头

		;执行快捷键CTRL+c打开复制选中内容
		Send, {LControl Down}c{LControl Up}
 
        ;下边这部分是让QQNRHQ运行完再接着运行下边的代码，否则两边同时跑会冲突导致QQNRHQ失效
        ;MsgBox,  % K ;判断返回值是什么
        ;对QQ复制的加强项
        K := QQNRHQ()
        if ( K = "") 
        
        ;QQNRHQ()是JTZXJB023()的子函数 判断是否是QQ,是就鼠标获取QQ聊天窗口框选内容
        ;这标识QQNRHQ运行完后再运行
        {
        
		;执行快捷键CTRL+k打开Everything
		Send, {LControl Down}k{LControl Up}
        Sleep, 200 ;给一个开启缓冲时间,否则下边的检查会被跳过
      
		;检查进程是否存在 用ErrorLevel判断-尾
		;if WinActive("ahk_exe Everything.exe."){ ;判断窗口被打开才执行操作,这个命令容易失效停用
        WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
        if (active_id ="Everything.exe") ;IF 判断是否为Obsidian  
            {
            
            ;MsgBox, The active window's 进程名 is Everything.exe.  ;提示当前活动窗口进程名  
			Send, {LControl Down}v{LControl Up}
			;执行快捷键CTRL+v粘贴内容

			;2个回车打开
			;Sleep, 10
			;Send, {Enter 2}
			return
             }
		}
		return
	}
    } ;检查进程是否存在 用ErrorLevel判断-尾
    
QQNRHQ() 
;JTZXJB023()的子函数 判断是否是QQ,是就鼠标获取QQ聊天窗口框选内容
;关联--QQNRHQ() 运行失效的解决办法20201010162223.mmap
                     { 

                     WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
                     if (active_id ="QQ.exe") ;IF 判断是否为Obsidian
                        {
                    
                            ;建立坐标模式否则下边鼠标获取坐标也不知道向那移动
                            CoordMode, Menu, Screen ;坐标模式，作用于菜单，屏幕上这个区域
                            CoordMode, Mouse, Screen ;坐标模式，作用于鼠标，屏幕这个区域
                            
                            WinActivate,ahk_exe QQ.exe ;激活一次防止二次复制丢失
                            ;获取最开始点击鼠标中键的位置，鼠标移动过去，利用右键进行复制
                            global MMX    ;获取全局变量MMX 最开始点击中键的位置
                            global MMY    ;获取全局变量MMY 最开始点击中键的位置
                            ;MsgBox,鼠标位置X"%MMX%"鼠标位置Y"%MMY%" ;显示获取的位置
                            ;MsgBox, 鼠标将移动
                            SetDefaultMouseSpeed, 0 ; 瞬时移动鼠标必须在MouseMove上
                            MouseMove, MMX-2,MMY  ;鼠标移动到 X是左右 Y是上下 ，X+10 就是向右边移动10点
                            Sleep, 50
                            Send, {RButton Down}{RButton Up} ;鼠标右键 唤起选单，
                            
                            ;飞跃识图1/2--QQ聊天窗摘录到Ob--识别【复制(C)】信息
Text:="|<>**25$69.00000000000000000000000000000000000000000000000000000000000000000000000k0MA0000000Dzj5aDM00001UNzhbBU0000TzP5gkA00001UPzhg1U0000Dz35tU600000M1zdA0k00007z/Rsk600003clPBbBU0000Fw/lgTA00001swMtU1U000000007zs0000000000000000000000000000000000000000000000000000000000004"

                                
                             ;MsgBox, 飞跃识图1/2--->"%Text%"
                            ;飞跃识图2/2--QQ聊天窗摘录到Ob--定位并移动到  20201010140041
                           Sleep, 100 ;这步是必要的没有就会失效
                           if (ok:=FindText(68-150000, 233-150000, 68+150000, 233+150000, 0, 0, Text))           ;运行完FindText再运行后边的这段代码意思
                                {
                            
                                    CoordMode, Mouse,Screen
                                     X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                                        ; Click, %X%, %Y%
                                    
                                     MouseMove, X+0, Y ,0  ;x y可以调节
                                     Send,{Click, 1} ;1234567890
                                            ;MsgBox, % ok
                                     ;MsgBox, % ok

                                   }
                                 SB := Round(ok.MaxIndex())
                                 ;MsgBox, 是否识别成功 "%SB%"  ;Round(ok.MaxIndex())=0就是没找到        
                                   
                            
                            Sleep, 100
                           ; Send, {Down} ;下；此处存在问题 OB-20201006000124 
                            ;Send, {Enter}
                            
                            ;MouseMove, MMX+50,MMY+31  
                            ;鼠标移动到 X是左右 Y是上下 ，X+10 就是向右边移动10点
                            ;鼠标直接移动到界面进行点击"复制"，但如果点击的是下边就会失效
                            ;Sleep, 10
                            ;Send, {LButton Down}{LButton Up}
                            ;Sleep, 100
                            
                            ;用命令直接点击控件
                            ;ControlClick, 复制,  ahk_exe QQ.exe 
                            ;没有效果，因为识别不了，QQ用的不是类名(ClassNN
                           
                         return
                      }
                      return
                      }
                    

JTZXJB024() ;用Obsidian搜索的具体执行脚本
    {
	Send, {LControl Down}c{LControl Up} ;复制内容
    
    ;对QQ复制的加强项
    QQNRHQ() ;JTZXJB023()的子函数 判断是否是QQ,是就鼠标获取QQ聊天窗口框选内容
    
	WinActivate,ahk_exe Obsidian.exe ;激活指定窗口
    	Sleep, 100 ;太快下边的判断会被跳过
        
	;if WinActive("ahk_exe obsidian.exe") 
        ;判断窗口被打开才执行操作，WinActive稳定性差替换为下边两行
    WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
     if (active_id ="Obsidian.exe") ;IF 判断是否为Obsidian  
	{
		;Sleep, 30
		Send, {LControl Down}{LShift Down}f{LShift Up}{LControl Up} ;激活搜索框
		Send, {LControl Down}a{LControl Up}
		Send, {BackSpace} ;清空搜索框
		Send, {LControl Down}v{LControl Up}{Enter}
	}
    }


JTZXJB025() ;剪贴板搜索的具体执行脚本
    {
	Send, {LControl Down}f{LControl Up}
	Sleep, 50 ;太快窗口没打开就粘贴了
	Send, {LControl Down}v{LControl Up}
	Sleep, 10
	Send, {Enter}
    }


;菜单--菜单组最高层A--命令执行-尾


;菜单--摘录到Obsidian--命令执行-头

JTZXJB026() ;摘录到Obsidian的具体执行脚本
    {
    ;复制和QQ复制共存的情况下二次复制同样内容会产生问题,因为学习是用QQ把QQ的先停止。
    ;QQ的单独做一个项目即可
	Send, {LControl Down}c{LControl Up} ;复制    
    
    ;对QQ复制的加强项
    ;QQNRHQ() 
    ;JTZXJB023()的子函数 判断是否是QQ,是就鼠标获取QQ聊天窗口框选内容
    
	WinActivate,ahk_exe Obsidian.exe ;激活指定窗口
            Sleep, 200
            
      ;if WinActive("ahk_exe obsidian.exe") 
        ;判断窗口被打开才执行操作   ;WinActive有时有问题，替换为下边两个
     WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
     if (active_id ="Obsidian.exe") ;IF 判断是否为Obsidian  
	{   
        ;MsgBox,XXX
		;Sleep, 30
		;激活输入框 ctrl+e两次
        Send,^e^e^v 
        		;Sleep, 30
		;Send, {LControl Down}e{LControl Up}  {LControl Down}e{LControl Up} {LControl Down}v{LControl Up}     
        return 
	}
      ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
       return 
    }
return 

JTZXJB033() ;QQ聊天窗摘录到Ob的具体命令执行
      {
      K := QQNRHQ()
      if ( K = "")  ;QQNRHQ运行完候再运行下边代码
        {
        ;JTZXJB023()的子函数 判断是否是QQ,是就鼠标获取QQ聊天窗口框选内容
            Sleep, 100
        WinActivate,ahk_exe Obsidian.exe ;激活指定窗口
            Sleep, 100
            
        ;if WinActive("ahk_exe obsidian.exe") 
        ;判断窗口被打开才执行操作   ;WinActive有时有问题，替换为下边两个
        WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
            if (active_id ="Obsidian.exe") ;IF 判断是否为Obsidian  
                {   
                    ;MsgBox,XXX
                    ;Sleep, 30
                    ;激活输入框 ctrl+e两次
                    Send,^e^e^v 
                    ;Sleep, 30
                    ;Send, {LControl Down}e{LControl Up}  {LControl Down}e{LControl Up} {LControl Down}v{LControl Up}     
                    return 
                }
       ;clipboard := "" ;不要清空剪贴板，尾行复制后内容被清空还能还原
       return 
    }
    }
return 


;菜单--摘录到Obsidian--各项执行-尾

;菜单--双向跳转-命令执行-头

JTZXJB030() ;Obsidian-PotPlayer视频的具体执行脚本
    {       
            
          WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
              if (active_id ="Obsidian.exe") ;如果当前窗口是Obsidian
                {
                    Send, {LControl Down}c{LControl Up}
                        Sleep, 100
                    WinActivate, ahk_exe PotPlayerMini64.exe 
                    WinGet, active_id, ProcessName, A
                    if (active_id ="PotPlayerMini64.exe")
                        {
                             WinActivate, ahk_class #32770 ;激活一下子窗口
                             WinGetClass, active_idb, A ;查看是否是子窗口
                             ;MsgBox, 这是64位是否获取了class #32770--->"%active_idb%"
                            if (active_idb = "#32770") ;判断窗口是否是 ahk_class #32770
                                {
                                     ;Sleep, 10
                                    ;MsgBox, 64位子窗口已经激活
                                    ;Send, {Escape}
                                   ;Send,{LAlt Down}9{LAlt Up} ;退出再打开，把光标移到到搜索框
                                    ;Send,{LAlt Down}9{LAlt Up} 
                                    ;Send, !9!9  ;测试代码简洁是否运行效率高
                                    
                                    ;飞跃识图--potplayer--搜索:--1/2
                                    Text搜索:="|<>*155$66.0000000000000000000007000000000040000000000400000000004000000000040004Q0800040004rbzk004000TYU800040004zbzk0040004YYWFU040007zVw1U04000A40H0004000JzVjU0040004l3sE0040004O1/1U040004A68lU04000RnwsM00400000000004000000000040000000000400000000004000000000040000000000700000000000U"
                                    
                                    Sleep, 50
                                     ;飞跃识图--potplayer--搜索:--1/2
                                     if (ok:=FindText(368-150000, 566-150000, 368+150000, 566+150000, 0, 0, Text搜索))
                                            {
                                              CoordMode, Mouse,Screen
                                              X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                                              ; Click, %X%, %Y%
                                                MouseMove, X+50, Y ,0
                                                Send,{Click, 2} 
                                                Send, {LControl Down}v{LControl Up}
                                                 Send, {Enter}  
                                            }
                                     Sleep, 100       
                                    ;Send,{LAlt Down}99{LAlt Up} ;这个代码效率更高！
                                    ;Send, {LControl Down}av{LControl Up}
                                    ;Send, {Enter}  
                                     return 
                                 } else  
                                     {
                                        Send,{LAlt Down}9{LAlt Up} ;激活自定义书签
                                        Sleep, 100
                                        Send, {LControl Down}v{LControl Up}
                                        Send, {Enter}  
                                        return  
                                }
                                
                        }
                    else  ;------------------------------------
                    WinActivate, ahk_exe PotPlayerMini.exe 
                    WinGet, active_id, ProcessName, A
                    if (active_id ="PotPlayerMini.exe") ;查看是否已经激活主窗口
                    {       
                            ;Sleep, 200
                            WinActivate, ahk_class #32770 ;激活一下子窗口
                            WinGetClass, active_idb, A ;查看是否是子窗口
                            ;MsgBox, 是否获取了class#32770--->"%active_idb%" 
                         if (active_idb = "#32770") ;判断窗口是否是 ahk_class #32770
                           {    
                                ;Sleep, 100
                                ;MsgBox, 子窗口已经激活
                                ;Send,{LAlt Down}9{LAlt Up} ;退出再打开，把光标移到到搜索框
                                ;Send,{LAlt Down}9{LAlt Up} 
                                ;Send, !9!9 ;长短代码差不多效果
                                    ;飞跃识图--potplayer--搜索:--1/2
Text搜索:="|<>*155$66.0000000000000000000007000000000040000000000400000000004000000000040004Q0800040004rbzk004000TYU800040004zbzk0040004YYWFU040007zVw1U04000A40H0004000JzVjU0040004l3sE0040004O1/1U040004A68lU04000RnwsM00400000000004000000000040000000000400000000004000000000040000000000700000000000U"

                                Sleep, 50
                                     ;飞跃识图--potplayer--搜索:--1/2
                                 if (ok:=FindText(368-150000, 566-150000, 368+150000, 566+150000, 0, 0, Text搜索))
                                            {
                                              CoordMode, Mouse,Screen
                                              X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                                              ; Click, %X%, %Y%
                                                MouseMove, X+50, Y ,0
                                                Send,{Click, 2} 
                                                Send, {LControl Down}v{LControl Up}
                                                Send, {Enter}  
                                            }
                                
                                Sleep, 100
                               ; Send,{LAlt Down}99{LAlt Up} ;这个代码效率更高！
                                ;Send, {LControl Down}av{LControl Up}
                                ;Send, {Enter}    
                                 return 
                           }else  
                                {
                                  Send,{LAlt Down}9{LAlt Up} ;激活自定义书签
                                  Sleep, 100
                                  Send, {LControl Down}av{LControl Up}
                                  Send, {Enter}  
                                   return  
                                }

                        return  
                    }
     return  
    } ;如果是Obsidian--尾
 ;MsgBox,  "%active_id%"
 if (active_id ="PotPlayerMini64.exe") or (active_id ="PotPlayerMini.exe") 
            {
                  JTZXJB024()
                   return 
            }
      return        
    }

;Obsidian-Chrome视频
JTZXJB039()
{
;判断是否打开，用的是下边的GITHUB的猫
TextSFDK:="|<>*133$32.0070000Tz000Dzs00DzzU07zzw03zzzU0wRls0T00T07k07k1s00w0y00DUDU03s3s00y0y00DUDU03s3s00y0T00T07s0Dk1rkTw0Cw7y01U1z00A0TU01w7k00D1s000U808"

        Send, {LControl Down}c{LControl Up}
         Sleep, 100


          WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
          if (active_id ="Obsidian.exe") ;如果当前窗口是Obsidian
            {

                    WinActivate, ahk_exe chrome.exe  
                    WinGet, active_id, ProcessName, A
                    if (active_id ="chrome.exe") 
                        {       
                                if (ok:=FindText(562-150000, 1094-150000, 562+150000, 1094+150000, 0, 0,TextSFDK)) 
                                ;识别Yinote是否打开，用的是输入框右下角的书签和分享图标
                                        {
                                            CoordMode, Mouse
                                            X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                                            ; Click, %X%, %Y%
                                        }
                                        Sleep, 50
                                        
                                   if( Round(ok.MaxIndex()) =0) ;识别到Yinote没打开
                                          {
                                            Ka := JTZXJB039_3()
                                                if(K= "") ;飞跃识图打开Yinote插件 
                                                    {
                                                            Send, ^f
                                                            Sleep, 100
                                                            Send, ^v
                                                            Send, {Enter,2}
                                                    }
                                             }else ;识别到Yinote是打开的
                                                    {
                                                            Send, ^f
                                                            Sleep, 100
                                                            Send, ^v
                                                            Send, {Enter,2}
                                                    }
                                                    
                          return  
                        }
             }  else 
              ;否则是谷歌浏览器的话 JTZXJB024() 开启BOSIDIAN 搜索
                {
                   WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
                        if (active_id ="chrome.exe") ;如果当前窗口是Obsidian
                            {
                                JTZXJB024() 
                            }
                }
             
   
}
JTZXJB039_3() ;JTZXJB039()的子项飞跃找Yinote图标 并点击
{
;Yinote灰度阀值60 (暗色模式)
TextASMS:="|<>*60$25.zzzzzs0Tzw0Dzz0Dzk0DzzU7zzk7zzs1zzw0DzC87zz43zzW7zzlDzzMzzzYzzzzzzzzTzzzzzzzzzzzzzzzzzzw"

;灰度差值50（亮色模式）
TextLSMS:="|<>**50$23.00000zzU3zzk703Xy077w0CCE0Q47ks9BtnkNvb0krDVbi8HSQ0bksz01lz03Vy070Q0C0zzw0zzU0004"

;暗色模式的识别和点击
if (ok:=FindText(254-150000, 439-150000, 254+150000, 439+150000, 0, 0, TextASMS))
        {
            CoordMode, Mouse
            X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
            ;MouseMove, X+0, Y ,0
             Click, %X%, %Y%
        }
        
        Sleep, 100
;亮色模式的识别和点击 
 if (ok:=FindText(1558-150000, 79-150000, 1558+150000, 79+150000, 0, 0, TextLSMS))
            {
                CoordMode, Mouse
                X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                ;MouseMove, X+0, Y ,0
                 Click, %X%, %Y%
            }

}


JTZXJB031() ;Obsidian-ANKI的具体执行脚本
    {
         WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
          if (active_id ="Obsidian.exe") ;如果当前窗口是Obsidian
            {
                    Send, {LControl Down}c{LControl Up}
                            Sleep, 200
                    WinActivate, ahk_exe anki.exe 
                    WinGet, active_id, ProcessName, A
                    if (active_id ="anki.exe") 
                        {  ;20200923175219
                                Sleep, 100
                           Send, {Escape}b
                                Sleep, 200
                           Send, {LControl Down}a{LControl Up}
                           Send, {LControl Down}v{LControl Up}
                           Send, {Enter}
                           return  
                        }
            }
          if (active_id ="anki.exe") ;如果当前窗口是anki.exe
            {
                  JTZXJB024() ;激活Obsidian搜索
            }
          
    }


JTZXJB032() ;Obsidian-PDF的具体执行脚本---头
    {
     Send, {LControl Down}c{LControl Up}
        Sleep, 200
     WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
            ;MsgBox, The active window's 进程名 is "%active_id%".  ;提示当前活动窗口进程名
            
      if (active_id ="Obsidian.exe") ;IF 判断是否为Obsidian
        { ;如果是Obsidian--头
            
            WinActivate, ahk_exe Acrobat.exe ;激活AcrobatPDF
            ;WinActivate, ahk_exe 2345PdfReader.exe ;激活2345PdfReaderexe
                	Sleep, 100
            WinGet, active_id, ProcessName, A  ;检查是否激活为活动窗口是什么赋值到active_id
            if (active_id ="Acrobat.exe") ;oror(active_id ="2345PdfReader.exe") 
                {   ;激活搜索框粘贴搜索
                     JHSSKZT() 
                } 
              else
                    { ;1else--头
                    WinActivate, ahk_exe FoxitPhantom.exe ;激活FoxitPhantom.exe
                    WinActivate, ahk_class classFoxitPhantomPersonal ;激活classFoxitPhantomPersonal  因为exe可能激活不了，所以后补一个方式
                           Sleep, 100
                     WinGet, active_id, ProcessName, A  ;检查是否激活为活动窗口是什么赋值到active_id    
                     if (active_id ="FoxitPhantom.exe")
                         {
                            JHSSKZT() 
                         }
               else
                     { ;2else--头
                         WinActivate, ahk_exe 2345PdfReader.exe ;激活FoxitPhantom.exe
                               Sleep, 100
                          WinGet, active_id, ProcessName, A  ;检查是否激活为活动窗口是什么赋值到active_id    
                           if (active_id ="2345PdfReader.exe")
                               {
                                    JHSSKZT() 
                               }
                           return ;到这就结束，否则又循环到    1else--头    去了  
                          }   ;2else--尾
                    } ;1else--尾
           return       
        }  ;如果是Obsidian--尾
             
             
        if (active_id ="Acrobat.exe") ro (active_id ="FoxitPhantom.exe") or (active_id ="2345PdfReader.exe") ;判断是否是这三个PDF软件为活动窗口
                {
                        WinActivate, ahk_exe Obsidian.exe ;激活Obsidian.exe
                               Sleep, 100
                          WinGet, active_id, ProcessName, A  ;检查是否激活为活动窗口是什么赋值到active_id    
                           if (active_id ="Obsidian.exe")
                                {
                                        ;在Obsidian内搜索
                                        Send, {LControl Down}{LShift Down}f{LShift Up}{LControl Up} ;激活搜索框
                                        Send, {LControl Down}a{LControl Up}
                                        Send, {BackSpace} ;清空搜索框
                                        Send, {LControl Down}v{LControl Up}{Enter}
                                }
                 return                
                }
    }
 JHSSKZT() ;激活PDF搜索框，粘贴，搜索 JTZXJB032()的附属脚本
        {
           Send, {LControl Down}f{LControl Up} 
           Send, {LControl Down}v{LControl Up}
           Sleep, 100
           Send, {Enter}
  
        }
        
 JTZXJB034() ;Obsidian-MindManager的具体执行脚本
       {
         WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
          if (active_id ="Obsidian.exe") ;如果当前窗口是Obsidian
            {
                    Send, {LControl Down}c{LControl Up} ;复制内容
                            Sleep, 200 ;必要等待切换程序时间
                    WinActivate, ahk_exe MindManager.exe  ;激活MindManager
                    WinGet, active_id, ProcessName, A
                    if (active_id ="MindManager.exe") ;判断是不是MindManager为获得窗口
                        { 
                                Sleep, 200 ;必要等待程序响应时间
                           ;Send, {LControl Down}g{LControl Up} ;一般搜索
                           Send, ^+!f ;打开高级搜索
                                Sleep, 100 ;
                           Send, {LControl Down}v{LControl Up}
                           Send, {Enter}
                           return  
                        }
            }
          if (active_id ="MindManager.exe") ;如果当前窗口是MindManager.exe
            {
                  JTZXJB024() ;激活Obsidian搜索
            }
          
    }                 
 
 
 JTZXJB038() ;MindManager-PDF
                 {
     Send, {LControl Down}c{LControl Up}
        Sleep, 200
     WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
            ;MsgBox, The active window's 进程名 is "%active_id%".  ;提示当前活动窗口进程名
            
      if (active_id ="MindManager.exe") ;IF 判断是否为MindManager.exe
        { ;如果是MindManager--头
            
            WinActivate, ahk_exe Acrobat.exe ;激活AcrobatPDF
            ;WinActivate, ahk_exe 2345PdfReader.exe ;激活2345PdfReaderexe
                	Sleep, 100
            WinGet, active_id, ProcessName, A  ;检查是否激活为活动窗口是什么赋值到active_id
            if (active_id ="Acrobat.exe") ;oror(active_id ="2345PdfReader.exe") 
                {   ;激活搜索框粘贴搜索
                     JHSSKZT() 
                } 
              else
                    { ;1else--头
                    WinActivate, ahk_exe FoxitPhantom.exe ;激活FoxitPhantom.exe
                    WinActivate, ahk_class classFoxitPhantomPersonal ;激活classFoxitPhantomPersonal  因为exe可能激活不了，所以后补一个方式
                           Sleep, 100
                     WinGet, active_id, ProcessName, A  ;检查是否激活为活动窗口是什么赋值到active_id    
                     if (active_id ="FoxitPhantom.exe")
                         {
                            JHSSKZT() 
                         }
               else
                     { ;2else--头
                         WinActivate, ahk_exe 2345PdfReader.exe ;激活FoxitPhantom.exe
                               Sleep, 100
                          WinGet, active_id, ProcessName, A  ;检查是否激活为活动窗口是什么赋值到active_id    
                           if (active_id ="2345PdfReader.exe")
                               {
                                    JHSSKZT() 
                               }
                           return ;到这就结束，否则又循环到    1else--头    去了  
                          }   ;2else--尾
                    } ;1else--尾
           return       
        }  ;如果是MindManager--尾
             
             
        if (active_id ="Acrobat.exe") ro (active_id ="FoxitPhantom.exe") or (active_id ="2345PdfReader.exe") ;判断是否是这三个PDF软件为活动窗口
                {
                        WinActivate, ahk_exe MindManager.exe ;激活MindManager.exe
                               Sleep, 100
                          WinGet, active_id, ProcessName, A  ;检查是否激活为活动窗口是什么赋值到active_id    
                           if (active_id ="MindManager.exe")
                                {
                                        ;在MindManager内搜索
                                        Send, ^+!f ;激活搜索框
                                        Send, {LControl Down}a{LControl Up}
                                        Send, {BackSpace} ;清空搜索框
                                        Send, {LControl Down}v{LControl Up}{Enter}
                                }
                 return                
                }
    }
        
  


;菜单--双向跳转-命令执行-尾   





;菜单-编辑子菜单---命令执行--头

JTZXJB037() ;转为新笔记的具体执行脚本    ;关联-20201006190240.mmap
     {        
              WinActivate, ahk_exe obsidian.exe ;激活ob
               if WinActive("ahk_exe obsidian.exe")
                 {      
                        ;clipboard := "" ;清空剪贴板
                        ;InputBox, UserInput, 新笔记标题, 请输入保存所选文字的新笔记的标题。,,640,125
                        InputBox, BJBT, 设置笔记标题,请为Obsidian内框选的内容设置一个笔记标题，标题请勿包含*"\/<>:|?。被框选的内容将成为新笔记内容(可改选/重选)，[[新笔记]]将会出现在当前笔记下【如果光标未选任何内容将默认为获取“整行/段内容”】,,350,200,,,Locale   
                             if ErrorLevel 
                                    return  ;如果点击取消则退出
                               else
                                    {
                                        WinActivate, ahk_exe obsidian.exe ;防止用户跳到其它窗口
                                        Sleep, 100
                                         clipboard := "" ;清空剪贴板 
                                         Sleep, 10
                                        ;复制内容存到JTBNR 剪贴板内容
                                        Send, ^x ;c复制选中内容,X剪贴内容，
                                        ;直接剪切内容可防止鼠标未框选后边用标题覆盖清除失败
                                        Sleep, 100
                                        
                        
                                        if (clipboard != "") ;如果如果复制的内容（剪贴板）不等于空
                                            {   ; 建立一个输入框让用户输入标题                 

                                                if ErrorLevel 
                                                        return  ;如果点击取消则退出
                                                else
                                                        {
                                                            JTBNR := clipboard ;赋值JTBNR为剪贴板内容
                                                            WinActivate, ahk_exe obsidian.exe ;再次跳回防止用户跳到其它窗口
                                                            clipboard := "[[" BJBT "]]"  ;这步同时也清空（覆盖）了被选[[这是笔记名字]]内容
                                                            Send, ^v            ;这步把带双方的名字粘贴就创建了一个笔记
                                                            Sleep, 100
                                                            Send, ^n            ;新建笔记本
                                                            Sleep, 300  ;这里需要多点时间，否则会被刷没
                                    
                                                            ;命名新笔记,并粘贴内容
                                                            clipboard := BJBT   
                                                            Send, ^v             ;给新笔记标题命名,就进入了笔记
                                                            Send {Enter}        ;回车到编辑区
                                                            Sleep, 100
                                                            clipboard := JTBNR 
                                                            Send, ^v               ;输入剪贴板内容
                                    
                                                            Sleep, 100
                                                            Send, ^!{Left}        ;ctrl alt 左
                                                            ;系统默认的返回按键     这里可以把^{Left}  设置到我的ahk里软件用默认即可
                                                            Sleep, 50
                                                            Send, {Left}
                                    
                                                            return
                                                    }
                                                    
                                        }
                                    else
                                         {
                                            MsgBox, 未框选任何内容，请框选后再试。
                                            return
                                          }
                            
                                } return
       } return 
    }


/* JTZXJB037() 之前的
{        
              WinActivate, ahk_exe obsidian.exe ;激活ob
               if WinActive("ahk_exe obsidian.exe")
                 {   
                        clipboard := "" ;清空剪贴板
                        
                        ;复制内容存到JTBNR 剪贴板内容
                        Send, ^c ;c复制选中内容,X剪贴内容
                        Sleep, 100
                        JTBNR := clipboard ;赋值JTBNR为剪贴板内容
                        
                    if (clipboard != "") ;如果如果复制的内容（剪贴板）不等于空
                        {   ; 建立一个输入框让用户输入标题                 
                        ;InputBox, UserInput, 新笔记标题, 请输入保存所选文字的新笔记的标题。,,640,125
                        InputBox, BJBT, 请为笔记设置标题,,,400,100
                            if ErrorLevel 
                                    return  ;如果点击取消则退出
                               else
                                    clipboard := "[[" BJBT "]]" 
                                    Send, ^v            ;这步把带双方的名字粘贴就创建了一个笔记
                                    Sleep, 100
                                    Send, ^n            ;新建笔记本
                                    Sleep, 300  ;这里需要多点时间，否则会被刷没
                                    
                                    ;命名新笔记,并粘贴内容
                                    clipboard := BJBT   
                                    Send, ^v             ;给新笔记标题命名,就进入了笔记
                                    Send {Enter}        ;回车到编辑区
                                    Sleep, 100
                                    clipboard := JTBNR 
                                    Send, ^v               ;输入剪贴板内容
                                    
                                    Sleep, 100
                                    Send, ^!{Left}        ;ctrl alt 左
                                    ;系统默认的返回按键     这里可以把^{Left}  设置到我的ahk里软件用默认即可
                                    Sleep, 50
                                    Send, {Left}
                          }
                        }
        }
*/

JTZXJB035()     ;文本全局修改的具体执行脚本
        {
	IniRead, KWZ, %A_WorkingDir%\WLZS.ini, KWZ, key 
    ;读取脚本当前工作目录%A_WorkingDir%，获得设定的路径
    clipboard := "" 清空剪贴板
    
	WinActivate, ahk_exe obsidian.exe ;激活ob
	if WinActive("ahk_exe obsidian.exe")
        { ;判断是否是ob
            ClipSaved := ClipboardAll ;赋值ClipSaved为全部剪贴板ClipboardAll
            Send, ^c ;复制选中内容
            Sleep, 100
		if (clipboard != "") ;如果如果复制的内容（剪贴板）不等于空
            {
                JTBWB := clipboard ;赋值JTBWB为剪贴板内容
                FoundPos := RegExMatch(JTBWB, "\n") ;判断JTBWB是否有换行符
                if (FoundPos > 0) ;多行情况保存为新笔记
                        {
                                MsgBox, 未选中内容或多行内容，请选取单行内容。
                                return
                        }
                     else
                         {
                                InputBox, XGHWB, 请修改内容,,,400,100,,,Locale,,%JTBWB%  ;弹出JTBWB给用户修改
                                    if ErrorLevel  
                                            ;选择取消ErrorLevel=1 确定=0 确定或取消XGHWB都会是输入值
                                            ;MsgBox,  修改已被取消。
                                            return      ;结束
                                    else
                                           loop, Files,%KWZ%\*.md,R 
                    ;获取路径下的子目录的所有.md文件 ，重复读取每个.md
                                                {
                                                    FileEncoding ,UTF-8
                                                    ;FileEncoding为FileRead设置编码
                                                    FileRead, OutputVar, %A_LoopFileLongPath% 
                                                    ;读取文件的内容到变量OutputVar
                                                    BXGWB := StrReplace(OutputVar,JTBWB,XGHWB) 
                                                    ;搜索某个md内容查看是否有剪贴板的内容，把这些内容替换为修改后的
                                                    FileDelete, %A_LoopFileLongPath%
                                                    ;绝对路径A_LoopFileLongPath
                                                    FileEncoding ,UTF-8
                                                    FileAppend, %BXGWB%, %A_LoopFileLongPath% ,UTF-8-RAW
                                                  }               
                             } ;不是多行情况-尾
                }
                
                MsgBox, 未框选任何内容，请框选后再试。
                return
                ;剪贴板内容不等于空-尾
      }  ;判断是否是ob--尾
} ;文本全局修改的具体执行脚本-尾
        
JTZXJB036()         ;选择库目录具体执行脚本
        {
            IniRead, KWZ, %A_WorkingDir%\WLZS.ini, KWZ, key 
                ;读取脚本当前工作目录的WLZS.ini 威廉助手
                ;KWZ=库位置
            WinActivate, ahk_exe obsidian.exe
            if WinActive("ahk_exe obsidian.exe")
                 {
                    FileSelectFolder, OutputVar, *%KWZ%,3,你的Obsidian库根目录在那
                    if OutputVar =
                        MsgBox, 未选择到根目录为空,请重新选择。
                else
                        MsgBox, 已经保存 "%OutputVar%" 为全局修改功能使用的目录。
                        IniWrite, %OutputVar%,  %A_WorkingDir%\WLZS.ini, KWZ, key
                  }
        }

;菜单-编辑子菜单---命令执行--尾


;有道OCR翻译
TZXJB040()
    {   
        Send,^+y ;这里需要有道里边设置开机启动和也设置开启快捷键
        Sleep, 250 
        ;WinActivate,ahk_exe YoudaoDict.exe ;激活指定窗口
        WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
        if (active_id ="YoudaoDict.exe")
        {   
            ;1k屏幕
            Text:="|<>*226$22.00000003ivUCvi0k0M0000A1s0kDk3Dzw0zzknwz3DVwAw3k3kD3DVwCzDkvzz0Dzw00000008"
            ;4K屏幕
            Textb:="|<>*225$31.DjjjU7rrrk3k00s0000E000000Q07s0D07y07U3z03nzzzU1zzzk0zzzsQTwDwDDw3y7bw0z3ny0TU1z0Dk0zU7sQTk3wDjw3y7rz3z3vzzzVNzzzk0zzzs00000U"

            if (ok:=FindText(1238-150000, 321-150000, 1238+150000, 321+150000, 0, 0,Text)) or (ok:=FindText(2052-150000, 1050-150000, 2052+150000, 1050+150000, 0, 0, Textb))
                {
                  CoordMode, Mouse
                  X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                  Sleep, 100 
                    Click, %X%, %Y%
                return
                }
        }
    
    }

;有道翻译 
TZXJB041()
    {
         Send,^c
            Sleep, 100

             Send,^+y ;这里需要有道里边设置开机启动和也设置开启快捷键  
             Sleep, 100 
             ;WinActivate,ahk_exe YoudaoDict.exe ;激活指定窗口
             
             WinGet, active_id, ProcessName, A  ;获取活动窗口进程名，赋值到active_id
             ;MsgBox, % active_id ;到这步有点慢
             if (active_id ="YoudaoDict.exe")
                 {      ;MsgBox, 有道已经运行
                     ;Send,e
                     kk:=JHYDC2() ;激活有道后点击一下才能激活输入
                     if (kk="")
                     {
                        ;Send,{Backspace}
                         Send,^v
                         send,{Enter}
                         Sleep,100
                         return
                     }
                 }
    }
JHYDC2() ;激活有道后点击一下才能激活输入
    {   
        ;1k
        Text:="|<>*154$38.00000000000003zzzz03zzzzw0zzzzz0Tzzzzs7zzzzy1zzzzzUTzzzzs7zzzzy1zzzzzUTzzzzs7yTzAy1zbzmDUT03k0s7szbXy1y0QUDUT3Xdns7VUg0y1m29DDUTW3E3s7l0osy1wa16TUT9YQ7s7n1kyS8"
        ;4K
        Textb:="|<>*149$53.7zzzzzzzkDzzzzzzzUTzzzzzzz0zzDzznby1zwDzz67w3zszzzATs7s00DU03kDk01n00TUTwTzXwTz0zkUD7U7y1zU0D467w3y1wD8yDs7sD0Pk0TkDUM0X00zUS8VV2Dlz0xkT34E3y1zVUD807w3y60CFwTs7w8E1XszkDslk301zUTlX23k7j0zXa70zwS1yDUTU03w3wzkzs0Ts7zzzzzzzl"
        if (ok:=FindText(523-150000, 525-150000, 523+150000, 525+150000, 0, 0, Text)) or if (ok:=FindText(1453-150000, 532-150000, 1453+150000, 532+150000, 0, 0, Textb))
            {
                SetDefaultMouseSpeed, 0 ; 瞬时移动鼠标必须在MouseMove上
              CoordMode, Mouse
              X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
               Click, %X%, %Y%
               
            }
    }

JHYDCK() ;从右下角小图标激活有道;未使用
    {   
        ;未划词时
        Texta:="|<>*142$14.zzw7y0Xb8NnaQvUTyDzzzbztg63zlzzzy"
        ;划词时右下角图标
        Textb:="|<>*156$14.zzyDz1Xb8NnaQvkAy1DyHjwtkT0Dnzzzy"
        
        if (ok:=FindText(1557-150000, 1154-150000, 1557+150000, 1154+150000, 0, 0, Texta)) or (ok:=FindText(1557-150000, 1154-150000, 1557+150000, 1154+150000, 0, 0, Textb))
           {
             CoordMode, Mouse
             X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
             Click, %X%, %Y%
           }

    }

;菜单--威廉助手子菜单--命令执行--头

JTZXJB027() ;跳转知乎详细说明的具体执行脚本
    {
    run https://zhuanlan.zhihu.com/p/261183846
    }


JTZXJB028() ;跳转QQ群1026788769的具体执行脚本
    {
    run https://jq.qq.com/?_wv=1027&k=NPzwrl5D
    }
    
;菜单--威廉助手子菜单--命令执行--尾


;热键按下时用到的脚本--命令执行--头

HQSBWZ()     ;获取鼠标位置为全局变量  ;获取鼠标点击中键时的位置
    {
            CoordMode, Menu, Screen ;坐标模式，作用于菜单，屏幕上这个区域
            CoordMode, Mouse, Screen ;坐标模式，作用于鼠标，屏幕这个区域
            ;global   ;global申明全局变量 
            MouseGetPos,MX,MY ;获取鼠标位置,X,Y  ;global 设置为全局变量
               global MMX := MX	;把MMY赋值MY，并设置为全局变量
               global MMY := MY	;把MMY赋值MY，并设置为全局变量
            ;MsgBox,鼠标位置X"%MX%"鼠标位置Y"%MY%" ;显示获取的位置
            ;Sleep, 1000 ;延时
            ;SetDefaultMouseSpeed, 0 ; 瞬时移动鼠标必须在MouseMove上
            ;MouseMove, MX,MY  ;鼠标移动到
    }

;热键按下时用到的脚本--命令执行--头    


;-----具体执行脚本区-----尾






;-----热键-----头
        ;鼠标中键激活菜单
        !q::
        ^.::
        MButton::
            HQSBWZ() ;获取鼠标位置为全局变量,放置在 Menu前，否则会失效
            Menu, 菜单组最高层A, Show  ;鼠标中键激活菜单
            return
;-----热键-----尾






;------------------------大脚本结束------------------------






;-------热字-------
;在Obsidian中使用
#IfWinActive ahk_class Chrome_WidgetWin_1


;--通用拓展热字串
#IfWinActive
:*O:/ob::Obsidian
:*O:/ahk::AutoHotkey
:*O:/qu::Quicker
return
;--时间戳热字串
/*
:*:/t::
	d = %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_Min%%A_Sec%
	clipboard = %d% ;剪贴板复制d
	Send ^v ;ctrl+v 粘贴
    return
*/





;-------辅助热键-------

;--在MinManager中使用（以下代码只在MinManager中）
#IfWinActive ahk_exe MindManager.exe  

WheelUp::        
 Send, ^=
 return
 ;使用各种命令不稳定，主要用的就是脑图窗口，在其它窗口时暂停下工具即可
/*
MouseGetPos, , , , control ;判断鼠标所在位置的ClassNN控件的类名
            MsgBox, % control
if (control="AfxFrameOrView140u1") or (control="AfxFrameOrView140u2") 
     ;AfxFrameOrView140u1
     ;AfxFrameOrView140u2
         {      
            MsgBox, % control
     
                    Send, ^=
         }
    else
        {   ;否则
            Send, {WheelUp} ;运行原来的按钮
        }
        return
*/               

WheelDown::
            Send, ^-
            return

;--在Obsidian中使用
#IfWinActive ahk_exe Obsidian.exe  
;优化了系统默认按键，又不将其改变，【转为新笔记】依赖软件默认的快捷键
^Left::
Send, ^!{Left}
 return
 
 ^Right::
 Send,^!{Right}
 return
 
 ;在所有程序都可用
 #IfWinActive 


