## 仓库分支管理流程规范

### 1. 分支结构说明

• main 分支：主分支，存放稳定发布版本，仅通过 PR 合并更新

• dev 分支：开发主分支，存放最新开发代码，基于 main 分支创建

• feature 分支：功能开发分支，基于 dev 分支创建，开发完成后合并至 dev

### 2. 主版本更新流程（dev 合并至 main）

#### 2.1. 提交 PR 合并 dev 到 main

- 在 GitHub 上创建从 dev 到 main 的合并请求（PR）
- 确保 PR 通过代码审查后，点击 Merge pull request 合并
- 合并方式选择 Create a merge commit（默认方式）

#### 2.2. 自动同步 dev 分支

- PR 合并后，GitHub Action 自动触发以下操作：
  git checkout dev && git rebase main
- （注：此步骤由 CI 工具自动完成，无需手动操作）

#### 2.3. 本地更新 dev 分支

- 本地切换到 dev 分支：

```
git checkout dev git pull  # 拉取远程 dev 分支（已自动 rebase 到 main）
```

- 继续在 dev 上进行后续开发

### 3. 小 bug 修复流程（直接在 dev 上修改）

#### 3.1. 更新本地 dev 分支

```
git checkout dev
git pull --rebase  # 拉取远程更新并变基，保持本地分支整洁
```

#### 3.2. 修复 bug 并提交

- 修改代码
- 提交

```
git add . git commit -m "fix: 修复具体 bug 描述"
```

#### 3.3. 推送到远程 dev 分支

```
git push origin dev
```

### 4. 新功能开发流程（基于 feature 分支开发）

#### 4.1. 在 Microsoft Todo 上新增条目并分配给自己

#### 4.2. 拉取最新 dev 分支

```
git checkout dev
git pull --rebase
```

#### 4.3. 创建 feature 分支

```
git checkout -b feature/功能名称
```

#### 4.4. 开发功能并提交

开发过程中可多次提交，提交信息需清晰描述改动：

```
git add .
git commit -m "feat: 功能模块-具体功能描述"
```

#### 4.5. 同步最新 dev 分支

```
git checkout dev
git pull --rebase
git checkout feature/功能名称
git rebase dev  # 将 feature 分支变基到最新 dev，解决冲突
```

#### 4.6. 压缩提交并合并到 dev

压缩 feature 分支的所有提交为一个 commit

```
git checkout dev
git merge --squash feature/功能名称
git commit -m "feat: 完整功能描述"  # 编写统一的提交信息
```

#### 4.7. 推送到远程 dev 分支并清理

```
git push origin dev
git branch -d feature/功能名称  # 删除本地 feature 分支
git push origin --delete feature/功能名称  # 删除远程 feature 分支
```

#### 4.8. 在 Microsoft Todo 上勾选对应完成的 feature

### 5. 注意事项

#### 5.1. 提交规范

- 使用语义化提交格式（如 feat:、fix:、docs: 等前缀）
- 提交信息需清晰描述改动目的，避免模糊表述

#### 5.2. 分支维护

- dev 分支需定期与 main 同步（通过主版本更新流程自动完成）
- 废弃的 feature 分支需及时删除，保持仓库整洁

#### 5.3. 冲突处理

- 变基（rebase）过程中遇到冲突时，需手动解决后执行 git rebase --continue
- 合并（merge）时优先使用变基方式，保持线性提交历史