# Dawei Guan's academic homepage

基于 [Yiming Huang 的参考站源码](https://github.com/yh2371/yh2371.github.io) 制作的 Jekyll 个人主页。保留白底、蓝色链接、右侧头像和图文论文列表，内容来自现有的 `Gdw040199/gdw040199.github.io`。

## 修改内容

| 内容 | 文件 |
| --- | --- |
| 姓名、邮箱、学术主页链接、头像、网站地址 | `_config.yml` |
| 个人介绍 | `_includes/about.html` |
| 论文及论文链接 | `_data/publications.yml` |
| 新闻 | `_data/news.yml` |
| 教育经历 | `_data/education.yml` |
| 致谢、页面结构 | `_layouts/default.html` |
| 字体、颜色、间距、手机端排版 | `style.scss` |
| 头像和论文配图 | `images/` |

论文按 `_data/publications.yml` 中的顺序显示。新增论文时复制一条记录，更新标题、作者、会议或期刊、图片和链接即可。作者字段用 `<strong>Dawei Guan</strong>` 加粗自己的名字。

## 本地预览

当前工作目录已安装项目依赖，可直接运行：

```sh
./scripts/preview.sh
```

需要 Ruby 和 Bundler。安装依赖后启动：

```sh
bundle install
bundle exec jekyll serve --host 127.0.0.1
```

浏览器打开 `http://127.0.0.1:4000`。修改内容会自动重新生成；修改 `_config.yml` 后需要重启服务。

## GitHub Pages

本项目保留 Jekyll，可继续使用 `https://gdw040199.github.io/`。

将本项目文件作为 `Gdw040199/gdw040199.github.io` 的新根目录内容，替换旧版 Jekyll 模板文件，避免旧版 `_pages` 和 `_layouts` 混入。GitHub 仓库的 **Settings → Pages** 使用 **Deploy from a branch**，选择对应分支的根目录 `/ (root)`。

不要上传本地的 `vendor/`、`_site/` 或 `dist/`；它们已加入 `.gitignore`。本地制作和预览不会修改线上仓库。

生成静态文件：

```sh
bundle exec jekyll build --destination dist
```

模板来源、版本和许可见 `TEMPLATE.md` 与 `LICENSE`。
