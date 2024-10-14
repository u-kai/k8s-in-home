# k8s-in-home

This is my hobby

## 目標

- paas として機能するものを作る
- 利用者は独自アプリケーションのマニフェストを提出するだけで、デプロイできる

## 設計

### 考え方

- できるだけ helm チャートと argoCD を使って自動かつ簡単にデプロイできるようにする

### 必要なもの

- モニタリング
  - grafana
- ネットワーク
  - cilium
- メトリクス収集
  - prometheus
- ログ収集
  - fluentbit
  - loki
- トレース収集
  - istio
  - 可視化
    - jaeger
    - kiali
- アラート通知
  - prometheus alertmanager
- 脅威検知
  - falco
- 認証認可
  - istio
- パフォーマンス計測
  - ???
- バックアップ
  - ???
- 運用自動化
  - バージョンアップ
    - ???
  - パッチ適用
    - ???
  - CI/CD
    - tekton
    - argocd
      - helm repo add argo https://argoproj.github.io/argo-helm
  - DNS 設定
    - ???
  - シークレット管理
    - external-secrets??
