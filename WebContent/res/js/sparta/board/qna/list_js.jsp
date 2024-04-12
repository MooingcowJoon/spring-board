<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$j(()=>{
	function parseDate(dateStr) {
	    // 날짜 형식에 맞게 문자열 파싱
	    const dateParts = dateStr.split(' ');
	    const y = parseInt(dateParts[0].slice(0, 4));
	    const M = parseInt(dateParts[1].slice(0, -1))
	    const d = parseInt(dateParts[2].slice(0, -1))
	    const timeParts = dateParts[4].split(':');
	    let h = parseInt(timeParts[0]);
	    const m = parseInt(timeParts[1]);
		
	    if (dateParts[4] === '오후') {
	        h += 12;
	    }
	   return new Date(y, M, d, h, m)
	}
	
	const boardListSort = orderBy => {
		
		const list = $j("#boardList").children()
		const sortedElArr = list.sort((a,b)=>{
			
			if(orderBy === 'date'){
				const dateA = parseDate($j(a).find('.css-5zcuov:first').find('.css-1ry6usa:first').text())
				const dateB =  parseDate($j(b).find('.css-5zcuov:first').find('.css-1ry6usa:first').text())
				comp = dateA > dateB ? -1 : 1
				
			}
			if(orderBy === 'vote'){
				comp = parseInt($j(b).find('.css-o01lup:first').children(':eq(2)').children(':last').text()) 
						- parseInt($j(a).find('.css-o01lup:first').children(':eq(2)').children(':last').text())
			}
			return comp
		})
		$j('#boardList').empty().append(sortedElArr)	
	}
	$j('#sortTab').children().click(e=>{
		const el = $j(e.target).closest('[data-sort]')
		if(el.hasClass('css-1kb98ja')){
			return
		}
		el.removeClass().addClass('css-1kb98ja').find('circle').attr('fill','#e8344e')
						.parent().next().removeClass().addClass('css-1619ajl')
		const other = el.next().length>0 ? el.next() : el.prev()
		other.removeClass().addClass('css-bewb21').find('circle').attr('fill','#B4BFC6')
		.parent().next().removeClass().addClass('css-1j5hzn7')
		boardListSort(el.data('sort'))
		}
	)
	$j('#toListBtn').click(e=>location.href="list.do")
	$j('#boardList').on('click','.css-k59gj9',e=>{
		location.href="view.do"
		
	})
	
})
	
	
</script>