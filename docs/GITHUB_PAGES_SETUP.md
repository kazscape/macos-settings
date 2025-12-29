# GitHub Pages デプロイガイド

このドキュメントでは、チートシートダッシュボードをGitHub Pagesで公開する手順を説明します。

## 📋 前提条件

- GitHubリポジトリが既に存在すること
- リポジトリへのプッシュ権限があること

## 🚀 デプロイ手順

### 1. GitHubリポジトリの設定

1. GitHubリポジトリ https://github.com/kazscape/macos-settings にアクセス
2. **Settings** タブをクリック
3. 左サイドバーの **Pages** をクリック
4. **Source** セクションで以下を設定：
   - Source: `GitHub Actions` を選択

### 2. コードをプッシュ

```bash
# 変更をコミット
git add .
git commit -m "Add GitHub Pages deployment for cheatsheets"

# プッシュ
git push origin main
```

### 3. デプロイの確認

1. リポジトリの **Actions** タブを開く
2. "Deploy Cheatsheets to GitHub Pages" ワークフローが実行されていることを確認
3. ワークフローが完了したら（緑のチェックマーク）、以下のURLにアクセス：

   **https://kazscape.github.io/macos-settings/**

## 🔄 自動デプロイ

以下の場合に自動的にデプロイされます：

- `docs/cheatsheets/` 配下のファイルが変更されたとき
- ワークフローファイル自体が変更されたとき
- **Actions** タブから手動で実行したとき

## 🔧 トラブルシューティング

### ワークフローが失敗する場合

1. **Permissions の確認**
   - Settings > Actions > General
   - "Workflow permissions" で "Read and write permissions" が有効か確認

2. **GitHub Pages の有効化**
   - Settings > Pages
   - Source が "GitHub Actions" になっているか確認

### 404 エラーが出る場合

- デプロイ完了後、反映まで数分かかることがあります
- ブラウザのキャッシュをクリアしてみてください

### カスタムドメインを使用する場合

Settings > Pages > Custom domain で設定できます。

## 📱 ブックマーク登録

デプロイ完了後、以下のURLをブックマークに追加：

```
https://kazscape.github.io/macos-settings/
```

## 🔒 プライベートリポジトリの場合

- GitHub Pagesは無料プランでもプライベートリポジトリで利用可能です
- ただし、サイト自体は公開されます（URLを知っている人は誰でもアクセス可能）
- 認証が必要な場合は、別のホスティングサービスを検討してください

## 📊 アクセス統計

GitHub Insights > Traffic でアクセス統計を確認できます。

## 🔄 更新方法

チートシートを更新する場合：

1. Markdownファイルまたは `index.html` を編集
2. コミット＆プッシュ
3. 自動的にデプロイされます

## 🌐 複数デバイスからのアクセス

デプロイ後は、以下のデバイスからアクセス可能：

- ✅ 職場のPC
- ✅ 自宅のPC  
- ✅ スマートフォン
- ✅ タブレット
- ✅ 他の人とのURL共有も可能

インターネット接続があれば、どこからでもチートシートにアクセスできます！
