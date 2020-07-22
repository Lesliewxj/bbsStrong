# bbsStrong
该项目来源于网上，在此我提供源码供大家学习，该论坛很大，后台可以和php织梦或者帝国匹配。这套系统啃完，你就可以出师了。crying其次，本项目作为学习项目，如果商用后，造成所有后果，最代码和分享人不负任何责任。该项目作为以前的老项目，可以学习下里面的逻辑思维，老一辈的程序员的想法和精髓都在其中。

运行环境

jdk8+tomcat8+myeclipse2017ci(环境最好统一)

项目技术

spring+spring mvc+hibernate+bootstrap+jquery

注意事项

在运行的时候，myeclipse需要修改catalina.properties

添加一句话，这句代码十分重要，如果不修改会抛出，javax.el.Exception的异常，因为是老项目，高版本需要修改配置文件:

org.apache.el.parser.SKIP_IDENTIFIER_CHECK=true

