import 'package:flutter/material.dart';
import 'package:learnflutter/script/chart/ChartInfoCell.dart';

import 'ChartModel.dart';

List<ChartModel> chart_models = [
     ChartModel("1001", "黄金走势预测", "2020-10-07", "", "黄金", "平台账号", "看空", "       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站       为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它,通过邮件发送3G的超大附件,体验文件中转站"),
     ChartModel("1002", "美国大选对黄金走势的影响", "2020-10-08", "", "黄金", "平台账号", "看空", "黄金今日走势"),
     ChartModel("1003", "白银期货对军工行业，航空行业的影响", "2020-10-09", "", "黄金", "平台账号", "看空", "黄金今日走势"),
     ChartModel("1004", "恒生指数昨日收盘评测", "2020-10-10", "", "黄金", "平台账号", "看空", "黄金今日走势"),
     ChartModel("1005", "道琼斯明日预判", "2020-10-11", "", "黄金", "平台账号", "看空", "黄金今日走势"),
     ChartModel("1006", "A股大盘走势评估", "2020-10-12", "", "黄金", "平台账号", "看空", "黄金今日走势"),
     ChartModel("1007", "原油后续走势和阿塞拜疆战争关联走势", "2020-10-12", "", "黄金", "平台账号", "看空", "黄金今日走势"),
];

class ChartView extends StatefulWidget{
     
   @override
  ChartViewState createState() => ChartViewState();
} 

class ChartViewState extends State<ChartView>{
      @override
      Widget build(BuildContext context) {
            return  ListView.separated(
             itemCount: chart_models.length,
             itemBuilder: (BuildContext context, int index) {
               return ChartInfoCell(chart_models[index]);
             },
             separatorBuilder: (BuildContext context, int index) => const Divider(),
           );
      }
}