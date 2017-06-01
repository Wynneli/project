
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/dynamic.css">
<script type="text/javascript"
	src="../../JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/mzui.min.js"></script>
</head>
<body>
	<jsp:include page="../public/head.jsp"></jsp:include>

	<div class="row height1">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<span style="padding-top: 100px;" class="span1">2017年四六级</span> <span
				class="span2">考前注意事项</span>
		</div>
		<div class="col-md-3"></div>
	</div>
	<br />
	<br />
	<div class="container ">
		<div class="row">
			<span class="span3"><i class="icon icon-book icon-2x"
				style="color: orange;"></i> 导语:</span> <br>
			<p class="p_setting">&nbsp;&nbsp;&nbsp;&nbsp;2017年上半年英语四六级考试时间为6月22日，本专题小编精心为同学们整理了考前注意事项，同时，
				在6月18日考后本站也将及时发布本次考试真题答案解析，敬请关注！【2017年6月英语四级真题及答案】【2017年6月英语六级真题及答案】</p>
		</div>
		<div class="row setting3">
			<p>2017年上半年考试时间流程安排</p>
		</div>
		<div class="row setting4">
			<div class="col-md-6 setting5">
				<h2>英语四级—6月22日上午</h2>
				<ul>
					<li>考试时长：125分钟，9：00—11：20</li>
					<li>8：40——9：00 试音时间</li>
					<li>9：00——9：10 阅读考场注意事项，发放考卷，贴条形码</li>
					<li>9：10——9：40 作文考试阶段</li>
					<li>9：40——10：05 听力测试</li>
					<li>10：05——10：10 考试暂停5分钟，收答题卡1(即作文和听力) 听力结束后完成剩余考项（阅读和翻译）</li>
					<li>11：20全部考试结束。</li>
					<li>特别注意：自本次考试起听力部分答题时间调整为25分钟</li>
				</ul>
				<br>
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<button class="btn btn-block btn-info" type="button">查看详情</button>
					</div>
					<div class="col-md-3"></div>
				</div>
			</div>
			<div class="col-md-6 setting6">
				<h2>英语六级—6月22日下午</h2>
				<ul>
					<li>考试时长：130分钟，15：00—17：25</li>
					<li>14：40——15：00 试音时间</li>
					<li>15：00——15：10 阅读考场注意事项，发放考卷，贴条形码</li>
					<li>15：10——15：40 作文考试阶段</li>
					<li>15：40——16：10 听力测试</li>
					<li>16：10——16：15 考试暂停5分钟，收答题卡1(即作文和听力) 听力结束后完成剩余考项 （阅读和翻译）</li>
					<li>11：20全部考试结束。</li>
					<li>17：25全部考试结束。</li>
				</ul>
				<br>
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<button class="btn btn-block btn-info" type="button">查看详情</button>
					</div>
					<div class="col-md-3"></div>
				</div>
			</div>
		</div>
		<div class="row ">
			<p class="p_setting1">赴考注意事项</p>
		</div>



		<div class="row set">
			<div class="col-md-3 set1">
				<div class="set3">
					<br> <span class="span2">准考证</span><br>
					<div class="set4">考前两周左右记得打印或领取准考证！</div>

				</div>
			</div>
			<div class="col-md-9 set2">
				<div class="A">A</div>
				<div class="A_text">
					<h2>
						<a href="#">准考证领取及打印时间</a>
					</h2>
					<p class="p_setting">
						1、准考证由一般是由各个学校教务处统一制作之后发至各院(考前两周左右发)。<br>
						2、个别学校是需要自己在网上打印的，2016年11月20日之后，所有报名成功的考生可在校园网范围内，通过教务处主页下方“考务专栏”中的“CET准考证打印”模块，用A4纸自行打印出带有相片的准考证。<br>
						3、领到准考证的请务必保存好，八月中下旬英语四级成绩查询时准考证号是必备之一！怕忘记的同学们，可到此贴回复留言你的准考证号，方便到时查询找回，届时233网校也可帮忙查分！
					</p>
					<a href="#">[云南、天津、重庆、云南地区四六级准考证打印入口]</a>
				</div>
			</div>
		</div>



		<div class="row set5">
			<div class="col-md-9 set2">
				<div class="A">A</div>
				<div class="A_text">
					<h2>
						<a href="#">四六级考试必备物品、考试证件</a>
					</h2>
					<p class="p_setting">
						准考证、身份证(学生证)、2B铅笔(2支以上，笔要削得平一些)、橡皮、黑色水笔(两支以上)；
						能听广播的收音机(检查电力是否充足，最好再多备两节电池，带MP3功能的不要带)、手表(手机
						不允许带入考场)、小刀(开试题册)、直尺(备用)、纸巾(必不可少)。</p>
				</div>
			</div>
			<div class="col-md-3 set1">
				<div class="set3">
					<br> <span class="span3">考试用品、证件</span><br>
					<div class="set4">查看清单后，这些考试用品你准备好了吗？</div>

				</div>
			</div>
		</div>


		<div class="row set6">
			<div class="col-md-3 set1">
				<div class="set3">
					<br> <span class="span4">考前注意事项</span><br>
					<div class="set4">在考前有哪些需要注意的呢？ 什么时候进考场？如果学生证遗失怎么办？需要带身份证吗?</div>

				</div>
			</div>
			<div class="col-md-9 set2">
				<div class="A">A</div>
				<div class="A_text">
					<h2>
						<a href="#">必看考前须知及考场规则</a>
					</h2>
					<p class="p_setting">
						1、四级考生，须在6月18日上午8：45持准考证、学生证、身份证(缺一不可)，准时进入指定考场。凡入场开始十五分钟后才到的考生，即9:00整，一律不得进入考场。
						<br>
						2、六级考生，须在6月18日下午14：45持准考证、学生证、身份证和四级(425分及以上)成绩报告单(缺一不可)准时进入指定考场。凡入场开始十五分钟后才到的考生，即15：00点整，一律不得进入考场。
						。<br>
						3、如学生证丢失，由所在院系开具加盖院系公章的证明函；身份证遗失的，应按《考生守则》上的要求，由公安户籍部门开具贴有近期免冠照片的身份证号码证明信。
						<br>
						4、如四级成绩报告单丢失，在本校考过四级的同学，可先去学校教务处咨询。如不在本校考的四级，需登陆全国大学英语四、六级考试委员会网站：
						www.cet.edu.cn在主页右侧“证书/成绩单修改”栏查询补办成绩证明的流程以及联系方式。 <br>
						5、如身份证丢失，考生必须出具临时身份证或户籍部门开具的带有本人相片的相关法律证明，并在相片上加盖公章（复印件无效）。
					</p>
				</div>
			</div>
		</div>


		<div class="row set7">
			<div class="col-md-9 set2">
				<div class="A">A</div>
				<div class="A_text">
					<h2>
						<a href="#">考中注意事项</a>
					</h2>
					<p class="p_setting">
						1、听力考试部分需要及时完成答题卡，因为听力结束后考官会及时将听力试卷及答题卡收上。交答题卡及试卷前请仔细核对准考证号、姓名等信息。
						<br>
						2、考试中考生要自觉遵守考场纪律，对于考试违纪作弊者，一经发现，取消本次考试资格，按教育部考试中心及学校规定从严处理。 <br>
						3、考生在考试全过程中，不得中途退场，不得将试卷、答题卡带离考场，违者将按违规处理。全体考生必须服从监考人员及考务工作人员的监督、管理。
					</p>
				</div>
			</div>
			<div class="col-md-3 set1">
				<div class="set3">
					<br> <span class="span3">考中注意事项</span><br>
					<div class="set4">听力部分结束后即收答题卡1；
						考试中途严禁离开考场；对考试违纪作弊者,取消资格,学校从严处理。</div>

				</div>
			</div>
		</div>

		<div class="row set8">
			<div class="col-md-3 set1">
				<div class="set3">
					<br> <span class="span4">答题卡</span><br>
					<div class="set4">全国大学英语四、六级考试实行“多题多卷”模式,即在同一考场内采用内容不同的试题组成的多套试卷实施考试。</div>

				</div>
			</div>
			<div class="col-md-9 set2">
				<div class="row">
					<div class="A">A</div>
					<div class="A_text">
						<h2>
							<a href="#">答题卡填写注意事项及答题流程</a>
						</h2>
						<p class="p_setting">
							1、答题流程：请考生在正式开始作答前，按要求正确填写（涂）答题卡1和答题卡2上的准考证号、姓名等信息后，还应将试题册背面的条形码粘贴条揭下后粘贴至答题卡1左上角的条形码粘贴框内，并正确填写试题册背面的准考证号和姓名。不正确填写(涂)个人信息，错贴、漏贴条形码将按违规处理。
							<br>
							2、考试正式开始后考生方可开始作答，所有题目必须在答题卡上作答，且应在规定时间内依次完成作文、听力、阅读、翻译部分试题，作文题内容印在试题册背面，作答作文期间考生不得翻阅该试题册。听力录音播放完毕后，考生应停止作答，监考员将回收答题卡1，考生得到监考员指令后方可继续作答。选择题均为单选题，错选、不选或多选将不得分。
							<br>
							3、考生必须严格按要求答题。书写部分一律用黑色字迹签字笔答题，填涂信息点时只能用2B铅笔涂黑。考生应在规定做答的位置书写或填涂信息点，不按规定要求填涂和做答的，一律无效。
						</p>
					</div>
				</div>
			</div>
		</div>


		<div class="row set9">
			<div class="col-md-9 set2">
				<dl>
					<dd class="dd">
						<div class="A">A</div>
						<div class="A_text">
							<h2>
								<a href="#">英语四级考试题型</a>
							</h2>
							<p class="p_setting">
								分为作文、听力、阅读、翻译四个题型，总分710分。自2016年6月考试起，
								英语四级听力试题进行调整，①取消短对话；②取消短文听写；<font color="#ff0000">③新增短篇新闻（3段）</font>；
								④其余测试内容不变。最新听力样题请 <a href="#">查看详情>></a>
							</p>
						</div>
					</dd>
					<dd class="dd">
						<div class="A">B</div>
						<div class="A_text">
							<h2>
								<a href="#">英语六级考试题型</a>
							</h2>
							<p class="p_setting">
								分为作文、听力、阅读、翻译四个题型，总分710分。自2016年6月考试起， 英语六级听力试题进行调整：①取消短对话
								②取消短文听写；<font color="#ff0000"> ③听力篇章调整为2篇（原3篇）</font>④新增讲座/讲话（3篇）；④其余测试内容不变。最新听力样题请
							</p>
							<a href="#">查看详情>></a>
						</div>
					</dd>
				</dl>
			</div>
			<div class="col-md-3 set1">
				<div class="set3">
					<br> <span class="span3">考试题型、分数</span><br>
					<div class="set4">作为考生，你了解英语四六级分数的分配比例吗？了解四六级试
						卷题型的分数比例可以帮助我们在最后的冲刺阶段分清主次把握重点，本文整理了大学英语四 六级分数分配及比例内容，供各位考生参考！</div>

				</div>
			</div>
		</div>
	</div>
	<br/>
	<jsp:include page="../public/tail.jsp"></jsp:include>
</body>
</html>