<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$j(()=>{
	
	$j('#enrollBtn').click(e=>location.href='enroll.do')
	let isScrolling = false
	$j(window).on('scroll', function() {
		if(!isScrolling){
			let tabIndex = 0;
			const sections = $j('[data-index]')
			for (var i =0; i<sections.length; i++){
				let elementTop = $j(sections[i]).offset().top;
				let scrollTop = $j(window).scrollTop();
				let windowHeight = $j(window).height();
				if(elementTop <= scrollTop + windowHeight/2 ){
					tabIndex= i
				}else{
					break
				}
			}
			$j('.view-nav-tab').removeClass('active').eq(tabIndex).addClass('active')
		}
	});
	$j('.view-curr-btn').click(function(){
		$j(this).find('.view-curr-dropdown:first').toggleClass('active')
				.closest('.view-curr-container').toggleClass('active')
				.find('.view-curr-detail:first').toggleClass('active')
	})
	
	$j('.view-faq-btn').click(function(){
		$j(this).find('.view-faq-drop:first').toggleClass('active')
		$j(this).next().toggleClass('active')
	})
	
	$j('.view-nav-div').on('click','.view-nav-tab',e=>{
		$j(e.target).addClass('active').siblings().removeClass('active')
		const index = $j(e.target).index()
		isScrolling=true
	  	$j('[data-index='+index+']').get(0).scrollIntoView({ behavior: 'smooth', block: 'start' });
		setTimeout(()=> isScrolling = false,1000)
		
	})
})
</script>