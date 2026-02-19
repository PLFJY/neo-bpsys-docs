# Commit 提交规范

**推荐直接使用 IDE 内的 AI 自动生成 commit 记录，VS Code、装了通义灵码的 Rider 都有**

**如果要手写，请遵循以下规范：**

类型(作用域):

内容，如果是bug fix，说明解决方案

类型和作用域可以有多个，逗号+空格隔开，可以只写对应功能Page/Window的名称或者对应模块的名称，如：BanHunPage、DesignMode

若出现命名空间、接口上的更改需要在 Commit Message 的第一行添加 `BREAKING CHANGE`

Example: 

refactor(Timer, DesignMode):

计时器获取改为Messenger通知改变，IsDesignMode变化由原来的事件通知改为Messenger通知

| 类型       | 说明                              |
| -------- | ------------------------------- |
| feat     | 新功能                             |
| fix      | 修复bug                           |
| refactor | 重构                              |
| docs     | 改文档，例如README                    |
| style    | 代码风格改变，不影响功能                    |
| temp     | 临时提交，用于合作开发                     |
| chore    | 杂项，例如.gitignore、github workflow |
| build    | 更改构建脚本、构建工具                     |
| revert   | 回滚                              |
| merge    | 合并                              |
| improve  | 提升                              |
| i18n     | 国际化                             |
