除了[手动设置](队伍信息.md)之外，本软件还提供了从Json一键导入队伍信息的功能。

使用方法为点击队伍信息页面中的【从Json文件导入】来选择一个Json文件。



```json
{
  "Name": "队伍名称",
  "ImageUri": "<队徽URI或文件路径>",
  "SurMemberList": [
    {
      "Name": "选手名称1",
      "Camp": "Sur",
      "ImageUri": "<定妆照URl或文件路径>"
    },
    {
      "Name": "选手名称2",
      "Camp": "Sur",
      "ImageUri": null
    },
    {
      "Name": "选手名称3",
      "Camp": "Sur",
      "ImageUri": null
    },
    {
      "Name": "选手名称4",
      "Camp": "Sur",
      "ImageUri": null
    }
  ],
  "HunMemberList": [
    {
      "Name": "选手名称5",
      "Camp": "Hun",
      "ImageUri": null
    }
  ]
}
```

SurMemberList下存储队伍求生者选手名单；HunMemberList下存储队伍监管者选手名单。

选手名称下的Camp表示选手阵营（Sur表示求生者，Hun表示监管者）


队伍名称下的 ImageUri 表示队徽URl或文件路径（例：D:\\\ExamplePhoto\\\1.png)，如果没有队徽或定妆照则在该项填入null



