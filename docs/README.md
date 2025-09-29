------

# MiniBlog

本项目是一个 **博客小 demo 项目**，主要用于学习和实践前后端分离开发。

## 技术栈

### 前端

- 用户端：Vue2 + ElementUI + Echarts + Vuex
- 管理端：Vue2 + ElementUI + Echarts + Vuex

### 后端

- JDK11 + SpringBoot2 + SpringMVC + MyBatisPlus

### 数据库

- MySQL

------

## 项目环境

### 前端

| 模块   | 技术      | 版本    |
| ------ | --------- | ------- |
| 用户端 | Vue       | 2       |
|        | ElementUI | 2.15.x  |
|        | Vuex      | 3.x     |
|        | Echarts   | 6       |
|        | NodeJS    | 22.13.1 |
| 管理端 | Vue       | 2       |
|        | ElementUI | 2.15.x  |
|        | Vuex      | 3.x     |
|        | Echarts   | 6       |
|        | NodeJS    | 22.13.1 |

### 后端

| 技术        | 版本   |
| ----------- | ------ |
| JDK         | 11     |
| SpringBoot  | 2.x    |
| SpringMVC   | 2.x    |
| MyBatisPlus | 3.x    |
| MySQL       | 8.0.33 |

------

## 项目结构

```
MiniBlog/
 ├─ docs/           # 项目文档（接口说明、设计图、数据库设计等）
 ├─ sql/            # SQL 脚本（建表语句、初始化数据）
 ├─ docker/         # Docker 相关文件
 ├─ frontend/       # 前端项目
 │  ├─ miniblog-portal/   # 用户端
 │  └─ miniblog-admin/    # 管理端
 ├─ backend/        # 后端项目（Spring Boot 服务）
 ├─ .gitignore
 ├─ LICENSE
 └─ README.md
```