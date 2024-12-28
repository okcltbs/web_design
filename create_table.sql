CREATE TABLE user_info (
                           user_id INT NOT NULL AUTO_INCREMENT,            -- 用户标识，主键
                           username VARCHAR(255) NOT NULL,                     -- 用户名
                           password VARCHAR(255) NOT NULL,                     -- 密码
                           user_type INT NOT NULL,                         -- 用户类型，0表示系统管理员，1表示普通用户
                           real_name VARCHAR(255) NOT NULL,                     -- 用户姓名
                           id_type INT NOT NULL,                           -- 证件类型，0表示身份证，1表示其他
                           id_num VARCHAR(255) NOT NULL,                       -- 证件号码
                           phone VARCHAR(20) NOT NULL,                         -- 手机号
                           user_intro VARCHAR(500),                            -- 用户简介，允许为空
                           created_time datetime NOT NULL,  -- 注册时间
                           modified_time datetime NOT NULL ,  -- 修改时间
                           PRIMARY KEY (user_id),                              -- 设置主键
                           UNIQUE KEY (username)                               -- 设置用户名为唯一
) DEFAULT CHARSET=utf8mb4;

create table country_info(
                             country_id int NOT NULL AUTO_INCREMENT,
                             country_name varchar(255) not null ,
                             located_city varchar(255) not null ,
                             located_province varchar(255) not null,
                             PRIMARY KEY (country_id)
)DEFAULT CHARSET=utf8mb4;

CREATE TABLE  promote_info(
                              promote_id INT NOT NULL AUTO_INCREMENT,           -- 宣传标识，主键
                              user_id INT NOT NULL,                              -- 宣传用户标识
                              country_id INT NOT NULL,                           -- 乡镇标识
                              promote_type VARCHAR(255) NOT NULL,                   -- 宣传类型（如农家院、自然风光等）
                              promote_name VARCHAR(255) NOT NULL,                   -- 宣传主题名称
                              promote_description VARCHAR(500) NOT NULL,                -- 宣传描述
                              photo_oss_id VARCHAR(255),                            -- 图片介绍文件，允许为空
                              video_oss_id VARCHAR(255),                            -- 视频介绍文件，允许为空
                              created_time datetime not null , -- 创建时间
                              modified_time datetime not null , -- 修改时间
                              status INT NOT NULL,                              -- 状态（0已发布，1已取消）
                              PRIMARY KEY (promote_id)                              -- 设置主键
)DEFAULT CHARSET=utf8mb4;


CREATE TABLE power_info (
                            power_id INT NOT NULL AUTO_INCREMENT,            -- 助力标识，主键
                            promote_id INT NOT NULL,                         -- 宣传标识
                            user_id INT NOT NULL,                            -- 助力用户标识
                            power_description VARCHAR(500),                         -- 助力描述，允许为空
                            photo_oss_id VARCHAR(255),                          -- 助力介绍图片，允许为空
                            created_time datetime not null , -- 创建时间
                            modified_time datetime not null , -- 修改时间
                            status INT NOT NULL,                            -- 状态（0：待接受，1：同意，2：拒绝，3：取消）
                            PRIMARY KEY (power_id)                             -- 设置主键
)DEFAULT CHARSET=utf8mb4;

create table power_success_info(
                                   promote_id int not null ,
                                   promote_user_id int not null ,
                                   power_id int not null ,
                                   power_user_id int not null ,
                                   created_time datetime not null
)DEFAULT CHARSET=utf8mb4;

CREATE TABLE power_success_collection (
                                          month VARCHAR(7) NOT NULL,                          -- 月份，格式如 'YYYY-MM'
                                          locate VARCHAR(255) NOT NULL,                        -- 地域（省-市）
                                          country_id INT NOT NULL,                          -- 乡镇标识
                                          promote_type INT NOT NULL,                       -- 宣传类型
                                          total_promote_num INT NOT NULL,                      -- 月累计宣传用户数
                                          total_power_num INT NOT NULL                        -- 月累计助力用户数
)DEFAULT CHARSET=utf8mb4;







