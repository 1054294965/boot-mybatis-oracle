springboot+mybatis+mapper.xml

导入到项目中:
调整application.yml中数据库地址和帐号密码  
运行init.sql创建表  
maven构建完成后，启动项目  

查询：  
http://localhost:8080/getLibrarian?id=1


知识点：  
mybatis.mapperLocations= classpath:mappers/*.xml
指定mapper.xml路径，这是最关键的配置项，不配置会报错。  

mybatis.type-aliases-package: com.example.accessingdatamysql.entity 
指定实体类位置，可以不配置，但是xml中的type就要用完全类路径。如果配置了，就可以直接用类名。  

@MapperScan(basePackages = "com.example.accessingdatamysql.dao") 
指定mapper类的路径,可以不配置，只不过扫描范围会增大，所有带有@Mapper注解的bean都会被装配。（其实类名后缀为Mapper的也会自动装配，保险起见，推荐加@Mapper注解）  

综上，mybatis原理就是从mapper.xml开始，根据namespace找Mapper类，根据id找方法名，根据type找对应entity类。





