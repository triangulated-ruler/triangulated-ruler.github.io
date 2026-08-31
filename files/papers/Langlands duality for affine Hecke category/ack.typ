#pagebreak()
#v(5em)
#show heading.where(level:1): set heading(numbering: (num) => {},
      supplement: [])

#show heading.where(level: 1): it => [
        #set block(below: 18pt, above: 24pt)
        #set text(size:16pt, weight: "medium", font: "Arial")
        #v(3em)
        #align(center, it)]
= Acknowledgements
#[
  #set par(justify: true)
  #set text(font: "Times New Roman", size: 12pt)
  #set par(leading: 8pt, first-line-indent: (amount:2em, all: true))
  First of all, I would like to extend my sincere gratitude to my teachers, especially my advisor, Professor Penghui Li, who introduced me to this wonderful problem in geometric Langlands theory and guided me through it. Moreover, I would like to thank Professor Lin Chen, who first introduced me to geometric representation theory through his fantastic introductory course. Furthermore, I would like to thank Professor Koji Shimizu for his excellent course on étale cohomology, which gave me a clear introduction to the theory of $ell$-adic sheaves and weights, a theory of fundamental importance in this paper. 

  I would also like to express my heartfelt thanks to my friends. I would like to thank Mingyu Bai, Zhixing Huang, Jinyi Wang, and Jianyu Ren for their help with representation theory; Zixi Li, Hanqi Wang, Zikai Dong, and Yuxuan Li for their help with algebraic geometry and category theory; and Jie Yang and Fanyi Li for their help with number theory and the Langlands program. Without the helpful conversations I had with them, the completion of this essay would not have been as smooth. Additionally, I would like to thank the AI assistants ChatGPT, Gemini, and DeepSeek, which answered many basic questions of mine and guided me through the early parts of many unfamiliar subjects. Last but not least, I would like to thank the typesetting system Typst, which provided a comfortable experience for writing this paper, and I must thank Zixi Li especially for sharing his template with me. 

  This paper is dedicated to my parents, who have always supported me in pursuing my interests and have been a great source of encouragement throughout my academic journey. I am deeply grateful for their unwavering love and support. 
]
#pagebreak()
#v(5em)
#show heading.where(level: 1): it => [
        #set block(below: 18pt, above: 24pt)
        #set text(size:16pt, weight: "medium", font: "SimHei")
        #v(3em)
        #align(center, it)
        #v(2em,weak:true)]
#heading([#set text(font: "SimHei")
声明])
#[
  #set par(justify: true)
  #set text(font: "SimSun", size: 12pt)
  #set par(leading: 8pt, first-line-indent: (amount:2em, all: true))
  本人郑重声明：所呈交的综合论文训练论文，是本人在导师指导下，独立进行研究工作所取得的成果。尽我所知，除文中已经注明引用的内容外，本论文的研究成果不包含任何他人享有著作权的内容。对本论文所涉及的研究工作做出贡献的其他个人和集体，均已在文中以明确方式标明。
  #linebreak()
  #linebreak()
  #linebreak()
  #columns(4)[
    #align(right)[
    
    #linebreak()
    #linebreak()
    
    ]
    #colbreak()
    #colbreak()
    #align(right)[
    作者签名：
    #linebreak()
    #linebreak()
    日期：
    ]
    #colbreak()
  ]
]
