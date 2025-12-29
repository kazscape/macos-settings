# ショートカットチートシート

macOS環境で使用しているCLIツールのショートカットチートシート集です。

## 🌐 クイックアクセス

**ローカル:** [📊 HTMLダッシュボード](index.html) - ブラウザで開いてブックマーク登録推奨！

**オンライン:** https://kazscape.github.io/macos-settings/ （GitHub Pages - 公開後利用可能）

- 全ツールのショートカットを1ページで確認
- リアルタイム検索機能
- Tokyo Nightテーマで見やすいUI

## 📚 チートシート一覧

### ターミナル・シェル

- **[WezTerm](wezterm.md)** - GPUアクセラレーテッドターミナルエミュレーター
- **[tmux](tmux.md)** - ターミナルマルチプレクサー

### エディター

- **[Neovim](nvim.md)** - モダンなVimベースのテキストエディター

### ファイルマネージャー

- **[Yazi](yazi.md)** - 高速なターミナルファイルマネージャー

### ウィンドウマネージャー

- **[AeroSpace](aerospace.md)** - macOS用タイリングウィンドウマネージャー

## 🎯 クイックリンク

### よく使うキーバインド

| ツール | キーバインド | 説明 |
|--------|------------|------|
| tmux | `Ctrl a` | プレフィックスキー |
| Neovim | `Space` | リーダーキー |
| AeroSpace | `Alt` | メインモディファイア |
| Yazi | `z` | fzfジャンプ |

## 📖 チートシートの使い方

各チートシートには以下の情報が含まれています：

1. **基本操作** - 最も頻繁に使用するキーバインド
2. **カテゴリ別操作** - 機能ごとに整理されたキーバインド
3. **Tips** - 便利な使い方や設定のヒント

## 🔧 設定ファイルの場所

| ツール | 設定ファイル |
|--------|------------|
| WezTerm | `~/.config/wezterm/wezterm.lua` |
| tmux | `~/.config/tmux/tmux.conf` |
| Neovim | `~/.config/nvim/` |
| Yazi | `~/.config/yazi/` |
| AeroSpace | `~/.config/aerospace/aerospace.toml` |

## 🚀 統合されたワークフロー

これらのツールは互いに統合されており、シームレスに動作します：

1. **WezTerm + tmux**: ターミナルセッション管理
2. **tmux + Neovim**: `vim-tmux-navigator`で統一されたナビゲーション
3. **AeroSpace**: すべてのアプリケーションウィンドウを効率的に管理
4. **Yazi**: ターミナルから高速ファイル操作

## 📝 カスタマイズ

各ツールの設定ファイルは以下で管理されています：

```
roles/
  ├── wezterm/files/wezterm/
  ├── tmux/files/tmux/
  ├── nvim/files/nvim/
  ├── yazi/files/yazi/
  └── aerospace/files/aerospace/
```

設定を変更する場合は、該当するroleの下のファイルを編集し、Ansibleで再デプロイしてください。

## 🎨 共通のテーマ

すべてのツールで統一感のあるカラースキームを使用しています：
- **Tokyo Night**: bat, delta, Neovim, tmux

## 💡 学習のヒント

1. **1つずつマスター**: まず1つのツールから始めて、徐々に他のツールに拡大
2. **頻繁に使うキーバインドを覚える**: 最初は基本的な5-10個のキーバインドから
3. **カスタムキーバインドを追加**: 自分のワークフローに合わせてカスタマイズ
4. **チートシートを印刷**: 最初のうちは印刷して手元に置いておくと便利

## 🔄 更新履歴

- 2025-12-29: 初版作成
  - WezTerm, tmux, Neovim, Yazi, AeroSpaceのチートシートを追加

## 📚 参考リンク

- [WezTerm Documentation](https://wezfurlong.org/wezterm/)
- [tmux Documentation](https://github.com/tmux/tmux/wiki)
- [Neovim Documentation](https://neovim.io/doc/)
- [Yazi Documentation](https://yazi-rs.github.io/)
- [AeroSpace Documentation](https://nikitabobko.github.io/AeroSpace/)
