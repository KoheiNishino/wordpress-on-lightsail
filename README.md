# Create WordPress on Lightsail with Terraform

## 概要

AWS Lightsail で WordPress のインスタンスを作成する Terraform のテンプレートファイル。  
WordPress の EC2 インスタンスを作成し、固定 IP をアタッチする。  
SSH キーは Lightsail のデフォルトキーを使用。
デフォルトの設定項目は下記。

- Availability Zone: ap-northeast-1a
- blueprint（設計図）: WordPress
- bundle（インスタンスプラン）: $3.5 USD（最安）

## 動作環境

- OS: macOS Catalina 10.15.7
- Terraform: v0.14.0

## 参考

### テンプレートファイルの記述方法

- [Resource: aws_lightsail_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance)

### blueprints/bundles の参照方法

- [Amazon Lightsail の blueprints_bundles を AWS CLI で参照してみた](https://dev.classmethod.jp/articles/lightsail-blueprints-and-bundles/)
