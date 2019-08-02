package com.zzti.practice._util;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

import java.sql.SQLException;

public class MyBatisPlusGenerator {
    public static void main(String[] args) throws SQLException {
        GlobalConfig config = new GlobalConfig();

        config.setActiveRecord(true) // 是否支持AR模式
                .setAuthor("lcy") // 作者
                .setOutputDir("D:\\test") // 生成路径
                .setFileOverride(true)  // 文件覆盖
                .setIdType(IdType.AUTO) // 主键策略
                .setServiceName("%sService")  // 设置生成的service接口的名字的首字母是否为I
                // IEmployeeService
                .setBaseResultMap(true)//生成基本的resultMap
                .setBaseColumnList(true);//生成基本的SQL片段

        //2. 数据源配置
        DataSourceConfig  dsConfig  = new DataSourceConfig();
        dsConfig.setDbType(DbType.MYSQL)  // 设置数据库类型
                .setDriverName("com.mysql.jdbc.Driver")
//                .setUrl("jdbc:mysql://202.196.38.45:3306/sharebed?useSSL=false&useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&serverTimezone=UTC")
//                .setUrl("jdbc:mysql://39.98.209.245:3306/sharebed?useSSL=false&useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&serverTimezone=UTC")
                .setUrl("jdbc:mysql://localhost:3306/practice?useSSL=false&useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&serverTimezone=UTC")
                .setUsername("root")
                .setPassword("root");
//                .setPassword("1qazXSW@");

        //3. 策略配置globalConfiguration中
        StrategyConfig stConfig = new StrategyConfig();
        stConfig.setCapitalMode(true)
                .setNaming(NamingStrategy.underline_to_camel) // 数据库表映射到实体的命名策略
                ;  // 生成的表

        //4. 包名策略配置
        PackageConfig pkConfig = new PackageConfig();
        pkConfig.setParent("com.zzti.practice")
                .setMapper("mapper")//dao
                .setService("service")//servcie
                .setController("controller")//controller
                .setEntity("entity")
                .setXml("mapper");//mapper.xml

        //5. 整合配置
        AutoGenerator  ag = new AutoGenerator();
        ag.setGlobalConfig(config)
                .setDataSource(dsConfig)
                .setStrategy(stConfig)
                .setPackageInfo(pkConfig);
        ag.execute();

    }
}
