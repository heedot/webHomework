<%--
  Created by IntelliJ IDEA.
  User: bwm
  Date: 2023/2/26
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物界面</title>
</head>
<body>
<head>
    <meta charset="utf-8">
    <title>Demo</title>
    <style type="text/css">
        #table table,
        #table table th {
            /* 设置让表格行内容居中显示 */
            text-align: center;
        }

        #table table p {
            /* 设置p元素的宽度为200px */
            width: 200px;
            /* 不换行 */
            white-space: nowrap;
            /* 设置文本超出部分隐藏 */
            overflow: hidden;
            /* 设置文本超出部分用...替代 */
            text-overflow: ellipsis;
        }

        #table table .t1 {
            /* 设置class为t1的td元素内容居左显示 */
            text-align: left;
        }

        #table table .t1 p {
            /* 使p元素变成行内块级元素 */
            display: inline-block;
            /* 将外边距设置为0 */
            margin: 0;
            line-height: 15px;
        }
    </style>
</head>
<body>
<div id="table">
    <table border="1" cellspacing="0" cellpadding="0">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>备注</th>
        </tr>
        <tr>
            <td>1</td>
            <td>玄易子</td>
            <td class="t1">
                <p>已有的事，后必再有；已行的事，后必再行。</p><button>详情</button>
            </td>
        </tr>
        <tr>
            <td>2</td>
            <td>夜凌云</td>
            <td class="t1">
                <p>在强者的眼里，没有弱者的席位。</p><button>详情</button>
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>天羽</td>
            <td class="t1">
                <p>天堂和地狱没有我选择的权力，只有我被选择的命运。</p><button>详情</button>
            </td>
        </tr>
    </table>
</div>
</body>
</body>
</html>
