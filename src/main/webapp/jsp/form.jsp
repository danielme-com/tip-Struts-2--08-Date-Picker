<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
	<head>
		<%@include file="/jsp/head.jsp" %>
		
			<sj:head locale="%{locale.language}" loadAtOnce="true"/>
		
			<STYLE type="text/css">         
	            .div-error
	            {
	                background-color: #ea9184;
	                border: 2px solid #ea523b;
	                font-weight: bold;
	                padding: 6px 6px 6px 6px;
	                text-align: left;
	                font-size: 1em;
	                width: 99%;
	                margin-top: 10px; 
	                display:none;     
	            }
	             
	            .div-error li
	            {
	                list-style-type: none;
	            }
	         </STYLE>	         
	         
				<s:if test="hasActionErrors()">
					<script type="text/javascript">
						$(document).ready(function() {
									$(".div-error").slideDown(500);
								});
					</script>
				</s:if>			
	         
	</head>       
	
	<body>
	
	 <s:if test="hasActionErrors()">
	 
            <div class="div-error">
                <s:actionerror />
            </div>
        </s:if>

	<form action="submitDateAction" method="post">
		<div style="float:left">	
			<s:text name="date"/>: 
			<sj:datepicker 
			            name="dateString"
	                    displayFormat="%{getText('pattern')}" 
	                    cssStyle="width: 150px"
	                    maxlength="10"
	                    yearRange="2013:2020" 
	                    changeYear="true" 
	                    changeMonth="true"
	                    readonly="false" 
	                    title="%{getText('date')}"
	                    showAnim="slideDown" 
	                    duration="fast"/>
	      </div> 
	      
	      <div style="clear:both"/>
	          
	      <div style="float:left">
	        <s:submit value="%{getText('submit')}"/>
	      </div>
       
	</form>	
		
		<%@include file="/jsp/footer.jsp" %>
		
	</body>
	
</html>