
 ![Logo](https://github.com/roycms/TopAlert/blob/master/TopAlert/logo.png)
 TopAlert
===
TopAlert is a tip at the top of the pop-up IOS UI controls, can be easily integrated into your project.

[![Shippable](https://img.shields.io/shippable/5444c5ecb904a4b21567b0ff.svg?maxAge=2592000?style=flat-square)](https://github.com/roycms/RAlertView)
[![CocoaPods](https://img.shields.io/badge/pod-0.0.1-red.svg)](http://cocoapods.org/?q=RAlertView)
[![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg?maxAge=2592000?style=flat-square)](https://github.com/roycms/RAlertView/blob/master/LICENSE)
[![email](https://img.shields.io/badge/%20email%20-%20roycms%40qq.com%20-yellowgreen.svg)](mailto:roycms@qq.com)

## Installation
- Import the main header file：`#import "TopAlert.h"`

## cocoapods 
`  pod 'TopAlert' `

## Use 
return type UIColor
```objective-c
TopAlert *alert =[[TopAlert alloc]initWithStyle:RGB(@"#8e44ad")];
alert.headerTitle =@"Title";
alert.contentText =@"contentText";
```

## 期待
* 如果在使用过程中遇到BUG，希望你能Issues我，谢谢（或者尝试下载最新的框架代码看看BUG修复没有）
* 如果在使用过程中发现功能不够用，希望你能Issues我，我非常想为这个框架增加更多好用的功能，谢谢
* 如果你想输出代码，请拼命Pull Requests我
