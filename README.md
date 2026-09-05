# Dawei Guan's academic homepage

基于 [Yiming Huang 的参考站源码](https://github.com/yh2371/yh2371.github.io) 制作的 Jekyll 个人主页，发布于 [gdw040199.github.io](https://gdw040199.github.io/)。页面依次为个人介绍、Research、News、Education 和 Acknowledgement。

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
| 本地 Lato 字体与许可 | `fonts/lato/` |

论文按 `_data/publications.yml` 中的顺序显示。新增论文时复制一条记录，更新标题、作者、会议或期刊、图片、链接和 `summary` 简介即可。简介建议用一到两句话概括论文的方法与作用，并根据论文原文撰写。作者字段用 `<strong>Dawei Guan</strong>` 标出自己的名字。

英文使用本地托管的 Lato，字号和字重在 `style.scss` 中统一控制。头像在悬停或键盘聚焦时会显示招呼；系统开启“减少动态效果”时，动画会自动关闭。

## 本地预览

本机已安装项目依赖时，可直接运行：

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

GitHub 仓库的 **Settings → Pages** 使用 **Deploy from a branch**，选择 `main` 分支的根目录 `/ (root)`。更新内容并推送到 `main` 后，GitHub Pages 自动重新发布。

不要上传本地的 `vendor/`、`_site/` 或 `dist/`；它们已加入 `.gitignore`。

生成静态文件：

```sh
bundle exec jekyll build --destination dist
```

模板来源、版本和许可见 `TEMPLATE.md` 与 `LICENSE`。
