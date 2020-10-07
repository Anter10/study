class ChartModel{
      // 市场内容的ID
      String id;
      // 市场的标题
      String title;
      // 市场信息发布的时间
      String dateTime;
      // 市场内容简介的图片地址
      String imgUrl;
      // 市场所属的类别
      String className;
      // 市场内容作者名称
      String authorName;
      // 市场看涨看跌
      String askOrSell;
      // 市场内容信息
      String msg;
      // 构造函数
      ChartModel(this.id, this.title,this.dateTime, this.imgUrl, this.className, this.authorName,this.askOrSell, this.msg);
}