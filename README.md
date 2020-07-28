# bbsStrong
This project comes from the Internet and is a forum system. Here I provide the source code for everyone to learn. The forum is very large, and the backend can match PHP dream weaving or empire. After this system is finished, you can go to the teacher. Secondly, as this project is a learning project, if it causes all the consequences after commercialization, the most code and sharer will not bear any responsibility. This project is an old project in the past, you can learn the logical thinking inside, and the ideas and essence of the older generation of programmers are in it.

Operating environment

jdk8+tomcat8+myeclipse2017ci (the environment is best to be unified)

Project technology

spring+spring mvc+hibernate+bootstrap+jquery

Precautions：
When running, myeclipse needs to modify catalina.properties

Add a sentence, this code is very important. If it is not modified, it will throw a javax.el.Exception. Because it is an old project, the higher version needs to modify the configuration file:

org.apache.el.parser.SKIP_IDENTIFIER_CHECK=true（add this sentence to files）
