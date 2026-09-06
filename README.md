<h1 align="center">Dotfiles</h1>

<p align="center">
  个人 Linux 配置文件集合，通过符号链接统一管理。
</p>

---

## 包含配置

| 配置文件             | 说明                                                                     |
| -------------------- | ------------------------------------------------------------------------ |
| `.bashrc`            | Bash Shell 配置（别名、环境变量、Go/CMake 等）                           |
| `.vimrc`             | Vim 编辑器配置（外观、语法高亮、快捷键）                                 |
| `.gitconfig`         | Git 全局配置（用户信息、SSH 签名、凭证管理）                             |
| `.config/kitty/`     | [Kitty](https://sw.kovidgoyal.net/kitty/) 终端模拟器配置与主题           |
| `.config/fastfetch/` | [Fastfetch](https://github.com/fastfetch-cli/fastfetch) 系统信息工具配置 |
| `.config/pip/`       | pip 包管理器配置                                                         |
| `.config/my-bash/`   | 自定义 Bash 扩展配置（预留）                                             |

## 快速开始

```shell
git clone https://github.com/keunlas/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh
```

> [!CAUTION]
> `install.sh` 使用 `ln -sf` 创建符号链接，**会覆盖已有的同名配置文件**。建议在运行前备份原有配置

## 工作原理

`install.sh` 将 `home/` 目录下的文件通过符号链接映射到 `$HOME`：

```
~/dotfiles/home/.bashrc      →  ~/.bashrc
~/dotfiles/home/.vimrc       →  ~/.vimrc
~/dotfiles/home/.gitconfig   →  ~/.gitconfig

~/dotfiles/home/.config/kitty/     →  ~/.config/kitty/
~/dotfiles/home/.config/fastfetch/ →  ~/.config/fastfetch/
~/dotfiles/home/.config/pip/       →  ~/.config/pip/
~/dotfiles/home/.config/my-bash/   →  ~/.config/my-bash/
```

修改仓库中的文件即刻生效，无需重新运行安装脚本。

## 壁纸

`wallpaper/` 目录收录了一些来自互联网的壁纸。

## 许可证

[MIT License](LICENSE) © Keunlas
