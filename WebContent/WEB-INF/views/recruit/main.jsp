<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/recruit/main_script.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
th {
  text-align: center; /* 헤더 텍스트를 가운데 정렬 */
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입사지원서 작성 페이지</title>
</head>
<script>

</script>
<body >
	<h2 align="center">입사 지원서</h2>
	<table align="center">
		<tbody>
			<tr>
				<td >
					<table id ="formTable" border="1" width="900">
						<tr>
							<td style="border:none;" align="center">
							<form id="recruitForm">
								<table border="1" >
									<tr>
										<td align="center" width="90"><b>이름</b>
										</td>
										<td id="recruitName">
<%-- 											${r.name} --%>
											<input name="name" mexlength="5" type="text" readonly value="${r.name }"/>
										</td>
										<td align="center" width="90"><b>생년월일</b>
										</td>
										<td>
											<input name="birth" class="inputDate" maxlength="10" type="text"  value="${r.birth}">
										</td>
									</tr>
									<tr>
										<td align="center"><b>성별</b>
										</td>
										<td>
											<select name="gender">
												<option <c:if test ="${'남자' eq r.gender}">selected</c:if> value="남자">남자
												</option>
												<option <c:if test ="${'여자' eq r.gender}">selected</c:if> value="여자">여자
												</option>
											</select>
										</td>
										<td align="center"><b>연락처</b>
										</td>
										<td id="recruitPhone">
										<input name="phone" mexlength="11" type="text" readonly value="${r.phone }"/>
										<%-- ${r.phone} --%>
										</td>
									</tr>
									<tr>
										<td align="center"><b>email</b>
										</td>
										<td>
											<input name="email" type="text"  value="${r.email}">
										</td>
										<td align="center"><b>주소</b>
										</td>
										<td>
											<input name="addr" type="text"  value="${r.addr}">
										</td>
									</tr>
									<tr>
										<td align="center"><b>희망근무지</b>
										</td>
										<td>
											<select name="location">
												<option <c:if test ="${'서울' eq r.location}">selected</c:if> value="서울">서울
												</option>
												<option <c:if test ="${'경기' eq r.location}">selected</c:if> value="경기">경기
												</option>
												<option <c:if test ="${'충청' eq r.location}">selected</c:if> value="충청">충청
												</option>
												<option <c:if test ="${'강원' eq r.location}">selected</c:if> value="강원">강원
												</option>
												<option <c:if test ="${'전라' eq r.location}">selected</c:if> value="전라">전라
												</option>
												<option <c:if test ="${'경상' eq r.location}">selected</c:if> value="경상">경상
												</option>
												<option <c:if test ="${'제주' eq r.location}">selected</c:if> value="제주">제주
												</option>
											</select>
										</td>
										<td align="center"><b>근무형태</b></td>
										<td>
											<select name="workType">
												<option <c:if test ="${'계약직' eq r.workType}">selected</c:if> value="계약직">
													계약직
												</option>
												<option <c:if test ="${'정규직' eq r.workType}">selected</c:if> value="정규직">
													정규직
												</option>
											</select>
										</td>
									</tr>
								</table>
							</form>
							</td>
						</tr>
						<c:if test="${summary ne null}">
						<tr>
							<td align="center" style="border:none;">
								<table border="1" width="750">
									<thead>
										<tr>
											<th>
												학력사항
											</th>
											<th>
												경력사항
											</th>
											<th>
												희망연봉
											</th>
											<th>
												희망근무지/근무형태
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td align="center">
												${summary.highestDegree}
											</td>
											<td align="center">
												${summary.careerHistory}
											</td>
											<td align="center">
												${summary.preferredSalary}
											</td>
											<td align="center">
												${summary.preferredLocation}<br>
												${summary.preferredWorkType}
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
						</c:if>
						<tr id="educationRow">
							<td style="border:none;">
								<table width="100%">
									<tr>
										<td style="border:none;">
											<h3>학력</h3>
										</td>
									</tr>
									<tr>
										<td align="right" style="border:none;">
											<input class="addRow" id="btn-add-edu" type="button" value="추가">
											<input class="removeRow" type="button" value="삭제">
										</td>
									</tr>
									
									<tr >
										<td align="center" >
										<form id="eduForm">
											<table border="1"  width="780">
												<thead>
													<tr>
														<th>
														</th>
														<th>
															재학기간
														</th>
														<th>
															구분
														</th>
														<th>
															학교명(소재지)
														</th>
														<th>
															전공
														</th>
														<th>
															학점
														</th>
													</tr>
												</thead>
												<tbody>
												<c:forEach var="edu" items="${eduList}" >
													<tr class="inputRow">
													
														<td align="center">
															<input type="checkbox"/>
														</td>
														<td align="center">
															<input name="startPeriod" class="inputDate" maxlength="7" type="text" value="${edu.startPeriod}"/>
															<br/>
															~
															<input name="endPeriod" class="inputDate" maxlength="7"  type="text" value="${edu.endPeriod}"/>
														</td>
														<td align="center">
															<select name="division">
																<option value="재학" <c:if test ="${'재학' eq edu.division}">selected</c:if>>재학</option>
																<option value="중퇴" <c:if test ="${'중퇴' eq edu.division}">selected</c:if>>중퇴</option>
																<option value="졸업" <c:if test ="${'졸업' eq edu.division}">selected</c:if>>졸업</option>
															</select>
														</td>
														<td >
															<input name="schoolName" type="text" value="${edu.schoolName }"/>
															<select name="location">
																<option <c:if test ="${'서울' eq edu.location}">selected</c:if> value="서울">서울
																</option>
																<option <c:if test ="${'경기' eq edu.location}">selected</c:if> value="경기">경기
																</option>
																<option <c:if test ="${'충청' eq edu.location}">selected</c:if> value="충청">충청
																</option>
																<option <c:if test ="${'강원' eq edu.location}">selected</c:if> value="강원">강원
																</option>
																<option <c:if test ="${'전라' eq edu.location}">selected</c:if> value="전라">전라
																</option>
																<option <c:if test ="${'경상' eq edu.location}">selected</c:if> value="경상">경상
																</option>
																<option <c:if test ="${'제주' eq edu.location}">selected</c:if> value="제주">제주
																</option>
															</select>
														</td>
														<td align="center">
															<input type="text" maxlength="30" name="major" value="${edu.major}"/>
														</td>
														<td align="center">
															<input type="text" maxlength="4" name="grade" value="${edu.grade }"/>
														</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
											</form>
											
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr id="careerRow">
							<td style="border:none;">
								<table width="100%">
									<tr>
										<td style="border:none;">
											<h3>경력</h3>
										</td>
									</tr>
									<tr>
										<td align="right" style="border:none;">
											<input class="addRow" type="button" value="추가">
											<input class="removeRow"type="button" value="삭제">
										</td>
									</tr>
									<tr>
										<td align="center" >
											<form id="carForm">
											<table  border="1" width="780">
												<thead>
													<tr>
														<th>
														</th>
														<th>
															근무기간
														</th>
														<th>
															회사명
														</th>
														<th>
															부서/직급/직책
														</th>
														<th>
															지역
														</th>
													</tr>
												</thead>
												<tbody>
												<c:forEach var="car" items="${carList}">
													<tr class="inputRow">
														<td >
															<input type="checkbox"/>
														</td>
														<td >
															<input  name="startPeriod" maxlength="7" class="inputDate" type="text" value="${car.startPeriod}"/>
															<br/>
															~
															<br/>
															<input type="text" maxlength="7"  class="inputDate" name="endPeriod" value="${car.endPeriod}" />
														</td>
														<td >
															<input name="compName" maxlength="30" type="text" value="${car.compName }"/>
														</td>
														<td >
															<input name="task" maxlength="30" type="text" value="${car.task }"/>
														</td>
														<td >
															<input name="location" maxlength="30" type="text" value="${car.location }"/>
														</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
											</form>
										</td>
									</tr>
								
								</table>
							</td>
						</tr>
						<tr id="certificateRow">
							<td style="border:none;">
								<table width="100%" >
									<tr>
										<td style="border:none;">
											<h3>자격증</h3>
										</td>
									</tr>
									<tr>
										<td align="right" style="border:none;">
											<input class="addRow" type="button" value="추가">
											<input class="removeRow"type="button" value="삭제">
										</td>
									</tr>
									<tr>
										<td align="center">
										<form id="certForm">
											<table  width="780" border="1">
												<thead>
													<tr>
														<th>
														</th>
														<th>
															자격증명
														</th>
														<th>
															취득일
														</th>
														<th>
															발행지
														</th>
													</tr>
												</thead>
												<tbody>
												<c:forEach var="cert" items="${certList}">
													<tr class="inputRow">
														<td >
															<input type="checkbox"/>
														</td>
														<td >
															<input name="qualifiName" maxlength="30" type="text" value="${cert.qualifiName }"/>
														</td>
														<td >
															<input name="acquDate" class="inputDate" maxlength="7"  type="text" value="${cert.acquDate}"/>
														</td>
														<td >
															<input name="organizeName" maxlength="30" type="text" value="${cert.organizeName}"/>
														</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</form>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td id="saveSubmitBtnTd" align="center" data-submit="${r.submit}">
					<input class="saveSubmitBtn" id="saveBtn" type="button" value="저장"/>
					<input class="saveSubmitBtn" id="submitBtn" type="button" value="제출"/>
					<input id="logoutBtn" type="button" value="로그아웃"/>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>