$ ->
  $("#statistics").highcharts
    chart:
      zoomType: "xy"

    title:
      text: "BNMMQ网络监控服务报警统计"

    subtitle:
      text: "来源: Byronlee"

    xAxis: [categories: [
      "一月"
      "二月"
      "三月"
      "四月"
      "五月"
      "六月"
      "七月"
      "八月"
      "九月"
      "十月"
      "十一月"
      "十二月"
    ]]
    yAxis: [ # Primary yAxis
      {
        labels:
          formatter: ->
            @value + "次"

          style:
            color: "#89A54E"

        title:
          text: "平均总次数"
          style:
            color: "#89A54E"

        opposite: true
      }
      {
        # Secondary yAxis
        gridLineWidth: 0
        title:
          text: "所监控服务"
          style:
            color: "#4572A7"

        labels:
          formatter: ->
            @value + ""

          style:
            color: "#4572A7"
      }
      {
        # Tertiary yAxis
        gridLineWidth: 0
        title:
          text: "单个服务报警次数"
          style:
            color: "#AA4643"

        labels:
          formatter: ->
            @value + "次"

          style:
            color: "#AA4643"

        opposite: true
      }
    ]
    tooltip:
      shared: true

    legend:
      layout: "vertical"
      align: "left"
      x: 120
      verticalAlign: "top"
      y: 80
      floating: true
      backgroundColor: "#FFFFFF"

    series: [
      {
        name: "所监控服务"
        color: "#4572A7"
        type: "column"
        yAxis: 1
        data: [
          49
          71
          106
          129
          144
          176
          135
          148
          216
          194
          95
          54
        ]
        tooltip:
          valueSuffix: " 次"
      }
      {
        name: "短信报警次数"
        type: "spline"
        color: "#AA4643"
        yAxis: 2
        data: [
          1
          1
          2
          1
          1
          1
          5
          6
          3
          8
          3
          3
        ]
        marker:
          enabled: false

        dashStyle: "shortdot"
        tooltip:
          valueSuffix: " 次"
      }
      {
        name: "邮件报警次数"
        type: "spline"
        color: "#AA4643"
        yAxis: 2
        data: [
          1
          2
          1
          1
          0
          1
          0
          0
          2
          4
          3
          3
        ]
        marker:
          enabled: false

        dashStyle: "shortdot"
        tooltip:
          valueSuffix: " 次"
      }
      {
        name: "铃声报警次数"
        type: "spline"
        color: "#AA4643"
        yAxis: 2
        data: [
          2
          2
          3
          1
          2
          1
          4
          5
          2
          4
          6
          5
        ]
        marker:
          enabled: false

        dashStyle: "shortdot"
        tooltip:
          valueSuffix: " 次"
      }
      {
        name: "平均总次数"
        color: "#89A54E"
        type: "spline"
        data: [
          7
          6
          9
          14
          18
          21
          25
          26
          23
          18
          13
          9
        ]
        tooltip:
          valueSuffix: " 次"
      }
    ]

  return
