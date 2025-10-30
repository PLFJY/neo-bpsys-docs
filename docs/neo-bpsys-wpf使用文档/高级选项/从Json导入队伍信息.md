# 从Json文件导入信息

除了[手动设置](../后台/队伍信息.md)之外，本软件还提供了从Json一键导入队伍信息的功能。

使用方法为点击队伍信息页面中的【从Json文件导入】来选择一个Json文件。


以下是队伍信息Json文件的空模板
```json
{
  "Name": "",
  "ImageUri": "",
  "SurMemberList": [
    {
      "Name": "",
      "Camp": "Sur",
      "ImageUri": ""
    },
    {
      "Name": "",
      "Camp": "Sur",
      "ImageUri": null
    },
    {
      "Name": "",
      "Camp": "Sur",
      "ImageUri": null
    },
    {
      "Name": "",
      "Camp": "Sur",
      "ImageUri": null
    }
  ],
  "HunMemberList": [
    {
      "Name": "",
      "Camp": "Hun",
      "ImageUri": null
    }
  ]
}
```

SurMemberList下存储队伍求生者选手名单；HunMemberList下存储队伍监管者选手名单。

选手名称下的Camp表示选手阵营（Sur表示求生者，Hun表示监管者）

队伍名称下的 ImageUri 表示队徽URl或文件路径（例：D:\\\ExamplePhoto\\\1.png)，如果没有队徽或定妆照则在该项填入null

以下分别为成都WOLVES和GR的队伍信息Json示例

成都WOLVES
```Json
{
  "Name": "Wolves",
  "ImageUri": "https://patchwiki.biligame.com/images/dwrg/0/0f/5upqyt4fcxhv4g8tbgzw01c3ijy2xmz.png",
  "SurMemberList": [
    {
      "Name": "Wolves_487",
      "Camp": "Sur",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/6/6d/ery6o97q1e2pgcacstg73tyrmtyibij.png"
    },
    {
      "Name": "Wolves_Jelly",
      "Camp": "Sur",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/0/05/c4sgrg7oxnsygca01g7w44k02fq4knq.png"
    },
    {
      "Name": "Wolves_XMX",
      "Camp": "Sur",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/b/b3/9ih5l1tr1pj3vr1q1o67awxxhfn1wnx.png"
    },
    {
      "Name": "Wolves_DKing",
      "Camp": "Sur",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/8/86/b88uor92d5z8uiiqqb8n1jfyeddd02l.png"
    }
  ],
  "HunMemberList": [
    {
      "Name": "Wolves_ChoAi",
      "Camp": "Hun",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/c/c2/ahjuo114o8icn6zznr96o8addi91zq3.png"
    },
    {
      "Name": "Wolves_Yeyv",
      "Camp": "Hun",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/2/28/89wlcs5x73vseaqcgq2a0y72e40bpdr.png"
    }
  ]
} 
```

GR
```Json
{
  "Name": "Gr",
  "ImageUri": "https://patchwiki.biligame.com/images/dwrg/b/be/fca4fwk94d87pkj9d4rudposbk3r2y0.png",
  "SurMemberList": [
    {
      "Name": "Gr_heart",
      "Camp": "Sur",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/d/d9/tokh7z1vgovzel9tplgrn4k3waub1co.png"
    },
    {
      "Name": "Gr_AK",
      "Camp": "Sur",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/b/b7/g3xph7i8sg4s72neqcx17ykqlj6g1t5.png"
    },
    {
      "Name": "Gr_ac",
      "Camp": "Sur",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/c/ce/1rtb0oxkmjksay3a5lk4h4y1cl1dpmp.png"
    },
    {
      "Name": "Gr_Xmiao5",
      "Camp": "Sur",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/1/1d/3kmh5ukn49445uudj6zx37ej1bcq5ba.png"
    },
    {
      "Name": "Gr_iron",
      "Camp": "Sur",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/4/45/iic2g4zv1t42wtslzdsq35uy1335p3q.png"
    }
  ],
  "HunMemberList": [
    {
      "Name": "Gr_mlx",
      "Camp": "Hun",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/a/a6/r9kgxgq6lqz7caj77mjrfwel7jr0lwd.png"
    },
    {
      "Name": "Gr_Jin",
      "Camp": "Hun",
      "ImageUri": "https://patchwiki.biligame.com/images/dwrg/0/08/2fp7w10or7jlufkjcoxkeofv33v4abk.png"
    }
  ]
}
```
