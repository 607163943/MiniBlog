-- ========================
-- 建表语句
-- ========================

-- 文章表
CREATE TABLE article (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    column_id BIGINT COMMENT '所属专栏id（逻辑外键）',
    title VARCHAR(255) NOT NULL COMMENT '标题',
    description VARCHAR(255) COMMENT '文章简介',
    content LONGTEXT COMMENT '文章内容 markdown 文本',
    cover_url VARCHAR(512) COMMENT '图片链接 存入 MinIO',
    publish_status TINYINT NOT NULL DEFAULT 0 COMMENT '0草稿 1发布 2下架',
    is_deleted TINYINT(1) NOT NULL DEFAULT 0 COMMENT '1删除 0未删除',
    release_time DATETIME DEFAULT NULL COMMENT '发布时间',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章表';

-- 专栏表
CREATE TABLE blog_column (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    name VARCHAR(100) NOT NULL UNIQUE COMMENT '专栏名',
    description VARCHAR(255) COMMENT '专栏描述',
    cover_url VARCHAR(512) COMMENT '专栏图片链接 存入 MinIO',
    publish_status TINYINT NOT NULL DEFAULT 0 COMMENT '0草稿 1发布 2下架',
    is_deleted TINYINT(1) NOT NULL DEFAULT 0 COMMENT '1删除 0未删除',
    release_time DATETIME DEFAULT NULL COMMENT '发布时间',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='专栏表';

-- 标签表
CREATE TABLE tag (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    name VARCHAR(100) NOT NULL UNIQUE COMMENT '标签名',
    description VARCHAR(255) COMMENT '标签描述',
    color VARCHAR(20) COMMENT '颜色，固定16进制 #RRGGBB',
    active_status TINYINT(1) NOT NULL DEFAULT 1 COMMENT '1激活 0失活',
    is_deleted TINYINT(1) NOT NULL DEFAULT 0 COMMENT '1删除 0未删除',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标签表';

-- 文章标签关联表
CREATE TABLE article_tag (
    article_id BIGINT NOT NULL COMMENT '文章ID',
    tag_id BIGINT NOT NULL COMMENT '标签ID',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (article_id, tag_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章与标签关联表';

-- 数据字典表
CREATE TABLE sys_dict (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    code VARCHAR(50) NOT NULL UNIQUE COMMENT '字典编码',
    name VARCHAR(100) NOT NULL COMMENT '字典名称',
    items TEXT NOT NULL COMMENT '字典项，JSON字符串存储',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据字典表';

-- ========================
-- 初始化数据
-- ========================

-- 插入专栏
INSERT INTO blog_column (name, description, cover_url, publish_status, release_time)
VALUES 
('Java基础专栏', '面向初学者的Java核心知识', 'http://localhost:9000/cover/java.png', 1, NOW()),
('SpringBoot专栏', 'SpringBoot快速上手与实战', 'http://localhost:9000/cover/springboot.png', 1, NOW());

-- 插入标签
INSERT INTO tag (name, description, color, active_status)
VALUES
('Java', 'Java语言基础相关', '#FF5733', 1),
('SpringBoot', 'SpringBoot框架相关', '#33C1FF', 1),
('数据库', 'MySQL/Redis相关', '#28A745', 1);

-- 插入文章
INSERT INTO article (column_id, title, description, content, cover_url, publish_status, release_time)
VALUES
(1, 'Java基础语法详解', '快速掌握Java语法与常用API', '# Java语法\n\n这是Java语法入门文章内容...', 
 'http://localhost:9000/article/java1.png', 1, NOW()),
(2, 'SpringBoot项目搭建指南', '一步步带你搭建SpringBoot项目', '# SpringBoot搭建\n\n这是SpringBoot文章内容...',
 'http://localhost:9000/article/springboot1.png', 1, NOW());

-- 插入文章-标签关系
INSERT INTO article_tag (article_id, tag_id)
VALUES
(1, 1), -- Java基础语法详解 -> Java
(1, 3), -- Java基础语法详解 -> 数据库
(2, 2); -- SpringBoot项目搭建指南 -> SpringBoot

-- 插入数据字典
-- 发布状态
INSERT INTO sys_dict (code, name, items) VALUES
(
  'publish_status',
  '发布状态',
  '[
     {"value":0, "label":"草稿"},
     {"value":1, "label":"发布"},
     {"value":2, "label":"下架"}
   ]'
);

-- 激活状态
INSERT INTO sys_dict (code, name, items) VALUES
(
  'active_status',
  '激活状态',
  '[
     {"value":0, "label":"失活"},
     {"value":1, "label":"激活"}
   ]'
);
